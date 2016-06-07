<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <link rel="stylesheet" href="./bootstrap/css/font-awesome.min.css">
<link href="/final02/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
<style >
	textarea.form-control3 {
 
  height: 500px;
  width: 600px;

}
</style>
</head>
<body>
<div>
<%@include file="../header.jsp" %>
</div>
<div>
<%@include file="../adHeader.jsp" %>
</div>
<br><br><br>
<div align="center">
<h3>공지사항 글쓰기</h3>
</div>
<div class="container" style="margin: 0px auto;">
<div class="row">
    
<div class="col-sm-8 contact-form" style="margin-left: 350px;">
<form action="noticeWrite.do" id="contact" class="form" role="form" >
<div class="row">
<div class="col-xs-7 col-md-7 form-group">
작성자<input class="form-control" id="writer" name="writer"  value="관리자" type="text" required autofocus readonly="readonly"/>
</div>
<div class="col-xs-7 col-md-7 form-group">
제목<input class="form-control" id="subject" name="subject"   type="text" required autofocus />
</div>
</div>
<br>
내용
<br>
<textarea class="form-control3" id="content" name="content" rows="5"></textarea>
<br />
<input type="reset" value="다시작성" class="btn btn-primary pull-center" >
<button class="btn btn-primary pull-center" type="submit">글올리기</button>


</form>
</div>
</div>
</div>


</form>
<hr>


<div>풋</div>
</body>
</html>