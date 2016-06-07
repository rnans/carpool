<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./bootstrap/css/font-awesome.min.css">
<link href="/final02/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
<style type="text/css">
body {
    margin-top: 2%

}
</style>
</head>
<body>
<div>
<%@include file="../header.jsp" %>
</div>
<hr>
<br>
<div>
<%@include file="csCenterSubMenu.jsp" %>
</div>
<div>

<div class="container">
	<div class="row">
		<div class="col-md-9" >
	<div class=".col-md-8" style="margin-left:200px; display: inline-block; width: 100%; ">	
	<h3 align="center">공지사항</h3>
	<br><br>
<table class="table table-list-search" style="margin: 0px auto;"> 
<thead>
<tr>
   <th>번호</th>
   <th>제목</th>
   <th>작성자</th>
   <th>작성일</th>
   <th>조회수</th>
</tr>
</thead>
<tbody>
<c:if test="${empty list }">
<tr>
 <td colspan="5" align="center">작성된 글이 없습니다.</td>
</tr>
 </c:if>

<c:forEach var="notice" items="${list }">

<tr>
 <td>${notice.idx }</td>
 <c:url var="noticeContent" value="noticeContent.do">
 <c:param name="idx">${notice.idx }</c:param>
 </c:url>
 <td><a href="${noticeContent}">${notice.subject}</a></td>
 <td>${notice.writer }</td>
 <td>${notice.writedate }</td>
 <td>${notice.readnum }</td>
</tr>
 </c:forEach>
</tbody>
<tfoot>
<tr>
 <td colspan="5" align="center">${pageStr }</td>
 </tr>
 </tfoot>
</table>
</div>
		</div>
	</div>
</div>
</div>
<hr>
풋부분
</body>
</html>