package com.javen.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.javen.model.User;

@Repository
public interface IUserDao {
	//ÃÌº””√ªß
	//public void registerByUsernameAndPassword(@Param("name")String name,@Param("password")String password);	
	public void addUser(User user);
	//User findUserByName(String name);
	User findUserByNameAndPwd(@Param("name")String name, @Param("password")String password);
	
	//User findUserById(User user);
    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(User record); 

    int updateByPrimaryKey(User record);
}