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
<div>헤더</div>
<%@include file="../adHeader.jsp" %>
<section>	
	<article>
		<table border="1" cellspacing="0" width="500">
			<thead>
				<tr>
					<th>구분</th>
					<th>아이디</th>
					<th>실시간알람</th>
					<th>예약알람</th>
					<th>추천알람</th>
					<th>평가알람</th>
					<th>커뮤니티알람</th>
					<th>비고</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="dto" items="${lists}">
					<tr>
						<td>${dto.idx }</td>
						<td>${dto.userid }</td>
						<td>${dto.chat }</td>
						<td>${dto.reservation }</td>
						<td>${dto.recommand}</td>
						<td>${dto.rate}</td>
						<td>${dto.community}</td>
						<td></td>
					</tr>
				</c:forEach>
				
			</tbody>
			<tfoot>
				<tr>
					<td colspan="8" align="center">
					${pageStr }
					</td>
				</tr>
			</tfoot>
		</table>
	</article>
</section>
<footer>풋</footer>
</body>
</html>