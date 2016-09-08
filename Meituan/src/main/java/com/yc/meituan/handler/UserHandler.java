package com.yc.meituan.handler;

import java.io.PrintWriter;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.google.gson.Gson;
import com.yc.meituan.entity.User;
import com.yc.meituan.service.UserService;

@Controller
@RequestMapping("/user")
public class UserHandler {
	@Autowired
	private UserService userService;

	@RequestMapping(value = "/data")
	public void listAll(PrintWriter out) {
		System.out.println("到达listAll方法...");
		List<User> users = userService.listAll();
		Gson gson=new Gson();
		out.println(gson.toJson(users));
		out.flush();
		out.close();
	}
//	@RequestMapping(value="/register",method=RequestMethod.POST)
//    public int userRegister(String email,String uspwd,String passwordQuest){
//	    
//		return 1;
//   }
    //用户登录
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
	
	@RequestMapping(value="/edit",method=RequestMethod.POST)
    public void Edit(PrintWriter out){
	    //user= userService.edit(user);
	    /*System.out.println(user);
	    if(user==null){
	    	map.put("errorMsg", "账号或密码错误!!!");
	    	return "../page/login";
	    }*/
		System.out.println("到达edit方法...");
		out.println(true);
		out.flush();
		out.close();
 	}
 	//用户注册
  @RequestMapping(value="/register",method=RequestMethod.POST)
  public String userRegister(User user,ModelMap map){
  	user=userService.userRegister(user);
  	System.out.println(user);
	  if(user==null){
		  map.put("errorMsg","注册失败!!!");
		  return "../page/register";
	  }
	  return "../page/login";
    }
}
