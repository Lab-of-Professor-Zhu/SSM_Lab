package com.javen.controller;

import org.apache.commons.io.IOUtils;
import org.apache.commons.net.ftp.FTPClient; 
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;import java.io.FileOutputStream;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
@Controller
@RequestMapping("/skip")  
public class SkipController {
	@RequestMapping(value="/lcy_test.do",method=RequestMethod.GET)  
	//��������ת��lcy����ҳ
    public String lcy_test() {
		return "lcy/jsp/text_product1";
	}
	//��������������ϴ�һ��ѹ����
	@RequestMapping(value="/lcy_image.do",method=RequestMethod.GET) 
	public String lcy_image() {
		FTPClient ftpClient = new FTPClient();        
		FileInputStream fis = null;         
		try {            
			ftpClient.connect("10.3.45.68");            
			ftpClient.login("computer", "123456");             
			File srcFile = new File("D:\\timg.rar");            
			fis = new FileInputStream(srcFile);            //�����ϴ�Ŀ¼            
			ftpClient.changeWorkingDirectory("/home/computer/lx/a/");            
			ftpClient.setBufferSize(1024);            
			ftpClient.setControlEncoding("GBK");            //�����ļ����ͣ������ƣ�           
			ftpClient.setFileType(FTPClient.BINARY_FILE_TYPE);  
			ftpClient.storeFile("work.rar", fis);    			
			} catch (IOException e) {            
				e.printStackTrace();            
				throw new RuntimeException("FTP�ͻ��˳���", e);       
				} finally {            
					IOUtils.closeQuietly(fis);            
					try {                
						ftpClient.disconnect();           
						} catch (IOException e) {               
							e.printStackTrace();                
							throw new RuntimeException("�ر�FTP���ӷ����쳣��", e);     
							}       
						}  
		return "lcy/jsp/text_product1";
	}

	
}
