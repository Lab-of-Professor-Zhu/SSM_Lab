package com.javen.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Linux_shell {

	public void do_shell(String shell_path) {// 鑴氭湰鏂囦欢
		String command_1 = "D:\\Git\\Git\\git-bash.exe " + shell_path;
		//String result = null;
		try {
			System.out.println("开始执行命令");
			Process process = Runtime.getRuntime().exec(command_1);
			System.out.println("执行命令结束");
			process.waitFor();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			System.out.println("IOException");
			e.printStackTrace();
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			System.out.println("InterruptedException");
			e.printStackTrace();
		}
	}

//	public String do_command() {// 鍛戒护璇彞
//		String command_1 = "F:\\Git\\git-bash.exe ssh -tt computer@10.3.45.68 touch wb_test.txt";// 鍊熷姪git
//		String result = null;
//		try {
//			System.out.println("寮�濮嬫墽琛屽懡浠わ紒");
//
//			Process process = Runtime.getRuntime().exec(command_1);
//			process.waitFor();
//			System.out.println("鎵ц瀹岀涓�鏉″懡浠わ紒");
//
//			BufferedReader br = new BufferedReader(new InputStreamReader(process.getInputStream()));
//			StringBuffer sb = new StringBuffer();
//			String line;
//			while ((line = br.readLine()) != null) {
//				sb.append(line).append("\n");
//			}
//			result = sb.toString();
//		} catch (InterruptedException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} catch (IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		return result;
//	}
}
