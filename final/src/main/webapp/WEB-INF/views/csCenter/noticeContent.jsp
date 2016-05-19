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
<div>헤더부분</div>
<hr>
<c:if test="${empty list }">
<h3>글이 누락되었거나 사라졌습니다.</h3>
</c:if>
<section>
<div>왼쪽에 박아놓기
<table border="1">
<thead>
<tr>
    <th><a href="notice.do">공지사항</a></th>
</tr>
<tr>   
    <th><a href="qnaList.do">자주묻는질문(Q&A)</a></th> 
</tr>
<tr>
    <th><a href="oneAndOne.do">1:1문의</a></th>
</tr>
<tr>
    <th><a href="useGuideList.do">이용안내</a></th>
</tr> 
</thead>
</table>
</div>
</section>
<section>
<fieldset>
<legend>공지사항</legend>
글번호:<input type="text" name="idx" value="${list[0].idx}" readonly="readonly">
작성날짜:<input type="text" name="writedate" value="${list[0].writedate }" readonly="readonly"><br>
조회수:<input type="text" name="readnum" value="${list[0].readnum}" readonly="readonly"><br>
제목:<input type="text" name="subject" value="${list[0].subject}" readonly="readonly"> <br>
글쓴이:<input type="text" name="writer" value="${list[0].writer}" readonly="readonly"> 
<br>
<textarea name="content" cols="55" rows="25" value="${list[0].content}" readonly="readonly"> </textarea><br>
<a href="csCenter.do">이전페이지로</a>
</fieldset>
</section>
<hr>
<div>풋부분</div>
</body>
</html>