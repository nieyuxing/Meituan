package com.yc.meituan.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.meituan.entity.Cartgoods;
import com.yc.meituan.mapper.CartgoodsMapper;
import com.yc.meituan.service.CartgoodsService;
@Service("cartgoodsService")
public class CartgoodsServiceImpl implements CartgoodsService {
    @Autowired
	private CartgoodsMapper cartgoodsMapper;
	
	@Override
	public boolean add(Cartgoods cartgoods) {
		return cartgoodsMapper.add(cartgoods)>0;
	}

}
