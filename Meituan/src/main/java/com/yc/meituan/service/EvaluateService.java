package com.yc.meituan.service;

import java.util.List;

import com.yc.meituan.entity.Evaluate;

public interface EvaluateService {

	List<Evaluate> listAll();

	Evaluate getEvaluateById(int id);

}
