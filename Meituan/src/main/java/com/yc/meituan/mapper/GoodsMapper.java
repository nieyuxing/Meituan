package com.yc.meituan.mapper;

import java.util.List;

import com.yc.meituan.entity.Good;

public interface GoodsMapper {
	List<Good> getGoodAll();

	Good getGoodById(int gid);
}
