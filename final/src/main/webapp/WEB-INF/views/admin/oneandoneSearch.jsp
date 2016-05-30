<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<script>
var idx=null;
function oneandoneDelForm(){
	var param="?idx="+idx;
	window.open('oneandoneDelete.do'+param,'oneandoneDelForm','width=500 height=400 left=500 top=200');
}
</script>
<div>
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
</div>