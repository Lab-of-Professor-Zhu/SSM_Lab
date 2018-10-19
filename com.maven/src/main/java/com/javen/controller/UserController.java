package com.javen.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import org.springframework.stereotype.Controller;  
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javen.model.User;
import com.javen.service.IUserService;

@Controller  
@RequestMapping("/user")  
// /user/**
//@SessionAttributes("Name")//①将ModelMap中属性名为currUser的属性
public class UserController {  
	@Resource
	private IUserService userService;
	@RequestMapping(value="/reg.do",method=RequestMethod.GET) 
		public String reg(){		
			//注册成功后跳转register.jsp页面
			return "login/register";
		}
	@RequestMapping(value="/regist.do",method=RequestMethod.GET) 
		public String regist(User user,Model model){	
			System.out.println("用户名："+user.getName());		
			System.out.println("密码："+user.getPassword());	
			userService.regist(user);
			//model.addAttribute("msg", "注册成功");
			//model.addAttribute("user", user);
			//注册成功后跳转登录页面
			return "login/login";
		}
		
	
	//正常访问login页面
    @RequestMapping("/log.do")
    public String login(){
        return "login/login";
    }
    
    //表单提交过来的路径,注册之后登录
    @RequestMapping(value="/login.do",method=RequestMethod.GET)
    public String login(String name,String password,Model model,HttpSession session){
        //调用service方法
    	User user = new User();
    	user =userService.login(name,password);
        if(user != null){
           // model.addAttribute("msg", "登录成功");
    	 session.setAttribute("Name", name);
            return "index";
        }
        JOptionPane.showMessageDialog(null, "用户名或密码错误", "error", JOptionPane.ERROR_MESSAGE);
        return "login/login";
    }
    
    //注销
    @RequestMapping("/outLogin.do")
    public String outLogin(HttpSession session){
        //通过session.invalidata()方法来注销当前的session
        session.invalidate();
        return "index";
    }
    

    // /user/test?id=1
    @RequestMapping(value="/test",method=RequestMethod.GET)  
    public String test(HttpServletRequest request,Model model){  
        return "index";  
    } 
    
}  