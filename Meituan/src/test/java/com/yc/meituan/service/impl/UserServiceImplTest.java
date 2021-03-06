package com.yc.meituan.service.impl;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.meituan.entity.Encrypt;
import com.yc.meituan.entity.User;
import com.yc.meituan.service.UserService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class UserServiceImplTest {

	@Autowired
	private UserService userService;
	
	@Test
	public void testLogin(){
		User user=userService.login(new User("nice","a"));
		System.out.println(user);
		assertNotNull(user);
	}
	
	@Test
	public void testUserRegister(){
		Encrypt e=new Encrypt();
		boolean user=userService.register(new User(e.md5AndSha("a"),"45612@126.com"));
		System.out.println(user);
		assertNotNull(user);
	}
	
	@Test
	public void testusnameOremailverify(){
		boolean usnameOremail=userService.usnameOremailverify("888@qq.com");
		System.out.println(usnameOremail);
		assertNotNull(usnameOremail);
	}
}
