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
<h2>결제정보</h2>
	<div id="div2">
			<legend>회원결제정보</legend>
			<form name="myprofile">
				<table border="1" cellspacing="0" align="center">
					<thead>
						<tr>
							<th>aim</th>
							<th>endspot</th>
							<th>status</th>
							<th>pooltype</th>
							<th>termtype</th>
							<th>poolname</th>
							<th>caridx</th>
						</tr>	
					</thead>
				<tfoot>
					
				</tfoot>
					<tbody>
						<c:if test="${empty list}">
				<tr>
					<td colspan="7">등록된 결제정보가 없습니다.</td>
				</tr>
			</c:if>
			<c:forEach var="dto" items="${list }">
				<tr>
					<td>${dto.aim }</td>
					<td>${dto.endspot }</td>
					<td>${dto.status }</td>
					<td>${dto.pooltype}</td>
					<td>${dto.termtype}</td>
					<td>${dto.poolname }</td>
					<td>${dto.caridx }</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
				<p align="center">
					<a href="#"><1 2 3 4 5></a>
				</p>
			</form>
	</div>
</body>
</html>