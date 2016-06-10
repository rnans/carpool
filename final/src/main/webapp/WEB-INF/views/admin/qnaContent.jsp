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
<div style="margin: 0px auto; padding-left:200px;display: inline-block; width: 80%;  ">
 <div align="center" style="margin-left:100px;">
<h2 >Q&A글보기</h2>
<div class=".col-md-8" style="margin-left:230px; display: inline-block; width: 100%; " >
<div class="container" style="margin: 0px auto;">
<div class="row">
    
<div class="col-sm-8 contact-form" style="margin: 0px auto;">
<form action="qnaUpdate_ok.do" id="contact" class="form" role="form" >
<div class="row">
<div class="col-xs-6 col-md-6 form-group">
글번호<input class="form-control" id="idx" name="idx"  value="${list[0].idx }"type="text" required autofocus readonly="readonly"/>
</div>
<div class="col-xs-6 col-md-6 form-group">
제목<input class="form-control" id="subject" name="subject" value="${list[0].subject }" type="text" required autofocus />
</div>
</div>
<br>
내용<textarea class="form-control" id="content" name="content" rows="5">${list[0].content }</textarea>
<br />
<button class="btn btn-primary pull-right" type="submit">수정하기</button>
<input type="reset" value="다시작성" class="btn btn-primary pull-right" >

</form>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<hr>

<div>풋부분</div>
</body>
</html>