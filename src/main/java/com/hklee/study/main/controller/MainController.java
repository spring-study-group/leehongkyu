package com.hklee.study.main.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping(value="/main/*")
@Controller
public class MainController {

	private Logger logger = Logger.getLogger(this.getClass());

	@RequestMapping(value="main.do")
	public void main(){
		logger.info("=====Main=====");

	}

}
