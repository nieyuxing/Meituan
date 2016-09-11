package com.yc.meituan.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.meituan.entity.Type;
import com.yc.meituan.mapper.TypeMapper;
import com.yc.meituan.service.TypeService;

@Service
public class TypeServiceImpl implements TypeService{
	@Autowired
	private TypeMapper typeMapper;

	public List<Type> listAll() {
		return typeMapper.listAll();
	}

	public List<Type> findAll() {
		return typeMapper.findAll();
	}

	@Override
	public Type findAllById(int tid) {
		return typeMapper.findAllById(tid);
	}
}
