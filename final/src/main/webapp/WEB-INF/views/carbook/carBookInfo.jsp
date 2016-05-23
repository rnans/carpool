<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="../header.jsp"%>
<script>
function opencostReg(){
	window.open('costReg.do?id=${sid}','costReg.do','width=350,height=450');
}
function opencarReg(){
	window.open('carReg.do?id=${sid}','carReg.do','width=350, height=450');
}
</script>
<hr>
<div>
<select name=carnum>
	<option>12경기1234</option>
</select>
<a href="javascript:opencarReg()">차량등록</a>
<a href="javascript:opencostReg()">비용입력</a>
</div>
<div>

차량사진
<fieldset>
	<legend>차량정보</legend>
	기록시작일 2016-05-18<br>
	시작주행거리 100km<br>
	총 주행거리 10000km<br>
	총 지출금액 100000원
</fieldset>
</div>
<fieldset>
	<legend>차계부</legend>
	<select name=날짜>
	<option>2016.05.05~2016.05.06</option>
	</select><br>
	주유비용 30000원<br>
	기타비용 20000원
</fieldset>
</body>
</html>