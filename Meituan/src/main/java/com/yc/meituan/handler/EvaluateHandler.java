package com.yc.meituan.handler;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.yc.meituan.entity.Evaluate;
import com.yc.meituan.service.EvaluateService;

@Controller
@RequestMapping("/evaluate")
@SessionAttributes("evaluates")
public class EvaluateHandler {
	@Autowired
	private EvaluateService evaluateService;
	public void getModel(ModelMap map){
		map.put("evaluates", new ArrayList<Evaluate>());
		map.put("evaluate", new Evaluate());
	}
	@RequestMapping("/getAll")
	public String getAll(ModelMap map){
		List<Evaluate> evaluates = evaluateService.listAll();
		System.out.println(evaluates);
		map.put("evaluates", evaluates);
		return "redirect:../backMeituan/Guestbook.jsp";
	}
	
	@RequestMapping("/evaluates")
	public void getById(int id,ModelMap map,PrintWriter out){
		Evaluate evaluate = evaluateService.getEvaluateById(id);
		System.out.println(evaluate);
		map.put("evaluate", evaluate);
		out.print(evaluate);
		out.flush();
		out.close();
	}
}
