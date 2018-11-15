package com.javen.controller;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import tools.Linux_shell;
import tools.Upload_DownloadFileTool;

@Controller
public class UploadImageWbController {

	@RequestMapping("uploadFile/wb_test.do")
	public String wb_test() {
		return "wb/vehicle";
	}
	
	@RequestMapping("uploadFile/upload_wb.do")//不要随意注解，保证一致
	public ModelAndView saveImage(HttpServletRequest request,Model model) {
		ModelAndView modelAndView=new ModelAndView();
		
		String savePath = request.getServletContext().getRealPath("wb_upload");//获得文件夹的物理路径
		String dirString=UUID.randomUUID().toString();//创建临时文件夹，把这次请求的图片都放到里面
		File dir=new File(savePath+"\\" + dirString);
		if(!dir.exists()) {
			dir.mkdirs();
		}
		savePath=savePath+"\\"+dirString;
		modelAndView.addObject("image_path", dirString);//传递临时文件夹名字
		String tempPath = request.getServletContext().getRealPath("wb_temp");
		File tempFile = new File(tempPath);
		String filename = null;
		String message = null;
		Map<String, String> result=new HashMap<String, String>();//全局变量，按名存放多组测试结果
		
		try {
			DiskFileItemFactory factory = new DiskFileItemFactory();//文件上传工厂类（把每一个请求表单项封装为一个个FileItem对象）
			factory.setSizeThreshold(1024 * 1024 * 10);// 上传文件尺寸大于setSizeThreshold设置的临界值时，将文件以临时文件形式保存在磁盘上
			factory.setRepository(tempFile);//设置上传临时文件的目录

			ServletFileUpload upload = new ServletFileUpload(factory);//文件上传核心类，可以获取factory所有的FileItem对象
			upload.setHeaderEncoding("UTF-8");//设置上传文件名的编码
			upload.setFileSizeMax(1024 * 1024 * 10);// 设置单个上传文件的最大值10MB
			upload.setSizeMax(1024 * 1024 * 10);//设置总上传文件大总的最大值
			java.util.List<FileItem> list = upload.parseRequest(request);//把请求数据转换为FileItem对象的集合
			//FileItem 封装了普通表单项的值以及文件上传表单元素的值
			for (FileItem item : list) {
				if (!item.isFormField()) {////判断：是普通表单项，还是文件上传表单项;如果是文件上传表单项
					filename = item.getName();
					System.out.println("图片名字:" + filename);

					if (filename == null || filename.trim().equals("")) {
						System.out.println("没有文件！");
						continue;
					}
					filename = filename.substring(filename.lastIndexOf("\\") + 1);
					String fileExtName = filename.substring(filename.lastIndexOf(".") + 1);// 获取扩展名
					if (!fileExtName.equals("jpg") && !fileExtName.equals("png") && !fileExtName.equals("jpeg")) {
						System.out.println("不是jpg||jpeg||png");
						continue;
					}
					String id=UUID.randomUUID().toString();
					filename =id+"-"+filename;//防止重名覆盖
					System.out.println("重命名后图片名字:" + filename);
					File file=new File(savePath + "\\" + filename);
					item.write(file);
					item.delete();//item没用了
					System.out.println("保存文件成功");
					message = "上传文件完成！";
				}

				File file = new File(savePath + "\\" + filename);
				Upload_DownloadFileTool uploadFileTool = new Upload_DownloadFileTool();
				uploadFileTool.upload_file(file, "/home/computer/LabWebsite/car_detection_yolov3/test/images");
				// 先进行车辆检测，再进行车型分类
				// 根据自己的路径修改

				Linux_shell linux = new Linux_shell();// 自建工具类
				linux.do_shell("D:\\Git\\Git\\git-bash.exe D:\\Git\\Git\\vehicle_wb.sh");
				// 执行脚本文件调用do_shell方法
				uploadFileTool.Download("/home/computer/LabWebsite/car_detection_yolov3/test/output/image.jpg",savePath +"\\"+filename);
				//下载检测结果图片覆盖原图片
				uploadFileTool.Download("/home/computer/LabWebsite/car_classifiction_resnet_wb/result.txt",savePath +"\\result.txt");
				//下载结果文件
				linux.do_shell("D:\\Git\\Git\\git-bash.exe D:\\Git\\Git\\deleteImage_wb.sh");
				//执行删除图片操作
				File txt=new File(savePath +"\\result.txt");
	            InputStreamReader reader = new InputStreamReader(  
	                    new FileInputStream(txt)); // 建立一个输入流对象reader  
	            BufferedReader br = new BufferedReader(reader); // 建立一个对象，它把文件内容转成计算机能读懂的语言    
	            String resultString="";
	            String temp= br.readLine();
	            while(temp!=null) {
	            	resultString+=temp+"@";   //分割标志
	            	temp=br.readLine();
	            }
	            //System.out.println(resultString);
	            result.put(filename, resultString);//filename只是名字，不是路径
	            br.close();
	            //txt.delete();//——————————————————————————————————————————————————————————————存放在不同文件夹，后面会删除
			}
		}  catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			modelAndView.addObject("message", "出错了，请重试！");
			modelAndView.setViewName("wb/message");
		}
        modelAndView.addObject("result", result);
        modelAndView.setViewName("wb/message");//注意路径，不需要写网页后缀
		return modelAndView;
	}
}
