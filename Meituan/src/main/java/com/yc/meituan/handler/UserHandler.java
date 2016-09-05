package com.yc.meituan.handler;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yc.meituan.entity.User;
import com.yc.meituan.service.UserService;

@Controller
@RequestMapping("/user")
public class UserHandler {
  
	@Autowired
	private UserService userService;
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
}
