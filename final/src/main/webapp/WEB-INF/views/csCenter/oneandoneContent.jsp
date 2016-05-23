<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="../header.jsp" %>
<div>헤더</div>
<hr>
<c:if test="${empty list }">
<h3>글이 누락되었거나 사라졌습니다.</h3>
</c:if>
<section>
<div>왼쪽에 박아놓기
<table border="1">
<thead>
<tr>
    <th><a href="notice.do">공지사항</a></th>
</tr>
<tr>   
    <th><a href="qnaList.do">자주묻는질문(Q&A)</a></th> 
</tr>
<tr>
    <th><a href="oneAndOne.do">1:1문의</a></th>
</tr>
<tr>
    <th><a href="useGuideList.do">이용안내</a></th>
</tr> 
</thead>
</table>
 </div>
</section>
<section>

<h2>1:1문의내역</h2>

<fieldset>

<legend>1:1문의 내역</legend>
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


<a href="oneAndOne.do">이전페이지로</a>
</section>
<hr>
<div>풋</div>
</body>
</html>