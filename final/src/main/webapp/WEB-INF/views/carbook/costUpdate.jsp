<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form name="costReg" action="costReg.do" method="post">
<fieldset>
	<legend>비용등록</legend>
	<select name="category">
		<option>유형</option>
		<option>주유</option>
		<option>정비</option>
		<option>물품구입</option>
	</select><br>
	날짜 <input type="text" name="costday"><br>
	금액<input type="text" name="cost"><br>
	주행거리<input type="text" name="km"><br>
	비고<textarea rows="10" cols="20" name="bigo">
	</textarea><br>
	<input type="hidden" name="id" value="${ sid }">
	<input type="submit" value="등록">
	<input type="button" value="취소" onclick="javascript:window.self.close()">
</fieldset>
</form>
</body>
</html>