package com.test.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.google.code.kaptcha.Constants;
import com.test.bean.User;
import com.test.service.UserService;

@SessionAttributes("user")
@Controller
public class LoginController {
	@Autowired
	private UserService us;
	
	@RequestMapping(value="/login",method = RequestMethod.POST)
	public String login(HttpServletRequest request,@RequestParam("account")String account, @RequestParam("password")String password,
			@RequestParam("code")String code, ModelMap map) {
		HttpSession session = request.getSession();
		String sessionCode = (String) session.getAttribute(Constants.KAPTCHA_SESSION_KEY);
		if(!sessionCode.equals(code)) {
			return "redirect:index.jsp?err=400";
		}
		User user = new User();
		user.setAccount(account);
		user = us.doAccountQuery(user);
		if(user==null) {
			return "redirect:index.jsp?err=500";
		}
		if(!user.getPassword().equals(password)) {
			return "redirect:index.jsp?err=500";
		}else {
			map.put("user", user);
			return "bms";
		}
	}
	@RequestMapping(value="/registUser", method = RequestMethod.POST)
	public String registUser(User user) {
		us.addUser(user);
		return "redirect:/index.jsp?msg=100";
	}
	
	@RequestMapping("/logout")
	public String logout(SessionStatus status, HttpSession session) {
		session.invalidate();
		status.setComplete();
		return "redirect:/index.jsp";
	}
}
