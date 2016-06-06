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
<%@include file="../header.jsp" %>
<%@include file="csCenterSubMenu.jsp" %>

<hr>
<c:if test="${empty list }">
<h3>글이 누락되었거나 사라졌습니다.</h3>
</c:if>


<section>
<fieldset>
<legend>공지사항</legend>
글번호:<input type="text" name="idx" value="${list[0].idx}" readonly="readonly">
작성날짜:<input type="text" name="writedate" value="${list[0].writedate }" readonly="readonly"><br>
글쓴이:<input type="text" name="writer" value="${list[0].writer}" readonly="readonly"> 
조회수:<input type="text" name="readnum" value="${list[0].readnum}" readonly="readonly"><br>
제목:<input type="text" name="subject" value="${list[0].subject}" readonly="readonly"> <br>
<br>
<textarea name="content" cols="55" rows="25"  readonly="readonly">${list[0].content} </textarea><br>
<a href="csCenter.do"><img src="http://socdnw.speedgabia.com/template/asset/images/common/btn_list.gif" alt="목록보기"></a>
</fieldset>
</section>
<hr>
<div>풋부분</div>
</body>
</html>