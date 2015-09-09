package com.hklee.study.todo.service;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hklee.study.todo.domain.TodoDto;
import com.hklee.study.todo.mapper.TodoMapper;

@Service
public class TodoService {

	private Logger logger = Logger.getLogger(this.getClass());

	@Autowired
	private TodoMapper todoMapper;

	public List<TodoDto> getTodoList(){
		return todoMapper.getTodoList();
	}

}
