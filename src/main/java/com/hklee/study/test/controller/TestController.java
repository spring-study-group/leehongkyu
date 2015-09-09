package com.hklee.study.test.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.ModelAndView;

import com.hklee.study.test.service.TestService;

public class TestController implements org.springframework.web.servlet.mvc.Controller{

	private Logger logger = Logger.getLogger(this.getClass());

	private TestService testService;

	public void setTestService(TestService testService) {
        this.testService = testService;
    }

	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response){
		logger.info("=========handleRequest=======");
		logger.info("=========handleRequest=======");

		String url = request.getRequestURI();

		if(url.contains("test.do")){
			testService.testService();

			ModelAndView mav = new ModelAndView();

			mav.setViewName("home");

			return mav;
		}
		else{

			return null;
		}
	}



}
