package com.javen.service;  

import com.javen.model.User;
  
  
public interface IUserService {
	//用户注册
	void regist(User user);
	//用户登录
	User login(String name,String password);
	//void login(String name, String password);
   // public User getUserById(int u serId);  
}  