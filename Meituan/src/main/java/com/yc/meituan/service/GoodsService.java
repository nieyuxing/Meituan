package com.yc.meituan.service;

import java.util.List;

import com.yc.meituan.entity.Good;

public interface GoodsService {
	List<Good> listAll();

	List<Good> getgid(int gid);

	List<Good> goodInfo(int tid);
	
	Good listGoodById(int gid);
}
