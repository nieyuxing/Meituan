package com.yc.meituan.mapper;

import java.util.List;

import com.yc.meituan.entity.Good;

public interface GoodsMapper {
	List<Good> listAll();

	List<Good> gid(int gid);

	List<Good> goodInfo(int tid);
}
