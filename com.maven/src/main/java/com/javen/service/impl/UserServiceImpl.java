package com.javen.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javen.dao.IUserDao;
import com.javen.model.User;
import com.javen.service.IUserService;
  
@Service
public class UserServiceImpl implements IUserService {  
	@Autowired
    private IUserDao userDao;  
    
   @Override
	public void regist(User user) {
		// TODO Auto-generated method stub
	   userDao.addUser(user);
	   //userDao.registerByUsernameAndPassword(user.getName(),user.getPassword());
	}
	//新增一个用户
	/*	public void addUser(String username, String password) {
			User user = new User();
			user.setUserName(username);
			user.setPassword(password);
			userDao.addUser(user);
		}*/
 
	@Override
	public User login(String name, String password) {
		// TODO Auto-generated method stub
		 User user = userDao.findUserByNameAndPwd(name,password);
	        if(user != null && user.getPassword().equals(password)){
	        
	            return user;
	        }
	        return null;
		//userDao.findUserByNameAndPwd(name,password);
	}

    public User getUserById(int userId) {  
        // TODO Auto-generated method stub  
        return this.userDao.selectByPrimaryKey(userId);  
    }  
  
}  
