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
<section>
<fieldset>
<legend>공지사항</legend>
<form action="NoticeUpdate_ok.do">
글번호:<input type="text" name="idx" value="${list[0].idx}" readonly="readonly" >
작성날짜:<input type="text" name="writedate" value="${list[0].writedate}"><br>
조회수:<input type="text" name="readnum" value="${list[0].readnum}" readonly="readonly"><br>
제목:<input type="text" name="subject" value="${list[0].subject}" > <br>
글쓴이:<input type="text" name="writer" value="${list[0].writer}" > 
<br>
글쓴이:<input type="text" name="writer" value="${list[0].content}" > <br>
<textarea name="content" cols="55" rows="25" value="${list[0].content}" > </textarea><br>
<input type="submit" value="수정하기">
<a href="adminNoticeList.do">이전페이지로</a>
</form>
</fieldset>
</section>
</section>
</body>
</html>