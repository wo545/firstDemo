package org.shiyf.controller;

import org.shiyf.entity.UserInfo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/welcome")
public class Welcome {
	@ResponseBody
	@RequestMapping("/hello")
	public UserInfo welcome(){
		System.out.println("welcome ");
		UserInfo ui=new UserInfo();
		ui.setUsername("admin");
		ui.setAge("19");
		return ui;
	}

}
