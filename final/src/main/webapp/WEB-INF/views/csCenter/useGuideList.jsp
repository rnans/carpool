<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="../header.jsp" %>
<div>헤더부분</div> 
<hr>
<h2>이용안내</h2>
<div>왼쪽메뉴바
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
      <div>이용안내제목1             -----클릭시 (제목과 내용을박는다)</div>
<div> 제목1 내용출력</div>

<hr>
풋부분
</body>
</html>