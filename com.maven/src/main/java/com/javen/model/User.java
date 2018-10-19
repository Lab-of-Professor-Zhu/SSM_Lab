package com.javen.model;

public class User {
	
    private Integer id;  
	private String name;
	private String password;
    private String age;
    
    public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
    
    
   
//    public String getAge() {
//		return age;
//	}
//
//	public void setAge(String age) {
//		this.age = age;
//	}
//
//	public Integer getId() {
//        return id;
//    }
//
//    public void setId(Integer id) {
//        this.id = id;
//    }
//
//  /*  public String getUserName() {
//        return name;
//    }*/
//
//    /*public void setUserName(String userName) {
//        this.name = userName == null ? null : userName.trim();
//    }*/
//
//    public String getPassword() {
//        return password;
//    }
//
//    public void setPassword(String password) {
//        this.password = password == null ? null : password.trim();
//    }
//
//	@Override
//	public String toString() {
//		return "User [id=" + id + ", userName=" + name + ", password="
//				+ password + "]";
//	}
    
    
}