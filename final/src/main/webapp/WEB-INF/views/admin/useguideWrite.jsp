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
<%@include file="../header.jsp" %>
    <div style="width: 100%; ">
<div style="width: 20%; margin: 100px 0px 0px 0px">
		<%@include file="../adHeader.jsp" %>
		</div>
<div style="margin: 0px auto; padding-left:292px;display: inline-block; width: 80%;  ">
 <div align="center" style="margin-left:180px;">
<h2 >이용안내글쓰기</h2>

</div>
    
<div class="col-sm-8 contact-form" style="margin-left:250px;">
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



<hr>
<div>풋</div>
</body>
</html>