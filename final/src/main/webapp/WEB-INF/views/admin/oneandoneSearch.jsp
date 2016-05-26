<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
var idx=null;
function oneandoneDelForm(){
	var param="?idx="+idx;
	window.open('oneandoneDelete.do'+param,'oneandoneDelForm','width=500 height=400 left=500 top=200');
}
</script>
<body>
<%@include file="../header.jsp" %>
<%@include file="../adHeader.jsp" %>
<div>헤더부분 </div>
<hr>
<section>
<h2>고객센터관리</h2>
<a href="adminNoticeList.do">1.공지사항</a> |<a href="adminQnaList.do">2.Q&A</a> |<a href="adminOneAndOne.do">3.1:1문의</a> |<a href="adminuseguideList.do">4.이용안내</a>
<h4>1:1문의내역</h4>
</section>

<section>

<table border="1">
<thead>
<tr>
   <th>번호</th>
   <th>작성자</th>
   <th>문의유형</th>
   <th>제목</th>
   <th>작성일</th>
   <th>답변현황</th>
   <th>비고</th>
</tr>
</thead>
<tbody>
<c:if test="${empty list }">
<tr>
 <td colspan="7" align="center">작성된 글이 없습니다.</td>
</tr>
 </c:if>

<c:forEach var="oneandone" items="${list}">
<tr>
 <td>${oneandone.idx }</td>
 <c:url var="oneandoneAnswer" value="oneandoneAnswer.do">
 <c:param name="idx">${oneandone.idx }</c:param>
 </c:url>
 <td>${oneandone.writer }</td>
 <td>${oneandone.type }</td>
 <td><a href="${oneandoneAnswer}">${oneandone.subject}</a></td>
 <td>${oneandone.writedate }</td>
 <td>${oneandone.state }</td>
 <td> <input type="button" value="글삭제" onclick="javascript:idx='${oneandone.idx}';oneandoneDelForm();"></td>
 
</tr>
 </c:forEach>
</tbody>
<tfoot>
<tr>
 <td colspan="7" align="center">${pageStr }</td>
 </tr>
 </tfoot>
</table>
</section>
<hr>
풋부분
</body>
</html>