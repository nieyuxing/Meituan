package com.yc.meituan.mapper;

import java.util.List;

import com.yc.meituan.entity.Type;

public interface TypeMapper {
	List<Type> listAll();

	List<Type> findAll();

	Type findAllById(int tid);
}
