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
	<img src="http://localhost:9090/final02/img/${uDTO.filename}">
		${sendid}<br>
	<c:forEach var="p" items="${lists}">
		${p.name}<br>
		${p.email}<br>
		${p.addr}
	</c:forEach>
</body>
</html>