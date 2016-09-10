package com.yc.meituan.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.meituan.entity.Order;
import com.yc.meituan.mapper.OrderMapper;
import com.yc.meituan.service.OrderService;

@Service("orderService")
public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrderMapper orderMapper;
	@Override
	public List<Order> getData() {
		return orderMapper.findOrder();
	}

}
