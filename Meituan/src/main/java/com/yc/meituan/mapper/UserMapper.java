package com.yc.meituan.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yc.meituan.entity.User;

public interface UserMapper {
    
    List<User> listAll();
    
	User login(User user);

	int insertUser(User user);

	User emailverify(String email);
	
	User usnameOremailverify(String usnameOremail);

	int update(@Param("username")String username, @Param("pwd")String pwd, @Param("telphone")String telphone,@Param("email") String email,@Param("idcard")String idcard);
}
