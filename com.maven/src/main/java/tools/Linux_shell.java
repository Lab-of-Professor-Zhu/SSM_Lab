package tools;

import java.io.IOException;

public class Linux_shell {

	public void do_shell(String shell_path) {// 脚本文件
		String command =  shell_path;
		//String result = null;
		try {
			System.out.println("开始执行命令！");
			Process process = Runtime.getRuntime().exec(command);
			process.waitFor();
			process.destroy();
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

}
