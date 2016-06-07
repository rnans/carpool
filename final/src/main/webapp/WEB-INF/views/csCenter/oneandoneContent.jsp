<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <link rel="stylesheet" href="./bootstrap/css/font-awesome.min.css">
<link href="/final02/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
<style>
	textarea.form-control2 {
  width: 550px;
  height: 250px;
textarea {
  margin: 0;
  font-family: inherit;
  font-size: 100%;
}

}
</style>
</head>
<body>
<%@include file="../header.jsp" %>
<%@include file="csCenterSubMenu.jsp" %>
<hr>
<c:if test="${empty list }">
<h3>글이 누락되었거나 사라졌습니다.</h3>
</c:if>
<div class=".col-md-8" style="margin-left:450px; display: inline-block; width: 100%; ">	
<div class="container" style="margin: 0px auto;">
<div class="row">
<div class="col-sm-8 contact-form" style="margin: 0px auto;">
<div class="row">
<div class="col-xs-7 col-md-7 form-group">
<h3 align="left">   1:1문의내역</h3>
글번호<input class="form-control" id="idx" name="idx"  value="${list[0].idx }"type="text" required autofocus readonly="readonly"/>
</div>
<div class="col-xs-7 col-md-7 form-group">
작성날짜<input class="form-control" id="writedate" name="writedate" value="${list[0].writedate}" type="text" required autofocus readonly="readonly"/>
</div>
<div class="col-xs-7 col-md-7 form-group">
문의유형<input class="form-control" id="type" name="type"  value="${list[0].type }" type="text" required autofocus readonly="readonly"/>
</div>
<div class="col-xs-7 col-md-7 form-group">
제목
<input class="form-control" id="subject" name="subject" value="${list[0].subject }" type="text" required autofocus />
</div>
</div>
<br>
내용
<br><textarea class="form-control2" id="content" name="content" rows="5">${list[0].content }</textarea>
<br />
<br>
답변
<br><textarea class="form-control2" id="answer" name="answer" rows="5">${list[0].answer }</textarea>

<br />
<a href="oneAndOne.do"><button class="btn btn-primary ">이전페이지로</button></a>
</div>
</div>
</div>
</div>
<hr>

<div>풋</div>
</body>
</html>