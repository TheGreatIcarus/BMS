package com.test.controller;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.test.bean.User;
import com.test.service.UserService;

@RequestMapping("/UserManage")
@Controller
public class UserManageController {
	@Autowired
	UserService us;
	@RequestMapping(value = "/getAllUser")
	@ResponseBody
	public List<User> getAllUser(){
		return us.getAllUser();
	}
	@RequestMapping(value="/addUser", method = RequestMethod.POST)
	public String addUser(User user) {
		us.addUser(user);
		return "redirect:/usertable.do";
	}
	
	
	@ResponseBody
	@RequestMapping("/checkUser")
	public User checkUser(@RequestParam("account")String account) {
		return us.selectUserByAccount(account);
	}
	
	@RequestMapping("/delUser")
	public String delUser(@RequestParam("account")String account) {
		us.delUserByAccount(account);
		return "redirect:/usertable.do";
	}
	
	@RequestMapping("/selUserById")
	@ResponseBody
	public User selUserById(@RequestParam("id")String id) {
		return us.selUserById(id);
	}
	
	@RequestMapping("/updateUser")
	public String updateUer(User user) {
		us.updateUser(user);
		return "redirect:/usertable.do";
	}
}
