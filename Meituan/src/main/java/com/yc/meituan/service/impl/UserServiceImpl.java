package com.yc.meituan.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.meituan.entity.User;
import com.yc.meituan.mapper.UserMapper;
import com.yc.meituan.mapper.UserMapper;
import com.yc.meituan.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {
    
	@Autowired
	private UserMapper userMapper;
	@Override
	public User login(User user) {
		return userMapper.login(user);
	}
	
	@Override
	public User userRegister(User user) {
		return userMapper.register(user);
	}

}
