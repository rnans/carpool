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
<table border="1" width="500">
<thead>
<tr>
   <td>번호</td>
   <td>내용</td>
   <td>문의일시</td>
   <td>답변상태</td>
</tr>
</thead>
<tbody>
<tr>
<td>${list[0].idx}</td>
<td>${list[0].content}</td>
<td>${list[0].writedate }</td>
<td>${list[0].state}</td>
</tr>
</tbody>
</table>
<a href="csCenter.do">이전페이지로</a>
</section>
<hr>
<div>풋</div>
</body>
</html>