package com.yc.meituan.handler;

import java.io.PrintWriter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;
import com.yc.meituan.entity.Good;
import com.yc.meituan.service.GoodsService;

@Controller
@RequestMapping("/goods")
public class GoodsHandler {
	@Autowired
	private GoodsService goodsService;

	@RequestMapping("/listAll")
	public void listAll(PrintWriter out) {
		List<Good> goods = goodsService.listAll();
		System.out.println(goods);
		Gson gson = new Gson();
		out.println(gson.toJson(goods));
		out.flush();
		out.close();
	}
}
