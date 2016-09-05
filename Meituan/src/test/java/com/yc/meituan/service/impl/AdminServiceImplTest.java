package com.yc.meituan.service.impl;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.meituan.entity.Admin;
import com.yc.meituan.service.AdminService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class AdminServiceImplTest {
    
	@Autowired
	private AdminService adminService;
	@Test
	public void testLogin() {
		Admin admin=adminService.login(new Admin("admin","a"));
		System.out.println(admin);
		assertNotNull(admin);
	}

}
