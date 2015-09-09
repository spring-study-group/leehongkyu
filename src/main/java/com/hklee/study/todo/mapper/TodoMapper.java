package com.hklee.study.todo.mapper;

import java.util.List;

import com.hklee.study.common.FirstRepository;
import com.hklee.study.todo.domain.TodoDto;

@FirstRepository
public interface TodoMapper {
	public List<TodoDto> getTodoList();
}
