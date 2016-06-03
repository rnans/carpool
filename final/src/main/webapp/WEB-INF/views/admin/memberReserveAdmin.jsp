<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
var idx=null;
function adminMemberReserveDel(){
	var param="?idx="+idx;
	window.open('adminMemberReserveDel.do'+param,'adminMemberReserveDel','width=500 height=400 left=500 top=200');
}
</script>
<body>
<div>헤더
<%@include file="../header.jsp" %>
</div>
<div>메뉴바
<%@include file="../adHeader.jsp" %>
</div>
<div>중간메뉴바
<h2>예약 및 결제관리</h2>
<h3>사용자예약</h3>
<a href="driverReserveList.do">1.드라이버예약</a> | <a href="memberReserveList.do">2.사용자예약</a> |<a href="payMentList.do">3.결제관리</a>
</div>
<div>
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
					<tr class="even">
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
					<td><input type="button" value="글삭제" onclick="javascript:idx='${list.idx}';adminMemberReserveDel();"></td>
				</tr>
			</c:forEach>
			</tbody>
			<tfoot>
				<tr  class="even">
					<td colspan="7" align="center">
						${pageStr}
						</td>
				</tr>
			</tfoot>
		</table>
</div>
<footer>풋</footer>
</body>
</html>