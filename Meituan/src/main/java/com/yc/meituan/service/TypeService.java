package com.yc.meituan.service;

import java.util.List;

import com.yc.meituan.entity.Type;

public interface TypeService {
	List<Type> listAll();

	List<Type> findAll();
}
