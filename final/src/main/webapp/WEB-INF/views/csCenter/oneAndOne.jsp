<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="../header.jsp" %>
<%@include file="csCenterSubMenu.jsp" %>
<div>헤더부분 </div>
<hr>
<h2>1:1문의</h2>

<div>로그인해야지  들어올수있습니다.</div>
<table border="1">
<thead>
<tr>
   <th>번호</th>
   <th>작성자</th>
   <th>문의유형</th>
   <th>제목</th>
   <th>작성일</th>
   <th>답변현황</th>
</tr>
</thead>
<tbody>
<c:if test="${empty list }">
<tr>
 <td colspan="6" align="center">작성된 글이 없습니다.</td>
</tr>
 </c:if>

<c:forEach var="oneandone" items="${list }">

<tr>
 <td>${oneandone.idx }</td>
 <c:url var="oneandoneContent" value="oneandoneContent.do">
 <c:param name="idx">${oneandone.idx }</c:param>
 </c:url>
 <td>${oneandone.writer }</td>
 <td>${oneandone.type }</td>
 <td><a href="${oneandoneContent}">${oneandone.subject}</a></td>
 <td>${oneandone.writedate }</td>
  <td>${oneandone.state }</td>
 
</tr>
 </c:forEach>
</tbody>
<tfoot>
<tr>
 <td colspan="5" align="center">${pageStr }</td>
 <td><a href="oneAndOneWriteForm.do">1:1문의하기</a></td>
 </tr>
 </tfoot>
</table>
<hr>
풋부분
</body>
</html>