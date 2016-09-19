package com.yc.meituan.handler;

import java.io.PrintWriter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.google.gson.Gson;
import com.yc.meituan.entity.Good;
import com.yc.meituan.service.GoodsService;

@Controller
@RequestMapping("/goods")
@SessionAttributes("goods")
public class GoodsHandler {
	@Autowired
	private GoodsService goodsService;
	
	public void getModel(ModelMap map){
		map.put("goods", new Good());
	}

	@RequestMapping(value="/listAll",method=RequestMethod.GET) 
	public void listAll(PrintWriter out){
		List<Good> goods = goodsService.listAll();
		System.out.println(goods);
		Gson gson = new Gson();
		out.println(gson.toJson(goods));
		out.flush();
		out.close();
	}
	
	@RequestMapping(value="/type",method=RequestMethod.GET) 
	public String  goodInfo(int tid,ModelMap map){
		System.out.println(tid);
		List<Good> goods=goodsService.goodInfo(tid);
		System.out.println(goods);
		map.put("goods", goods);
		return "../page/typeShop";
	}
	
	@RequestMapping("/shopping") 
	public String  shopping(int gid,ModelMap map){
		System.out.println(gid);
		List<Good> goods=goodsService.listGoodByGid(gid);
		System.out.println(goods);
		map.put("goods", goods);
		return "../page/shopping";
	}
	
	@RequestMapping("/details")
	public String details(int gid,ModelMap map){
		Good goods=goodsService.listGoodById(gid);
		map.put("good", goods);
		return "../page/details";
	}
}
