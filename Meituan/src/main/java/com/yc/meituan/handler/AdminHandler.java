package com.yc.meituan.handler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yc.meituan.entity.Admin;
import com.yc.meituan.service.AdminService;


@Controller
@RequestMapping("/admin")
public class AdminHandler {
	@Autowired
	private AdminService adminService;

	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String adminLogin(Admin admin,ModelMap map) {
		System.out.println("管理员登录"+admin);
		admin=adminService.login(admin);
		if(admin == null){
			map.put("errorMsg", "用户名或密码错误...");
			return "../backMeituan/login";
		}
		return "../backMeituan/index";
	}
}
