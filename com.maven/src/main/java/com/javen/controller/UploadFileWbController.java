package com.javen.controller;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.*;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Servlet implementation class uploadFileServlet
 */
@Controller

public class UploadFileWbController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@RequestMapping(value = "/uploadFile/wb_test.do", method = RequestMethod.GET)

	public String wb_test() {
		return "wb/vehicle";
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String savePath = this.getServletContext().getRealPath("wb_upload");
		System.out.println(savePath);
		String tempPath = this.getServletContext().getRealPath("wb_temp");
		File tempFile = new File(tempPath);
		String filename = null;

		String message = "";
		try {
			DiskFileItemFactory factory = new DiskFileItemFactory();
			factory.setSizeThreshold(1024 * 1024 * 1024);// ����߽��С1MB
			factory.setRepository(tempFile);

			ServletFileUpload upload = new ServletFileUpload(factory);
			upload.setProgressListener(new ProgressListener() {

				@Override
				public void update(long pBytesRead, long pContentLength, int arg2) {
					// TODO Auto-generated method stub
					System.out.println("�ļ���СΪ��" + pContentLength + ",��ǰ�Ѵ���" + pBytesRead);
				}
			});
			upload.setHeaderEncoding("UTF-8");
			upload.setFileSizeMax(1024 * 1024 * 10);// ����ͼƬ���10MB
			upload.setSizeMax(1024 * 1024 * 10 * 5);// ���5��ͼƬ
			java.util.List<FileItem> list = upload.parseRequest(request);
			for (FileItem item : list) {
				if (!item.isFormField()) {
					filename = item.getName();
					System.out.println("图片名字:" + filename);

					if (filename == null || filename.trim().equals("")) {
						System.out.println("��ȡ�ļ�ʧ��");
						continue;
					}
					filename = filename.substring(filename.lastIndexOf("\\") + 1);
					String fileExtName = filename.substring(filename.lastIndexOf(".") + 1);// �ļ���չ��
					if (!fileExtName.equals("jpg") && !fileExtName.equals("png") && !fileExtName.equals("jpeg")) {
						System.out.println("�ϴ�ָ��Ϊjpg��jpeg��png��ʽ��ͼƬ");
						continue;
					}
					InputStream in = item.getInputStream();
					FileOutputStream out = new FileOutputStream(savePath + "\\" + filename);
					byte buffer[] = new byte[1024];
					int len = 0;
					while ((len = in.read(buffer)) > 0) {
						out.write(buffer, 0, len);
					}
					in.close();
					out.close();
					System.out.println("�����ļ��ɹ�");
					message = "�ļ��ϴ��ɹ�";
				}

				File file = new File(savePath + "\\" + filename);
				request.setAttribute("image_name", filename);
				UploadFileTool uploadFileTool = new UploadFileTool();
				uploadFileTool.upload_file(file, "/home/computer/wb/cars/cars_predict/");
				// 根据自己的路径修改

				Linux_shell linux = new Linux_shell();// 自建工具类
				linux.do_shell("D:\\Git\\Git\\vehicle_wb.sh");
				// 执行脚本文件调用do_shell方法
				uploadFileTool.Download("/home/computer/wb/cars/result.txt",savePath +"\\result.txt");
				//下载结果文件
				File txt=new File(savePath +"\\result.txt");
	            InputStreamReader reader = new InputStreamReader(  
	                    new FileInputStream(txt)); // 建立一个输入流对象reader  
	            BufferedReader br = new BufferedReader(reader); // 建立一个对象，它把文件内容转成计算机能读懂的语言    
	            String result = br.readLine(); 
	            br.close();
	            txt.delete();//及时删除

				request.setAttribute("result", result);// 传递测试结果
				request.getRequestDispatcher("WEB-INF/jsp/wb/message.jsp").forward(request, response);// 替换自己的页面路径
			}
		} catch (FileUploadBase.FileSizeLimitExceededException e) {
			// TODO: handle exception
			e.printStackTrace();
			request.setAttribute("message", "�����ļ��������ֵ������");
			request.getRequestDispatcher("/wb/message").forward(request, response);
			return;
		} catch (FileUploadBase.SizeLimitExceededException e) {
			// TODO: handle exception
			e.printStackTrace();
			request.setAttribute("message", "�ϴ��ļ����ܵĴ�С�������Ƶ����ֵ������");
			request.getRequestDispatcher("/wb/message").forward(request, response);
			return;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			request.setAttribute("message", "ͼƬ��ʽ���󣡣���");
			request.getRequestDispatcher("wb/message.jsp").forward(request, response);
			return;
		}

	}

	public String wb_message() {
		return "wb/message";
	}

}