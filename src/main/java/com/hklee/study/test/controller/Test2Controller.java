package com.hklee.study.test.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.ModelAndView;

public class Test2Controller implements org.springframework.web.servlet.mvc.Controller{
	private Logger logger = Logger.getLogger(this.getClass());

	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response){
		logger.info("=========handleRequest2=======");
		logger.info("=========handleRequest2=======");

		ModelAndView mav = new ModelAndView();

		return mav;
	}

}
