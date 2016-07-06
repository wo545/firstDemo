package org.shiyf.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.shiyf.entity.UserInfo;
import org.shiyf.services.UserServices;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.testmybatis.TestLog4j;

@Controller
@RequestMapping("userController")
public class UserController {
	private static Logger logger = Logger.getLogger(UserController.class);  
	@Resource
	private UserServices userServices; 
	@RequestMapping(value="adduser",method=RequestMethod.POST)
	public String addUser(@RequestBody UserInfo userInfo){
		System.out.println("----------------useraddone");
//		UserInfo userInfo =new UserInfo();
//		userInfo.setUsername(userName);
//		userInfo.setPassword(passWord);
//		userInfo.setAge(age);
//		userInfo.setSex(sex);
		logger.info("----------------useraddone");
		System.out.println(userInfo);
	//	userServices.addUser(userInfo);
		return "welcome";
	}
	@RequestMapping(value="checkuser",method=RequestMethod.GET)
	public String checkUser(HttpServletRequest request){
		HttpSession s=request.getSession();
		if(s.getAttribute("userName")!=null){
			return "welcome";
		}
		return "login";
		
	}
	@RequestMapping(value="userlogin",method=RequestMethod.POST)
	public String userLogin(HttpServletRequest req,String userName,String passWord){
		UserInfo ui=userServices.getUserByName(userName);
		if(ui.getPassword().equals(passWord)){
			req.getSession().setAttribute("userName", userName);
			return "welcome";
		}
		return "error";
		
	}
}
