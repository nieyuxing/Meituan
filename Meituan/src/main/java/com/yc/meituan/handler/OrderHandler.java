package com.yc.meituan.handler;

import java.io.PrintWriter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.google.gson.Gson;
import com.yc.meituan.entity.Order;
import com.yc.meituan.service.OrderService;

@Controller
@RequestMapping("/order")
@SessionAttributes("order")
public class OrderHandler {
	@Autowired
	private OrderService orderService;
	
	public void getModel(ModelMap map){
		map.put("order", new Order());
	}
	@RequestMapping("/data")
	public void getPort(ModelMap map,PrintWriter out){
		List<Order> orders=orderService.getData();
		map.put("order", orders.get(0));
		System.out.println(orders.get(0));
		Gson gson =new Gson();
		System.out.println(gson.toJson(orders));
		out.print(gson.toJson(orders));
		out.flush();
		out.close();
	}
}
