package com.javen.controller;

import java.io.File;
import java.io.IOException;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DeleteImageWbController {

	@RequestMapping("uploadFile/wb_delete.do")
	public ModelAndView delete(HttpServletRequest request, Model model) {
		ModelAndView modelAndView = new ModelAndView("wb/vehicle");

		String savePath = request.getServletContext().getRealPath("wb_upload");
		String image_path=request.getParameter("image_path");
		File delete_dir = new File(savePath + "\\" + image_path);
		System.out.println("image_path：" + savePath + "\\" + image_path);
		try {
			FileUtils.deleteDirectory(delete_dir);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			System.out.println("删除文件夹异常！");
		}

		return modelAndView;
	}
}
