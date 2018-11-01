package com.javen.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;

import com.alibaba.fastjson.JSON;
@Controller
public class DelPhotoCjlController extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response)

			throws ServletException, IOException {
	    String filePath = request.getSession().getServletContext().getRealPath("/");
	    String fileName = request.getParameter("name"); 
	    Boolean flag = DeleteImage(filePath, fileName);
	    String result = "";
	    if (flag) {
	        result = "delet success!";
	    }else {
	    	result = "delet failure!";
	    }
	    response.getWriter().print(JSON.toJSON(result));
	}

	/**
	 * ¹¦ÄÜÃèÊö£ºbase64×Ö·û´®×ª»»³ÉÍ¼Æ¬
	 *
	 * @since 2016/5/24
	 */
	public boolean DeleteImage(String filePath, String fileName) {
		try {
			Boolean re = null;
			File file = new File(filePath+fileName);
			if (file.exists()) {
				re = file.delete();
				
			}
			return re;
		} catch (Exception e) {
			return false;
		}
	}
}
