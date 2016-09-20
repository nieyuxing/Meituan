package com.yc.meituan.handler;

import java.io.PrintWriter;
import java.util.List;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.google.gson.Gson;
import com.yc.meituan.entity.User;
import com.yc.meituan.service.UserService;

@Controller
@RequestMapping("/user")
@SessionAttributes("user")
public class UserHandler {
	@Autowired
	private UserService userService;
	
	@ModelAttribute
	private void getModel(ModelMap map){
		map.put("user",new User());
	}

	@RequestMapping(value = "/data")
	public void listAll(PrintWriter out) {
		System.out.println("到达listAll方法...");
		List<User> users = userService.listAll();
		Gson gson=new Gson();
		out.println(gson.toJson(users));
		out.flush();
		out.close();
	}

    //用户登录
	@RequestMapping(value="/login",method=RequestMethod.POST)
    public String userLogin(User user,ModelMap map){
	    user= userService.login(user);
	    System.out.println("user login.."+user);
	    if(user==null){
	    	map.put("errorMsg", "账号或密码错误!!!");
	    	return "../page/login";
	    }
	    map.put("user", user);
		return "../index";
 	}
	
 	//用户注册
  @RequestMapping(value="/register",method=RequestMethod.POST)
	public String register(User user, ModelMap map,HttpServletRequest request) {
		if (userService.register(user)) {
			// 成功注册
			//接收激活用户的链接地址
			activeAccountMail("美团注册","您已成功注册美团,请记住您的登录邮箱及其密码...",
					"15886486481@163.com",user.getEmail());
			return "../page/login";
		}
		return "../page/register";
	}
	 //判断邮箱是否被注册
    @RequestMapping(value="/emailverify",method=RequestMethod.POST)
	public void emailverify( String email,PrintWriter out){
		System.out.println("==>"+email);
		if(userService.emailverify(email)){
			out.print(true);
		}else{
			out.print(false);
		}
		out.flush();
		out.close();
	}
	
	//判断用户名或者邮箱是否存在
    @RequestMapping(value="/usnameOremailverify",method=RequestMethod.POST)
	public void usnameOremailverify( String usnameOremail,PrintWriter out){
		System.out.println("==>"+usnameOremail);
		if(userService.usnameOremailverify(usnameOremail)){
			out.print(true);
		}else{
			out.print(false);
		}
		out.flush();
		out.close();
	}
   
    
	@Autowired
	private JavaMailSender mailSender;
	private void activeAccountMail(String subject,String content,String form, String to) {
		MimeMessage mm=mailSender.createMimeMessage();
		try {
			MimeMessageHelper mmh=new MimeMessageHelper(mm,true);
			mmh.setTo(to);//设置邮件接受者
			mmh.setFrom(form); //设置邮件发送者
			mmh.setSubject(subject);//设置主题
			mmh.setText(content);//设置内容
			mailSender.send(mm);//发送邮件
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}
  //获取后台首页数据
  @RequestMapping(value="/home",method=RequestMethod.POST)
  public void home(PrintWriter out){
		System.out.println("到达home方法...");
		out.println(true);
		out.flush();
		out.close();
	}
	@RequestMapping(value="/edit",method=RequestMethod.POST)
    public void Edit(User user,PrintWriter out){
		System.out.println("到达edit方法...User是"+user);
		int result=userService.update(user);
		System.out.println(result);
		if(result>=0){
			out.println(true);
		}else{
			out.println(false);
		}
		out.flush();
		out.close();
 	}
	@RequestMapping(value="/editget",method=RequestMethod.POST)
    public void Editget(int usid,PrintWriter out){
		System.out.println("到达Editget方法...id是"+usid);
		User users=userService.getUserById(usid);
		Gson gson=new Gson();
		System.out.println(users);
		out.print(gson.toJson(users));
		out.flush();
		out.close();
 	}
	@RequestMapping(value="/add",method=RequestMethod.POST)
    public void Add(User user,PrintWriter out){
		System.out.println("到达edit方法...User是"+user);
		int result=userService.add(user);
		System.out.println("添加结果是..."+result);
		if(result>=0){
			out.println(true);
		}else{
			out.println(false);
		}
		out.flush();
		out.close();
 	}
	@RequestMapping(value="/del",method=RequestMethod.POST)
    public void Del(int usid,PrintWriter out){
		System.out.println("到达del方法...id是"+usid);
		int result=userService.del(usid);
		System.out.println(result);
		if(result>=0){
			out.println(true);
		}else{
			out.println(false);
		}
		out.flush();
		out.close();
 	}
}
