<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<fieldset>
<legend>차량수정</legend>
<form  name="carUpdate" action="carUpdate.do" method="post">
<div>
<input type="hidden" name="idx" value="${idxList.idx }">

운전자 이름:<input type="text" name="driver" value="${idxList.driver }">
<br>
차 번호:<input type="text" name="carnum" value="${idxList.carnum }">
<br>
차종:<input type="text" name="cartype" value="${idxList.cartype }">
</div>

<div>
<input type="hidden" name="confirmphoto" value="사진없음">
<img src='이미지 경로명' width="100" height="100"/>
<br>
<input type="file">
</div>

<br>
	<input type="button" value="취소">
	<input type="submit" value="수정">

	</form>
	</fieldset>
</body>
</html>