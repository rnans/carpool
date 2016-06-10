<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.Mpart{width:400px;}
</style>
</head>
<body>
	<div class="Mpart">
	<c:if test="${empty lists}">새로운 알림이 없습니다.</c:if>
	<c:forEach var="m" items="${lists}">
		보낸사람:${m.sendid}
		내용:${m.content}<br>
	</c:forEach>
	</div>
</body>
</html>