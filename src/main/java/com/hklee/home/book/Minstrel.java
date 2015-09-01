package com.hklee.home.book;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class Minstrel {

	private static final Logger logger = LoggerFactory.getLogger(Minstrel.class);

	public void singBeforQuest(){
		logger.info("원정 전에 호출 됨");
	}

	public void singAfterQuest(){
		logger.info("원정 후에 호출 됨");
	}

}
