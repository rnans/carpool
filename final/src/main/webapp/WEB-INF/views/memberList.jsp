<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="./bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="./bootstrap/css/font-awesome.min.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
</head>
<body>
	현재 접속중 인원 : ${count}<br>
	<c:forEach var="l" items="${lists}">
		${l.userid}<br>
	</c:forEach>
</body>
</html>