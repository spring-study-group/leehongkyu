<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>


	<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
	<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
	<link rel="stylesheet" href="<c:url value="/resources/css/common.css"/>" type="text/css" />

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>ToDo List</title>
</head>



<body>

	<br/>

	<!-- 메뉴.. -->
	<div id="topDiv" style="background-color: gold">
		<a href="<c:url value="/todo/viewTodoManagerList.do"/>">ToDo Manager</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="<c:url value="/todo/viewTodoList.do"/>">ToDo List</a>
	</div>

	<br/>

</body>
</html>