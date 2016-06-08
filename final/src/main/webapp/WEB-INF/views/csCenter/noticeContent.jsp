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
<style type="text/css">

.red{
    color:red;
    }
.form-area
{
    background-color: #FAFAFA;
	padding: 10px 40px 60px;
	margin: 10px 0px 60px;
	border: 1px solid GREY;
	}
	textarea.form-control2 {
  width: 550px;
  height: 500px;

}
</style>
</head>
<body>
<div>
<%@include file="../header.jsp" %>
</div>

<hr><br>
<c:if test="${empty list }">
<h3>글이 누락되었거나 사라졌습니다.</h3>
</c:if>
<div class="container"  style=" margin: 0px 0px 0px 0px">
	<div class="row">
	<%@include file="csCenterSubMenu.jsp" %>
		<div class="" style="padding-left:130px; display: inline-block; width: 60%;  ">	
		<br>

<div class="row">
<h3 align="center">   공지사항</h3>
<div class="form-group" style="width: 50%;float: left; padding-right: 30px;">
글번호<input class="form-control" id="idx" name="idx"  value="${list[0].idx }"type="text" required autofocus readonly="readonly"/>
</div>
<div class="form-group" style="width: 50%;display: inline-block; padding-left: 30px; ">
작성날짜<input class="form-control" id="writedate" name="writedate" value="${list[0].writedate}" type="text" required autofocus readonly="readonly"/>
</div>
</div>
<div class="row">
<div class="form-group" style="width: 50%;float: left;display: inline-block; padding-right: 30px;">
글쓴이<input class="form-control" id="writer" name="writer"  value="${list[0].writer }" type="text" required autofocus readonly="readonly"/>
</div>
<div class="form-group" style="width: 50%;display: inline-block; padding-left: 30px; ">
조회수<input class="form-control" id="readnum" name="readnum" value="${list[0].readnum }" type="text" required autofocus readonly="readonly"/>
</div>
<div class="form-group" style="width: 100%; ">
제목<input class="form-control" id="subject" name="subject" value="${list[0].subject }" type="text" required autofocus />
</div>
</div>
<div class="row">
내용
<br>
<textarea class="form-control2" id="content" name="content" style="width: 100%; padding-left: 30px; padding-right: 30px;">${list[0].content }</textarea>
<br />
<a href="csCenter.do"><button class="btn btn-primary full-right" >목록으로</button></a>
</div>
</div>
</div>
</div>
<hr>
<div>풋부분</div>
</body>
</html>