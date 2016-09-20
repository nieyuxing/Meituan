package com.yc.meituan.service;

import java.util.List;

import com.yc.meituan.entity.Good;

public interface GoodsService {
	List<Good> listAll();

	List<Good> goodInfo(int tid);
	
	Good listGoodById(int gid);

	List<Good> listGoodByGid(int gid);

	List<Good> getTopgoods();

	List<Good> getBigTypeInfo(String tname);

	List<Good> selectGoods(String gname);

}
