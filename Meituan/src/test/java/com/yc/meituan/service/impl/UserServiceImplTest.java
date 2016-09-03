package com.yc.meituan.service.impl;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.meituan.entity.User;
import com.yc.meituan.service.UserService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class UserServiceImplTest {

	@Autowired
	private UserService userService;
	
	@Test
	public void testLogin(){
		User user=userService.login(new User("13218qq.com","a"));
		System.out.println(user);
		assertNotNull(user);
	}
	
	@Test
	public void testRegister(){
		User user=userService.userRegister(new User("a","16465645645@163.com"));
		System.out.println(user);
		assertNotNull(user);
	}
}
