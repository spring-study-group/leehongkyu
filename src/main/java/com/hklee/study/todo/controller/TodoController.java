package com.hklee.study.todo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hklee.study.todo.domain.TodoDto;
import com.hklee.study.todo.service.TodoService;

@RequestMapping(value="/todo/*")
@Controller
public class TodoController {

	private Logger logger = Logger.getLogger(this.getClass());

	@Autowired
	private TodoService todoService;

	/**
	 * Todo 리스트 조회
	 * @param request
	 * @param model
	 */
	@RequestMapping(value="viewTodoManagerList.do")
	public void viewTodoManagerList(HttpServletRequest request, Model model){
		logger.info("=============viewTodoManagerList===============");

		List<TodoDto> todoList = todoService.getTodoList();

		model.addAttribute("todoList", todoList);
	}

	/**
	 * Todo 리스트 상세 조회
	 * @param request
	 * @param model
	 */
	@RequestMapping(value="viewTodoDetail.do")
	public void viewTodoDetail(HttpServletRequest request, Model model){
		logger.info("=============viewTodoDetail===============");

	}

	/**
	 * Todo 신규 화면
	 * @param request
	 * @param model
	 */
	@RequestMapping(value="createTodo.do")
	public void createTodo(HttpServletRequest request, Model model){
		logger.info("=============createTodo===============");
	}

	/**
	 * Todo 신규 저장
	 * @param request
	 * @param model
	 */
	@RequestMapping(value="writeTodo.do")
	public String writeTodo(HttpServletRequest request, TodoDto todo){
		logger.info("=============writeTodo===============");
		return "redirect:/todo/viewTodoManagerList.do";
	}

	/**
	 * Todo 수정 화면
	 * @param request
	 * @param model
	 */
	@RequestMapping(value="modifyTodo.do")
	public void modifyTodo(HttpServletRequest request, Model model){

	}

	/**
	 * Todo 삭제
	 * @param request
	 * @param model
	 */
	@RequestMapping(value="deleteTodo.do")
	public void deleteTodo(HttpServletRequest request, Model model){

	}

}
