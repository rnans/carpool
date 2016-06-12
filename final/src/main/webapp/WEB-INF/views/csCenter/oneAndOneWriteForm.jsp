<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./bootstrap/css/font-awesome.min.css">
<link href="/final02/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
<style type="text/css">
.btn span.glyphicon {    			
	opacity: 0;				
}
.btn.active span.glyphicon {				
	opacity: 1;				
}</style>
</head>
<body>
<%@include file="../header.jsp" %>

<div style="margin-top: 40px;">
<%@include file="csCenterSubMenu.jsp" %>
</div>

<div align="center"  style="margin-right: 120px;">
<h3>1:1문의하기</h3>
</div>
<div class="container" style="margin: 0px auto;">
<div class="row">
    
<div class="" style="margin-left: 520px ">
<form action="oneandoneAdd.do" id="contact" class="form" role="form" >
<div class="row">
<div class="col-xs-7 col-md-7 form-group">
작성자<input class="form-control" id="writer" name="writer"  value="${sid }" type="text" required autofocus readonly="readonly"/>
</div>
<div class="col-xs-7 col-md-7 form-group">
  문의유형        <label class="text-primary"></label>	   
		<div class="btn-group" data-toggle="buttons">
			<label class="btn btn-default active">결제
				<input type="radio" name="type" id="option2" value="결제" autocomplete="off" chacked>
				<span class="glyphicon glyphicon-ok"></span>
			</label>
			<label class="btn btn-default">예약
				<input type="radio" name="type" id="option1" value="예약"  autocomplete="off">
				<span class="glyphicon glyphicon-ok"></span>
			</label>
				<label class="btn btn-default">커뮤니티
				<input type="radio" name="type" id="option1" value="커뮤니티"  autocomplete="off">
				<span class="glyphicon glyphicon-ok"></span>
			</label>
				<label class="btn btn-default">기타
				<input type="radio" name="type" id="option1" value="기타"  autocomplete="off">
				<span class="glyphicon glyphicon-ok"></span>
			</label>		
		</div>
	
</div>
<div class="col-xs-7 col-md-7 form-group">
제목<input class="form-control" id="subject" name="subject"   type="text" required autofocus />
</div>
</div>
<br>
내용
<br>
<textarea class="form-control3" id="content" name="content" rows="5" style="width: 56.5%; height: 400px;"></textarea>
<br />
<input type="reset" value="다시작성" class="btn btn-primary pull-center" >
<button class="btn btn-primary pull-center" type="submit">글올리기</button>


</form>
</div>
</div>
</div>
<hr>

<%-- <fieldset>
<legend>1:1문의</legend>
<form action="oneandoneAdd.do" >
<ul>
   <li>작성자:<input type="text" name="writer" value="${sid }" readonly="readonly"></li> 
   <li>문의유형:<input type="radio" name="type" value="결제">결제
             <input type="radio" name="type" value="예약">예약
             <input type="radio" name="type" value="커뮤니티">커뮤니티
             <input type="radio" name="type" value="기타">기타 </li>
   <li>제목:<input type="text" name="subject"></li>
   <li>내용</li>
   </ul>
<textarea rows="35" cols="70" name="content"></textarea>
<br>
  
   <input type="reset" value="다시작성하기">
   <input type="submit" value="작성완료">
          </form>
</fieldset>
<hr> --%>	
	
<%@ include file="../footer.jsp" %>
</body>
</html>