package com.test.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.test.bean.User;
import com.test.service.UserService;

@Controller
public class BMSController {
	@Autowired
	UserService us;
	@RequestMapping("/usertable")
	public String getUserTable(HttpServletRequest request) {
		HttpSession session = request.getSession();
		User user =  (User) session.getAttribute("user");
		if(user == null) {
			return "redirect:index.jsp";
		}
		List<User> userlist = us.getAllUser();
		request.setAttribute("userlist", userlist);
		return "pages/tables/usertable";
	}
}
