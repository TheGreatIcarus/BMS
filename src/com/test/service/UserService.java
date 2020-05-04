package com.test.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.bean.User;
import com.test.dao.UserDao;

@Service
public class UserService {
	@Autowired
	private UserDao userDao;
	
	public User doAccountQuery(User user) {
		return userDao.selectByAccount(user);
	}
	
	public List<User> getAllUser(){
		return userDao.selectAllUser();
	}
	
	public boolean addUser(User user) {
		return userDao.addUser(user);
	}
	
	public User selectUserByAccount(String account) {
		return userDao.selectByUserAccount(account);
	}
	
	public boolean delUserByAccount(String account) {
		return userDao.delUserByAccount(account);
	}
	public User selUserById(String id) {
		return userDao.selUserById(id);
	}
	public boolean updateUser(User user) {
		return userDao.updateUser(user);
	}
}
