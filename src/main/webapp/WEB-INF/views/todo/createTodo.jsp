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
		//작성 버튼 클릭 이벤트
		$("#btnSave").click(function(){

			$("#frm_write").attr("action", "<c:url value="/todo/writeTodo.do"/>");
			$("#frm_write").submit();

		});

		//작성 버튼 클릭 이벤트
		$("#btnCancel").click(function(){

			$("#frmCancel").submit();

		});


		//fromDate
		$("#fromYmd").datepicker({
			changeMonth: 	true,
			changeYear: 	true,
			nextText: 		'다음 달',
			prevText: 		'이전 달',
			dateFormat: 	'yy-mm-dd',

			dayNames: 			['월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일'],
         	dayNamesMin: 		['월', '화', '수', '목', '금', '토', '일'],
         	monthNamesShort: 	['1','2','3','4','5','6','7','8','9','10','11','12'],
         	monthNames: 		['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],

         	onClose: function( selectedDate ) {
				$( "#toYmd" ).datepicker( "option", "minDate", selectedDate );
			}
		});

		//toDate
		$("#toYmd").datepicker({
			changeMonth: 	true,
			changeYear: 	true,
			nextText: 		'다음 달',
			prevText: 		'이전 달',
			dateFormat: 	'yy-mm-dd',

			dayNames: 			['월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일'],
         	dayNamesMin: 		['월', '화', '수', '목', '금', '토', '일'],
         	monthNamesShort: 	['1','2','3','4','5','6','7','8','9','10','11','12'],
         	monthNames: 		['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],

         	onClose: function( selectedDate ) {
				$( "#fromYmd" ).datepicker( "option", "maxDate", selectedDate );
			}
		});

		$("#fromHour").timepicker({
			step:	"10"
		});

		$("#toHour").timepicker({
			step:	"10"
		});

	});//end ready


</script>

<body>

	<form id="frm_write" method="post">
		<table class="write">
			<colgroup>
				<col width="10%"/>
				<col width="30%"/>
			</colgroup>

			<tr>
				<th>할일</th>
				<td><input type="text" id="content" name="content"></td>
			</tr>
			<tr>
				<th>전화번호</th>
				<td><input type="text" id="tel" name="tel"></td>
			</tr>
			<tr>
				<th>시작일자</th>
				<td>
					<input type="text" id="fromYmd" name="fromYmd" readonly="readonly">
					<input type="text" class="time ui-timepicker-input" id="fromHour" name="fromHour">
				</td>
			</tr>
			<tr>
				<th>종료일자</th>
				<td>
					<input type="text" id="toYmd" name="toYmd" readonly="readonly">
					<input type="text" class="time ui-timepicker-input" id="toHour" name="toHour">
				</td>
			</tr>
			<tr>
				<th>비고</th>
				<td>
					<textarea id="bigo" name="bigo"></textarea>
				</td>
			</tr>


		</table>
	</form>


	<br/>
	<div id="divBottom">
		<input type="button" id="btnSave" value="저장">
		<input type="button" id="btnCancel" value="취소">
	</div>

	<form id="frmCancel" method="post" action="<c:url value="/todo/viewTodoManagerList.do"/>">
	</form>

</body>
</html>