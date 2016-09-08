package com.yc.meituan.handler;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import java.io.PrintWriter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.ModelAttribute;
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

    //用户登录
	@RequestMapping(value="/login",method=RequestMethod.POST)
    public String userLogin(User user,ModelMap map){
	    user= userService.login(user);
	    System.out.println("user login.."+user);
	    if(user==null){
	    	map.put("errorMsg", "账号或密码错误!!!");
	    	return "../page/login";
	    }
		return "../index";
 	}
	
	@RequestMapping(value="/edit",method=RequestMethod.POST)
    public void Edit(PrintWriter out,HttpServletRequest request){
	    String username=(String) request.getAttribute("username");
	    System.out.println(username);
		System.out.println("到达edit方法...");
		out.println(true);
		out.flush();
		out.close();
 	}
 	//用户注册
  @RequestMapping(value="/register",method=RequestMethod.POST)
	public String register(@Valid @ModelAttribute("user")User user,BindingResult bindingResult,
			ModelMap map,HttpServletRequest request){
		if(bindingResult.hasFieldErrors()){
			map.put("regErrorMsg", "注册失败!!!");
			bindingResult.addError(new ObjectError("uspwd2", "密码不相同..."));
			return "../page/register";
		}
		if(userService.register(user)){
			//成功注册
			return "../page/login";
		}
		map.put("regErrorMsg", "注册失败！！！");
		return "../page/register";
	}
  //获取后台首页数据
  @RequestMapping(value="/home",method=RequestMethod.POST)
  public void home(PrintWriter out){
		System.out.println("到达home方法...");
		out.println(true);
		out.flush();
		out.close();
	}
}
