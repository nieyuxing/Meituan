package com.yc.meituan.mapper;

import com.yc.meituan.entity.Admin;

public interface AdminMapper {
	//admin登录
	Admin findAdminByNP(Admin admin);
}
