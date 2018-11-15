package tools;

import org.apache.commons.io.IOUtils;
import org.apache.commons.net.ftp.FTPClient;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

public class Upload_DownloadFileTool {

	public void upload_file(File file, String save_path) {
		FTPClient ftpClient = new FTPClient();
		FileInputStream fis = null;
		try {
			ftpClient.connect("10.3.45.68");
			ftpClient.login("computer", "123456");
			File srcFile = file;
			fis = new FileInputStream(srcFile); // 设置上传目录
			ftpClient.changeWorkingDirectory(save_path);
			ftpClient.setBufferSize(1024);
			ftpClient.setControlEncoding("GBK"); // 设置文件类型（二进制）
			ftpClient.setFileType(FTPClient.BINARY_FILE_TYPE);

			ftpClient.storeFile("image."+srcFile.getName().split("\\.")[1], fis);
			//srcFile.delete();//及时删除，避免冲突
		} catch (IOException e) {
			e.printStackTrace();
			throw new RuntimeException("FTP客户端出错！", e);
		} finally {
			IOUtils.closeQuietly(fis);
			try {
				ftpClient.disconnect();
			} catch (IOException e) {
				e.printStackTrace();
				throw new RuntimeException("关闭FTP连接发生异常！", e);
			}
		}
	}
	
	public void Download(String full_file_name, String save_path) {        
		FTPClient ftpClient = new FTPClient();     
		FileOutputStream fos = null;         
		try {           
			ftpClient.connect("10.3.45.68");       
			ftpClient.login("computer", "123456");         
			String remoteFileName = full_file_name;      
			fos = new FileOutputStream(save_path);          
			ftpClient.setBufferSize(1024);            //设置文件类型（二进制）      
			ftpClient.setFileType(FTPClient.BINARY_FILE_TYPE);         
			ftpClient.retrieveFile(remoteFileName, fos);        
			} catch (IOException e) {           
				e.printStackTrace();           
				throw new RuntimeException("FTP客户端出错！", e);    
				} finally {       
					IOUtils.closeQuietly(fos);     
					try {             
						ftpClient.disconnect();      
						} catch (IOException e) {      
							e.printStackTrace();             
							throw new RuntimeException("关闭FTP连接发生异常！", e);     
							}     
						}   
		}

}
