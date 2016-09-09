package com.yc.meituan.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.meituan.entity.User;
import com.yc.meituan.mapper.UserMapper;
import com.yc.meituan.service.UserService;
import com.yc.meituan.entity.Encrypt;

@Service("userService")
public class UserServiceImpl implements UserService {
    
	@Autowired
	private UserMapper userMapper;
	
	@Override
	public List<User> listAll() {
		return userMapper.listAll();
	}
	
	@Override
	public boolean register(User user) {
		//密码加密
		user.setUspwd(Encrypt.md5AndSha(user.getUspwd()));
		try {
			return userMapper.insertUser(user)>0;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public User login(User user) {
		user.setUspwd(Encrypt.md5AndSha(user.getUspwd()));
		return userMapper.login(user);
	
	}

	@Override
	public boolean emailverify(String email) {
		User user = userMapper.emailverify(email);
		if(user!=null){
			return true;
		}
		return false;
	}

	@Override
	public boolean usnameOremailverify(String usnameOremail) {
		User user = userMapper.usnameOremailverify(usnameOremail);
		if(user!=null){
			return true;
		}
		return false;
	}

	@Override
	public int update(String username, String pwd, String telphone,
			String email, String idcard) {
		return userMapper.update( username, pwd, telphone,email, idcard);
	}

}
