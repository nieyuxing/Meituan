package com.yc.meituan.mapper;

import com.yc.meituan.entity.User;

public interface UserMapper {

	User login(User user);

	int insertUser(User user);

}
