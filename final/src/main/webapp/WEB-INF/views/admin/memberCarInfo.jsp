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
					<th>이름</th><!-- driver -->
					<th>아이디</th><!-- id -->
					<th>차종</th><!-- cartype -->
					<th>차번호</th><!-- carnum -->
					<th>승인</th> <!-- confirm -->
					<th>비고(승인취소)</th>
				</tr>
			</thead>
			<tbody>
			<c:if test="${empty lists}">
				<tr>
					<td colspan="7" align="center">
						등록된 차량 정보가 없습니다.
					</td>
				</tr>
			</c:if>
			<c:forEach var="list" items="${lists}">
				<tr>
					<td>${list.idx}</td>
					<td>${list.driver}</td>
					<td>${list.id}</td>
					<td>${list.cartype}</td>
					<td>${list.carnum}</td>
					<td>${list.confirm}</td>
					<td>승인만들기</td>
				</tr>
			</c:forEach>
				
			</tbody>
			<tfoot>
				<tr>
					<td colspan="7" align="center">
						${pageStr}
					</td>
				</tr>
			</tfoot>
		</table>
	</article>
</section>
<footer>풋</footer>
</body>
</html>