package com.yc.meituan.handler;

import java.io.PrintWriter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;
import com.yc.meituan.entity.User;
import com.yc.meituan.service.UserService;

@Controller
@RequestMapping("/user")
public class UserHandler {
	@Autowired
	private UserService userService;

	@RequestMapping(value = "/data")
	public void listAll(PrintWriter out,PrintWriter pw) {
		System.out.println("到达listAll方法...");
		List<User> users = userService.listAll();
		System.out.println(users);
		Gson gson=new Gson();
		out.println(gson.toJson(users));
		out.flush();
		out.close();
	}
}
