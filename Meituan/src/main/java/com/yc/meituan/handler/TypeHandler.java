package com.yc.meituan.handler;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.google.gson.Gson;
import com.yc.meituan.entity.Type;
import com.yc.meituan.service.TypeService;

@Controller
@RequestMapping("/type")
@SessionAttributes("list")
public class TypeHandler {
	@Autowired
	private TypeService typeService;
	
	@RequestMapping(value="/listAll",method=RequestMethod.GET)
	public void listAll(PrintWriter out) {
		List<Type> types = typeService.listAll();
		//System.out.println(types);
		Gson gson = new Gson();
		out.println(gson.toJson(types));
		out.flush();
		out.close();
	}
	
	@RequestMapping(value="/findAll",method=RequestMethod.POST)
	public void findAll(PrintWriter out) {
		List<Type> types = typeService.findAll();
		System.out.println(types);
		Gson gson = new Gson();
		out.println(gson.toJson(types));
		out.flush();
		out.close();
	}
	@RequestMapping(value="/findById",method=RequestMethod.POST)
	@ResponseBody
	public void findById(ModelMap map,HttpServletRequest request,PrintWriter out){
		HttpSession session = request.getSession();
        session.removeAttribute("list");
        map.remove("list");
		LogManager.getLogger().debug("//按Id查询方法成功到达处理方法中.....");
		String tid=request.getParameter("tid");
		//System.out.println(tid);
		Type list=typeService.findAllById(Integer.parseInt(tid));
		map.put("list", list);
		//System.out.println(list);
		Gson gson=new Gson();
		out.print(gson.toJson(list));
		out.flush();
		out.close();
	}
}
