<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
</head>

<script type="text/javascript">
	$(document).ready(function() {
	});
</script>

<body>

	<form id="frm_list" action="" >
		<table class="list_type">
			<colgroup>
				<col width="5%"/>
				<col width="35%"/>
				<col width="15%"/>
				<col width="15%"/>
				<col width="15%"/>
				<col width="15%"/>
			</colgroup>

			<thead>
				<tr>
					<th>번호</th>
					<th>일정</th>
					<th>전화번호</th>
					<th>시작일자</th>
					<th>종료일자</th>
					<th>작성일</th>
				</tr>
			</thead>

			<tbody>
				<c:choose>
					<c:when test="${empty todoList} }">
						<tr>
							<td colspan="6" align="center"> 조회된 내용이 없습니다. </td>
						</tr>
					</c:when>

					<c:otherwise>
						<c:forEach items="${todoList }" var="todo">
							<tr>
								<td class="num">${todo.rNum }</td>
								<td align="left">
									<a href="<c:url value="/todo/viewTodoDetail.do">
												<c:param value="${todo.todoSeq }" name="todoSeq" />
											</c:url>">
										${todo.content }
									</a>
								</td>
								<td>${todo.tel }</td>
								<td>${todo.fromYmd }</td>
								<td>${todo.toYmd }</td>
								<td>${todo.writeDate }</td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
	</form>


</body>
</html>