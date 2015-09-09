package com.hklee.study.test.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

import com.hklee.study.test.service.TestService;

public class TestServiceImpl implements TestService{
	private Logger logger = Logger.getLogger(this.getClass());

	@Override
	public List<Map<String, Object>> testService(){
		logger.info("=====TestServiceImpl=====");
		logger.info("=====TestServiceImpl=====");

		List<Map<String, Object>> dataList = new ArrayList<Map<String,Object>>();

		return dataList;
	}

}
