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
function adminDriverReserveDel(){
	var param="?idx="+idx;
	window.open('adminDriverReserveDel.do'+param,'adminDriverReserveDel','width=500 height=400 left=500 top=200');
}
</script>
<body>
<div>헤더</div>
<%@include file="../header.jsp" %>
<%@include file="../adHeader.jsp" %>
<h2>예약 및 결제관리</h2>
<h3>드라이버예약</h3>
<a href="driverReserveList.do">1.드라이버예약</a> | <a href="memberReserveList.do">2.사용자예약</a> |<a href="payMentList.do">3.결제관리</a>
<section>
	<article>
		<table border="1" cellspacing="0" width="800" height="150" >
			<thead>
			
				<tr>
					<th>번호</th>
					<th>예약글번호</th>
					<th>드라이버아이디</th>
					<th>구하는인원</th>
					<th>현재인원</th>
					<th>모집상태</th>
					<th>요청회원들</th>
					<th>수락한멤버들</th>
					<th>요청한인원수</th>
					<th>비고</th>
				</tr>
				
			</thead>
			<tbody>
			<c:if test="${empty list}">
					<tr>
						<td colspan="10" align="center">등록된 드라이버 카풀이 없습니다.</td>
					</tr>
				</c:if>
				<c:forEach var="list" items="${list}">
				<tr>
					<td>${list.idx }</td>
					<c:url var="aimidxContent" value="adminAimidxContent.do">
          <c:param name="idx">${list.aimidx }</c:param>
          </c:url>
					<td><a href="${aimidxContent}" >${list.aimidx }</a></td>
					<td>${list.masterid }</td>
					<td>${list.mans }</td>
					<td>${list.nowmans }</td>
					<td>${list.status }</td>
					<td>${list.members }</td>
					<td>${list.inmembers }</td>
					<td>${list.reqcount}</td>
					<td><input type="button" value="글삭제" onclick="javascript:idx='${list.idx}';adminDriverReserveDel();"></td>
				</tr>
				</c:forEach>
			</tbody>
			
			<tfoot>
				<tr>
				<td colspan="10" align="center">
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