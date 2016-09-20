package com.yc.meituan.handler;

import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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
		//System.out.println(goods);
		Gson gson = new Gson();
		out.println(gson.toJson(goods));
		out.flush();
		out.close();
	}
	
	@RequestMapping(value="/type",method=RequestMethod.GET) 
	public String  goodInfo(int tid,ModelMap map){
		List<Good> goods=goodsService.goodInfo(tid);
		//System.out.println(goods);
		map.put("goods", goods);
		return "../page/typeShop";
	}
	
	@RequestMapping("/shopping") 
	public String  shopping(int gid,ModelMap map){
		//System.out.println(gid);
		List<Good> goods=goodsService.listGoodByGid(gid);
		//System.out.println(goods);
		map.put("goods", goods);
		return "../page/shopping";
	}
	
	@RequestMapping("/details")
	public String details(int gid,ModelMap map){
		Good goods=goodsService.listGoodById(gid);
		map.put("good", goods);
		return "../page/details";
	}
	
	@ResponseBody
	@RequestMapping(value="/topGoods",method=RequestMethod.POST)
	public void topGoods(ModelMap map){
		List<Good> topgoods= goodsService.getTopgoods();
		//System.out.println(topgoods);
		map.put("goods", topgoods);
	} 
	
	@ResponseBody
	@RequestMapping(value="/bigTypeInfo",method=RequestMethod.POST)
	public String BigTypeInfo(@RequestParam("tname")String tname,ModelMap map){
		try {
			tname=java.net.URLDecoder.decode(tname , "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		List<Good>bigTypeInfo=goodsService.getBigTypeInfo(tname);
		System.out.println(bigTypeInfo);
		map.put("goods", bigTypeInfo);
		return "page/typeShop";
	}
	
	//通过实物名查询
	@ResponseBody
	@RequestMapping(value="/selectGoods",method=RequestMethod.POST)
	public String select(@RequestParam("gname")String gname,ModelMap map){
		try {
			gname=java.net.URLDecoder.decode(gname ,"UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		List<Good>selectGoods=goodsService.selectGoods(gname);
		//System.out.println(selectGoods);
		map.put("goods", selectGoods);
		return "page/typeShop";
	}
	
}
