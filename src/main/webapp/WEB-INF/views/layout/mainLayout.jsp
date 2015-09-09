<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/page" prefix="page"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
</head>

<!-- Common Header -->
<page:applyDecorator page="/WEB-INF/views/layout/header.jsp" name="testHeader" encoding="UTF-8" />

<body>
	<br/>
	<br/>
	<decorator:body/>
	<br/>
	<br/>
</body>

</html>