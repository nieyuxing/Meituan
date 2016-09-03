package com.yc.meituan.mapper;

import java.util.List;

import com.yc.meituan.entity.User;

public interface UserMapper {
	public List<User> listAll();
	User login(User user);
}
