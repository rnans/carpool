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
	<c:forEach var="m" items="${lists}">
		보내는 사람: ${m.sendid}
		내용:${m.content}
		받은 시간 : ${m.senddate}
		읽음여부 : ${m.reading}
	</c:forEach>
</body>
</html>