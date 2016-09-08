package com.yc.meituan.handler;

import java.io.PrintWriter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.google.gson.Gson;
import com.yc.meituan.entity.Type;
import com.yc.meituan.service.TypeService;

@Controller
@RequestMapping("/type")
public class TypeHandler {
	@Autowired
	private TypeService typeService;

	@RequestMapping("/listAll")
	public void listAll(PrintWriter out) {
		List<Type> types = typeService.listAll();
		System.out.println(types);
		Gson gson = new Gson();
		out.println(gson.toJson(types));
		out.flush();
		out.close();
	}
	@RequestMapping("/findAll")
	public void findAll(PrintWriter out) {
		List<Type> types = typeService.findAll();
		System.out.println(types);
		Gson gson = new Gson();
		out.println(gson.toJson(types));
		out.flush();
		out.close();
	}
}
