package com.yc.meituan.handler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yc.meituan.entity.User;
import com.yc.meituan.service.UserService;

@Controller
@RequestMapping("/user")
public class UserHandler {
  
	@Autowired
	private UserService userService;
	
  @RequestMapping(value="/register",method=RequestMethod.POST)
    public int userRegister(String email,String uspwd,String passwordQuest){
	    
		return 1;
   }
  
  @RequestMapping(value="/login",method=RequestMethod.POST)
    public String userLogin(User user,ModelMap map){
	    user= userService.login(user);
	    System.out.println(user);
	    if(user==null){
	    	map.put("errorMsg", "账号或密码错误!!!");
	    	return "../page/login";
	    }
		return "../index";
  }
  
}
