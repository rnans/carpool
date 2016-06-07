<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <link rel="stylesheet" href="./bootstrap/css/font-awesome.min.css">
<link href="/final02/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>

</head>
<body>
헤더부분
<hr>
<div class="container" style="width: 100%; margin: 0px 0px 0px 0px">
	<div class=".col-md-4 " style="position: absolute ; display: inline-block; height:150px;top:150px ;left:0px;">
		<%@include file="../adHeader.jsp" %>
	</div>
	<div class=".col-md-8" style="margin-left:350px; display: inline-block; width: 100%;">
	<div class="container">
	<div class="row">
	<div class="col-sm-8 contact-form" style="margin: 0px auto;">
	<form action="oneandoneAnswer_ok.do" id="contact" class="form" role="form" >
	<div class="row">
	<div class="col-xs-7 col-md-7 form-group">
	글번호<input class="form-control" id="idx" name="idx"  value="${list[0].idx }"type="text" required autofocus readonly="readonly"/>
	</div>
	<div class="col-xs-7 col-md-7 form-group">
	작성날짜<input class="form-control" id="writedate" name="writedate" value="${list[0].writedate}" type="text" required autofocus readonly="readonly"/>
	</div>
	<div class="col-xs-7 col-md-7 form-group">
	문의유형<input class="form-control" id="type" name="type"  value="${list[0].type }" type="text" required autofocus readonly="readonly"/>
	</div>
	<div class="col-xs-7 col-md-7 form-group">
	제목<input class="form-control" id="subject" name="subject" value="${list[0].subject }" type="text" required autofocus />
	</div>
	</div>
	<br>
	내용<textarea class="form-control" id="content" name="content" rows="5">${list[0].content }</textarea>
	<br />
	<br>
	답변<textarea class="form-control" id="answer" name="answer" rows="5">${list[0].answer }</textarea>
	<br />
	<button class="btn btn-primary pull-right" type="submit">수정하기</button>
	<input type="reset" value="다시작성" class="btn btn-primary pull-right" >
	</form>
	</div>
	</div>
	</div>
	</div>
	</div>
<hr>



<div>풋부분</div>
</body>
</html>