<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="costUpdate_ok.do">
<fieldset>
	<legend>비용등록</legend>
	<select name="category" value=${list[0].category }>
		<option>유형</option>
		<option>주유</option>
		<option>정비</option>
		<option>물품구입</option>
	</select><br>
	날짜 <input type="text" name="costday" value=${list[0].costday }><br>
	비고<input type="text" name="bigo" value=${list[0].bigo }><br>
	금액<input type="number" name="cost" value=${list[0].cost }><br>
	주행거리<input type="number" name="km" value=${list[0].km }><br>
	<input type="hidden" name="idx" value="${list[0].idx }">
	<input type="submit" value="수정하기">
	<input type="button" value="취소" onclick="javascript:window.self.close()">
</fieldset>
</form>
</body>
</html>