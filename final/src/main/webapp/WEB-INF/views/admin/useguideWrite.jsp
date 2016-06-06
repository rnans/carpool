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
<div>헤더
<%@include file="../header.jsp" %>
</div>
<div>메뉴바
<%@include file="../adHeader.jsp" %>
</div>
<hr>
<div>
<h3>이용안내 글쓰기</h3>
<div class="container" style="margin: 0px auto;">
<div class="row">

    
<div class="col-sm-8 contact-form" style="margin: 0px auto;">
<form action="useguideWrite_ok.do" id="contact" class="form" role="form" >
<div class="row">
<div class="col-xs-6 col-md-6 form-group">
<input class="form-control" id="subject" name="subject" placeholder="제목" type="text" required autofocus />
</div>
</div>
<textarea class="form-control" id="content" name="content" placeholder="내용" rows="5"></textarea>
<br />
<button class="btn btn-primary pull-right" type="submit">글작성</button>
<input type="reset" value="다시작성" class="btn btn-primary pull-right" >

</form>
</div>
</div>
</div>
</div>


<hr>
<div>풋</div>
</body>
</html>