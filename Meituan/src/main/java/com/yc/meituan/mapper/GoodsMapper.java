package com.yc.meituan.mapper;

import java.util.List;

import com.yc.meituan.entity.Good;

public interface GoodsMapper {
	List<Good> listAll();

	List<Good> goodInfo(int tid);
	
	Good getGoodById(int gid);

	List<Good> getGoodByGid(int gid);

	List<Good> getTopgoods();

	List<Good> getBigTypeInfoByTname(String tname);

	List<Good> selectGoods(String gname);


}
