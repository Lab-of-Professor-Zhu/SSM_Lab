package com.javen.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.alibaba.fastjson.JSON;

import sun.misc.BASE64Decoder;


@Controller
@RequestMapping("/photograph") 
public class PhotographCjlController extends HttpServlet {
	@RequestMapping(value="/cjl_test.do",method=RequestMethod.GET)  
	//��������ת��cjl����ҳ
    public String cjl_test() {
		return "cjl/test_product2";
	} 
	@RequestMapping("/CjlCatD") 
	public void doPost(HttpServletRequest request, HttpServletResponse response)

			throws ServletException, IOException {
		String basePath = "cjl_upload/";
	    String filePath = request.getSession().getServletContext().getRealPath("/") + basePath;
	   // String fileName = DateUtils.getDate("yyyyMMddHHmmss") + ".png";
	    String fileName = (new Date()).getTime()+".png";
	    //Ĭ�ϴ���Ĳ��������͵Ȳ�����data:image/png;base64,
	    String imgStr = request.getParameter("image");
	    if (null != imgStr) {
	        imgStr = imgStr.substring(imgStr.indexOf(",") + 1);
	    }
	    Boolean flag = GenerateImage(imgStr, filePath, fileName);
	    String result = "";
	    if (flag) {
	        result = basePath + fileName;
	    }
//	    this.writeJson(result, resp);
	    
	   // System.out.print(filePath);
	    response.getWriter().print(JSON.toJSON(result));
	}

	/**
	 * ����������base64�ַ���ת����ͼƬ
	 *
	 * @since 2016/5/24
	 */
	public boolean GenerateImage(String imgStr, String filePath, String fileName) {
		try {
			if (imgStr == null) {
				return false;
			}
			BASE64Decoder decoder = new BASE64Decoder();
			// Base64����
			byte[] b = decoder.decodeBuffer(imgStr);
			// ���Ŀ¼�����ڣ��򴴽�
			File file = new File(filePath);
			if (!file.exists()) {
				file.mkdirs();
			}
			// ����ͼƬ
			OutputStream out = new FileOutputStream(filePath + fileName);
			out.write(b);
			out.flush();
			out.close();
			return true;
		} catch (Exception e) {
			return false;
		}
	}
}
