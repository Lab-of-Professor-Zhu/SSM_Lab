package com.javen.service;  

import com.javen.model.User;
  
  
public interface IUserService {
	//�û�ע��
	void regist(User user);
	//�û���¼
	User login(String name,String password);
	//void login(String name, String password);
   // public User getUserById(int u serId);  
}  