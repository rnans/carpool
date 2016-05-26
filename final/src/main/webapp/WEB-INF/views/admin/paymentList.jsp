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
<h3>결제관리</h3>
<a href="driverReserveList.do">1.드라이버예약</a> | <a href="memberReserveList.do">2.사용자예약</a> |<a href="payMentList.do">3.결제관리</a>

<section>
	<article>
		<table border="1" cellspacing="0" width="500">
			<thead>
				<tr>
					<th>구분</th>
					<th>결제자</th>
					<th>결제방법</th>
					<th>금액</th>
					<th>결제내용</th>
					<th>결제취소</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td></td>
				</tr>
			</tbody>
			<tfoot>
				<tr>
				
				</tr>
			</tfoot>
		</table>
	</article>
</section>
<footer>풋</footer>
</body>
</html>