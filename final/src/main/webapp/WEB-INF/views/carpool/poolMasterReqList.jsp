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
<h1>내가 개설한 파티 목록</h1>
<form name="selForm" action="reqToMember.do">
<table>
	<thead>
		<tr>
			<th>선택</th>
			<th>번호</th>
			<th>출발</th>
			<th>도착</th>
			<th>유형</th>
			<th>인원/금액</th>
		</tr>
	</thead>
	<tbody>
<c:if test="${empty list }">
<tr>
 <td colspan="6" align="center">개설된 파티가 없습니다.</td>
</tr>
 </c:if>
		
<c:forEach var="dtos" items="${list }">

<tr>
 <c:url var="poolEachContent" value="poolEachContent.do">
 <c:param name="idx">${dtos.idx }</c:param>
 </c:url>
 <td><input type="radio" id="ra{dtos.idx}" name="idx" value="${dtos.idx}"></td>
 <td>${dtos.idx }</td>
 <td><a href="${poolEachContent }">${dtos.startspot}</a></td>
 <td>${dtos.endspot }</td>
 <td>${dtos.termtype }</td>
 <td>${dtos.mannum }/${dtos.pay }</td>

</tr>
 </c:forEach>
</tbody>
<tfoot>
<tr>
 <td colspan="5" align="center">${pageStr }</td>
 </tr>
 </tfoot>
</table>
<input type="submit" value="선택 완료">
</form>
</body>
</html>