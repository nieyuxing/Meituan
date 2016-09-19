package com.yc.meituan.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.meituan.entity.Good;
import com.yc.meituan.mapper.GoodsMapper;
import com.yc.meituan.service.GoodsService;

@Service("goodsService")
public class GoodsServiceImpl implements GoodsService{
	@Autowired
	private GoodsMapper goodsMapper;

	public List<Good> listAll() {
		return goodsMapper.listAll();
	}

	@Override
	public Good listGoodById(int gid) {
		return goodsMapper.getGoodById(gid);
	}

	@Override
	public List<Good> goodInfo(int tid) {
		return goodsMapper.goodInfo(tid);
	}

	@Override
	public List<Good> listGoodByGid(int gid) {
		return goodsMapper.getGoodByGid(gid);
	}


}
