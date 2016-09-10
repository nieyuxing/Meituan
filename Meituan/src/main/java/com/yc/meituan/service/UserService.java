package com.yc.meituan.service;

import java.util.List;

import com.yc.meituan.entity.User;

public interface UserService {

	List<User> listAll();
	
	User login(User user);

	boolean register(User user);

	boolean emailverify(String email);

	boolean usnameOremailverify(String usnameOremail);

	int update(User user);

	User getUserById(int usid);

	int add(User user);

	int del(int usid);

}
