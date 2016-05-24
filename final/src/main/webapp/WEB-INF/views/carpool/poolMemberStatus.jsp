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
<h1>내가 작성한 탈게요 글 목록</h1>
<table>
	<thead>
		<tr>
			<th>프로필</th>
			<th>출발</th>
			<th>도착</th>
			<th>유형</th>
			<th>인원/금액</th>
			<th>수정/삭제</th>
		</tr>
	</thead>
	<tbody>
<c:if test="${empty list }">
<tr>
 <td colspan="6" align="center">작성된 글이 없습니다.</td>
</tr>
 </c:if>
		
<c:forEach var="dtos" items="${list }">

<tr>
 <c:url var="poolEachContent" value="poolEachContent.do">
 <c:param name="idx">${dtos.idx }</c:param>
 </c:url>

 <td>${dtos.idx }</td>
 <td>${dtos.startspot}</a></td>
 <td>${dtos.endspot }</td>
 <td>${dtos.type }</td>
 <td>${dtos.mannum }/${dtos.pay }</td>
 <td><a href="">수정</a> <a href="">삭제</a></td>
</tr>
 </c:forEach>
</tbody>
<tfoot>
<tr>
 <td colspan="5" align="center">${pageStr }</td>
 </tr>
 </tfoot>
</table>
</body>
</html>