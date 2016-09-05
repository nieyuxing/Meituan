package com.yc.meituan.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.meituan.entity.Type;
import com.yc.meituan.entity.User;
import com.yc.meituan.mapper.TypeMapper;
import com.yc.meituan.mapper.UserMapper;
import com.yc.meituan.service.TypeService;
import com.yc.meituan.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService{
	@Autowired
	private UserMapper userMapper;

	public List<User> listAll() {
		return userMapper.listAll();
	}
	public User login(User user) {
		return userMapper.login(user);
	}
	public User userRegister(User user) {
		return userMapper.register(user);
	}
}
