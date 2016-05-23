<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>헤더부분</div>
<section>
	<%@include file="../adHeader.jsp" %>
</section>
<section>
<form action="oneandoneAnswer_ok.do">
<fieldset>

<legend>1:1문의 답변</legend>
<ul>
 <li>번호:<input type="text" name="idx" value="${list[0].idx}">
     작성날짜:<input type="text" name="writedate" value="${list[0].writedate }"></li>
  <li>문의유형<input type="text" name="type" value="${list[0].type }">
  제목:<input type="text" name="subject" value="${list[0].subject }"></li>
  <li>내용:</li>
</ul>
<textarea name="content" cols="40" rows="10" value="${list[0].content}" readonly="readonly">${list[0].content} </textarea><br>
<div>답변:<br>
<textarea name="answer" cols="40" rows="10">${list[0].answer} </textarea></div><br>
</fieldset>
<input type="submit" value="답변달기">
<a href="adminOneAndOne.do">이전페이지로</a>
</form>
</section>


<hr>
<div>풋부분</div>
</body>
</html>