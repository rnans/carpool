<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="../adHeader.jsp" %>
<%@include file="../header.jsp" %>
<div>헤더</div>
<hr>
<h2>이용안내 글쓰기</h2>
<form action="useguideWrite_ok.do">
<ul>
<li>제목:<input type="text" name="subject" ></li>
<li>내용</li>
</ul>
<textarea name="content" rows="35" cols="70"></textarea><br>
<input type="reset" value="다시작성">
<input type="submit" value="글작성완료">

</form>
<hr>
<div>풋</div>
</body>
</html>