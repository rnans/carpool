<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가장 편리한 카풀 서비스, 풀파티!</title>
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
<%@include file="../header.jsp" %>
<div style="width: 100%; ">
<div style="width: 20%; margin: 60px 0px 0px 0px">
<%@include file="../adHeader.jsp" %>
</div>
<div id="wrapper">
        <div id="page-wrapper">

            <div class="container-fluid">
   <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header" style="margin-top: 20px;border-bottom: 5px solid #eeeeeee;">
                            고객센터 <small>공지사항글쓰기</small>
                        </h1>
                    </div>
                </div>
    
<div class="col-sm-8 contact-form" style="margin-left: 250px;">
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
<textarea class="form-control3" id="content" name="content" rows="5" ></textarea>
<br/>
<input type="reset" value="다시작성" class="btn btn-primary pull-center" >
<button class="btn btn-primary pull-center" type="submit">글올리기</button>


</form>
</div>
</div>
</div>
</div>
</div>
<hr>


</body>
</html>