package com.yc.meituan.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.meituan.entity.Admin;
import com.yc.meituan.entity.Encrypt;
import com.yc.meituan.mapper.AdminMapper;
import com.yc.meituan.service.AdminService;

@Service
public class AdminServiceImpl implements AdminService{
	@Autowired
	private AdminMapper adminMapper;
	public Admin login(Admin admin) {
		//admin.setPwd(Encrypt.md5AndSha(admin.getPwd()));
		System.out.println(admin);
		return adminMapper.findAdminByNP(admin);
	}

}
