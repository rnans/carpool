<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<fieldset>
<legend>차량등록</legend>
<form  name="carAdd" action="carAdd.do" method="post">
<div>
<input type="hidden" name="id" value="${sid }">
운전자 이름:<input type="text" name="driver">
<br>
차 번호:<input type="text" name="carNum">
<br>
차종:<input type="text" name="carType">
</div>

<div>
<input type="hidden" name="confirmPhoto" value="사진없음">
<img src='이미지 경로명' width="100" height="100"/>
<br>
<input type="file">
</div>

<br>
	<input type="button" value="취소">
	<input type="submit" value="등록">

	</form>
	</fieldset>
</body>
</html>