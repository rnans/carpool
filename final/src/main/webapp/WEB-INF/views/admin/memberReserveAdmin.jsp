<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>헤더</div>
<%@include file="../header.jsp" %>
<%@include file="../adHeader.jsp" %>
<h2>예약 및 결제관리</h2>
<h3>사용자예약</h3>
<a href="driverReserveList.do">1.드라이버예약</a> | <a href="memberReserveList.do">2.사용자예약</a> |<a href="payMentList.do">3.결제관리</a>
<section>
	<article>
		<table border="1" cellspacing="0" width="800" height="150" >
			<thead>
				<tr>
					<th>번호</th>
					<th>참가자아이디</th>
					<th>작성글번호</th>
					<th>예약한드라이버글번호</th>
					<th>예약진행상태</th>
					<th>예약인원</th>
					<th>비고</th>
				</tr>
			</thead>
			<tbody>
			<c:if test="${empty list}">
					<tr>
						<td colspan="7" align="center">등록된 드라이버 카풀이 없습니다.</td>
					</tr>
				</c:if>
				<c:forEach var="list" items="${list}">
				<tr>
					<td>${list.idx }</td>
					<td>${list.memberid }</td>
					<td>${list.ownidx }</td>
					<td>${list.aimidx }</td>
					<td>${list.status }</td>
					<td>${list.mans }</td>
					<td>삭제</td>
				</tr>
			</c:forEach>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="7" align="center">
						${pageStr}
				</tr>
			</tfoot>
		</table>
	</article>
</section>
<footer>풋</footer>
</body>
</html>