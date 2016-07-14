package org.shiyf.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Login {
	@RequestMapping("/login")
	public String login(HttpServletRequest request){
			HttpSession s=request.getSession();
			if(s.getAttribute("userName")!=null){
				return "welcome";
			}
			return "login";
	}
}
