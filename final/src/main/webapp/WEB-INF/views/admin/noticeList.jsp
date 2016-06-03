<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
var idx=null;
function noticeDelForm(){
	var param="?idx="+idx;
	window.open('noticeDelete.do'+param,'noticeDelForm','width=500 height=400 left=500 top=200');
}
</script>
<body>
<div>헤더
<%@include file="../header.jsp" %>
</div>
<div>메뉴바
<%@include file="../adHeader.jsp" %>
</div>
<div>중간메뉴바
<h2>고객센터관리</h2>
<a href="adminNoticeList.do">1.공지사항</a> |<a href="adminQnaList.do">2.Q&A</a> |<a href="adminOneAndOne.do">3.1:1문의</a> |<a href="adminuseguideList.do">4.이용안내</a>
<h4>공지사항</h4>
</div>

<div>
<table border="1" width="800" height="150" >
<thead>
<tr>
   <th>번호</th>
   <th>작성자</th>
   <th>제목</th>
   <th>작성일</th>
   <th>비고</th>
</tr>
</thead>
<tbody>
<c:if test="${empty list }">
<tr class="even">
 <td colspan="5" align="center">작성된 글이 없습니다.</td>
</tr>
 </c:if>

<c:forEach var="notice" items="${list }">

<tr>
 <td>${notice.idx }</td>
  <td>${notice.writer }</td>
 <c:url var="noticeContent" value="NoticeUpdate.do">
 <c:param name="idx">${notice.idx }</c:param>
 </c:url>
 <td><a href="${noticeContent}">${notice.subject}</a></td>
 <td>${notice.writedate }</td>
 <td><input type="button" value="글삭제" onclick="javascript:idx='${notice.idx}';noticeDelForm();"></td>
 
</tr>
 </c:forEach>
</tbody>
<tfoot>
<tr  class="even">
 <td colspan="5" align="center">${pageStr }</td>
 </tr>
 </tfoot>
</table>
<a href="noticeWriteForm.do">글쓰기</a>
</div>
<hr>
<footer>푸터</footer>
</body>
</html>