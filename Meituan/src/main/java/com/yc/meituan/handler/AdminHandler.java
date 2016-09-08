package com.yc.meituan.handler;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.yc.meituan.entity.Admin;
import com.yc.meituan.service.AdminService;

@Controller
@RequestMapping("/admin")
@SessionAttributes("admin")
public class AdminHandler {
	@Autowired
	private AdminService adminService;

	@ModelAttribute
	private void getModel(ModelMap map) {
		map.put("admin", new Admin());
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String adminLogin(Admin admin, ModelMap map) {
		System.out.println("管理员登录" + admin);
		admin = adminService.login(admin);
		if (admin == null) {
			map.put("errorMsg", "用户名或密码错误...");
			return "../backMeituan/login";
		}
		map.put("admin", admin);
		return "redirect:../backMeituan/index.jsp";
	}

	@RequestMapping("/logout")
	public String logout(HttpSession session) throws Exception {
		// 清除session
		session.invalidate();
		// 重定向到商品列表界面
		return "redirect:items/queryItems.action";
	}
}
