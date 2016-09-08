package com.yc.meituan.mapper;

import java.util.List;

import com.yc.meituan.entity.User;

public interface UserMapper {
    
    List<User> listAll();
    
	User login(User user);

	int insertUser(User user);

	User emailverify(String email);
	
	User usnameOremailverify(String usnameOremail);

}
