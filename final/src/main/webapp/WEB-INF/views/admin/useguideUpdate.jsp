<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>헤더부분</div>
<section>
	<%@include file="../adHeader.jsp" %>
</section>

<section>
<fieldset>
<legend>이용안내</legend>
<form action="useguideUpdate_ok.do">
글번호:<input type="text" name="idx" value="${list[0].idx}" readonly="readonly" >
작성날짜:<input type="text" name="writedate" value="${list[0].writedate }"><br>
제목:<input type="text" name="subject" value="${list[0].subject}" > <br>
내용:<br>
<textarea name="content" cols="55" rows="25" value="${list[0].content}" > ${list[0].content}</textarea><br>
<input type="submit" value="수정하기">
<a href="adminuseguideList.do">이전페이지로</a>
</form>
</fieldset>
</section>
<hr>
<div>풋부분</div>
</body>
</html>