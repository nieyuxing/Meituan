package com.yc.meituan.service;

import java.util.List;

import com.yc.meituan.entity.User;

public interface UserService {

	List<User> listAll();
	
	User login(User user);

	boolean register(User user);

}
