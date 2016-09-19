package com.yc.meituan.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.meituan.entity.Evaluate;
import com.yc.meituan.mapper.EvaluateMapper;
import com.yc.meituan.service.EvaluateService;

@Service("evaluateService")
public class EvaluateServiceImpl implements EvaluateService{
	@Autowired
	private EvaluateMapper evaluateMapper;
	
	@Override
	public List<Evaluate> listAll() {
		return evaluateMapper.listAll();
	}

	@Override
	public Evaluate getEvaluateById(int id) {
		return null;
	}
}
