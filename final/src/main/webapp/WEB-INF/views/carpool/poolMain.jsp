<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>
html, body { height: 100%; width: 100%; margin: 0; padding: 0; }
#map { height: 500px; width: 100%; }
input[type='text']
{
	width: 80%;
}
</style>
<meta charset="UTF-8">
<title>카풀 서비스 메인 페이지</title>
</head>
<body>
<%@ include file="../header.jsp" %>
<%@ include file="poolSubmenu.jsp" %>
<section>
<c:import url="poolList.do"></c:import>
</section>
</body>
</html>