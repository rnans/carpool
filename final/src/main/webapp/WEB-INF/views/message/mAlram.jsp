<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	.Mpart{width:400px; margin:0 auto;}
	.Mtpart{background-color: #efefef;}
</style>
</head>
<body>
	<div class="Mpart">
	<%-- <c:if test="${empty alram}">새로운 알림이 없습니다.</c:if> --%>
		<table class="Mtpart">
			
		
		<c:forEach var="m" items="${alram}">
			<tbody class="mView">
				<tr>
					<td>${m.sendid}</td>
					<td><a href="messageList.do">${m.content}</a></td>
				</tr>
			</tbody>
		</c:forEach>
		</table>
	</div>
</body>
</html>
