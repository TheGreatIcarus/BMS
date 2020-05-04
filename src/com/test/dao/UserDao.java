package com.test.dao;

import java.util.List;

import com.test.bean.User;

public interface UserDao {
	User selectByAccount(User user);
	
	List<User> selectAllUser();
	
	boolean addUser(User user);
	//通过用户名查用户
	User selectByUserAccount(String account);
	
	boolean delUserByAccount(String account);
	
	User selUserById(String id);
	
	boolean updateUser(User user);
}
