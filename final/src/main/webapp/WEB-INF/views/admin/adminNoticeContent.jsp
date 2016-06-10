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
  width: 600px;
  height: 500px;

}


</style>
</head>
<body>
<%@include file="../header.jsp" %>
    <div style="width: 100%; ">
<div style="width: 20%; margin: 100px 0px 0px 0px">
		<%@include file="../adHeader.jsp" %>
		</div>
<div style="margin: 0px auto; padding-left:292px;display: inline-block; width: 80%;  ">
 <div align="center" style="margin-left:150px;">
<h2 >공지사항글보기</h2>

</div>
<div class="col-sm-8 contact-form"  style="margin-left:250px;">
<form action="NoticeUpdate_ok.do" id="contact" class="form" role="form" >
<div class="row">
<div class="col-xs-3 col-md-3 form-group">
글번호<input class="form-control" id="idx" name="idx"  value="${list[0].idx }"type="text" required autofocus readonly="readonly"/>
</div>
<div class="col-xs-4 col-md-4 form-group">
작성날짜<input class="form-control" id="writedate" name="writedate" value="${list[0].writedate}" type="text" required autofocus readonly="readonly"/>
</div>
</div>
<div class="row">
<div class="col-xs-4 col-md-4 form-group">
글쓴이<input class="form-control" id="writer" name="writer"  value="${list[0].writer }" type="text" required autofocus readonly="readonly"/>
</div>
<div class="col-xs-3 col-md-3 form-group">
조회수<input class="form-control" id="readnum" name="readnum" value="${list[0].readnum }" type="text" required autofocus readonly="readonly"/>
</div>
<div class="col-xs-7 col-md-7 form-group">
제목<input class="form-control" id="subject" name="subject" value="${list[0].subject }" type="text" required autofocus />
</div>
</div>
내용
<br>
<textarea class="form-control2" id="content" name="content" >${list[0].content }</textarea>
<br />
<br>
<button class="btn btn-primary pull-left" type="submit">수정하기</button>
</form>
</div>
</div>
</div>


<!-- </fieldset>
</div> -->

</body>
</html>