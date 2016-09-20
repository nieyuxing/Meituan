package com.yc.meituan.handler;

import java.io.PrintWriter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.yc.meituan.entity.Cartgoods;
import com.yc.meituan.service.CartgoodsService;
import com.yc.meituan.service.GoodsService;

@Controller
@RequestMapping("/goodInfo")
@SessionAttributes("goodInfo")
public class CartgoodsHandler {
	@Autowired
	private CartgoodsService cartgoodsService;
	
	@Autowired
	private GoodsService goodsService;

	@RequestMapping(value="/shopping",method=RequestMethod.POST) 
	public void  addCartgoods(Cartgoods cartgoods,ModelMap map,PrintWriter out){
	    if(cartgoodsService.add(cartgoods)){
	    	cartgoods.setGood(goodsService.listGoodById(cartgoods.getGid()));
		    map.put("goodInfo", cartgoods);
			System.out.println("这里是购物车信息"+cartgoods);
			out.print("/Meituan/page/shopping.jsp");
			out.flush();
			out.close();
	    }
	}	
}
