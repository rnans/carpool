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
<c:forEach var="list" items="${lists}">

<img style="width:400px;height:400px;" src="http://localhost:9090/final02/img/${list.filename}" alt="프로필사진"/>
<span id="my"></span>
</c:forEach> 

</body>
</html>