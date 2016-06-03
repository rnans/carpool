<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
var idx = null;
function userPoolDelForm(){
	var param = "?idx="+idx;
	window.open('userPoolDelForm.do'+param,'userPoolDelForm','width=500 height=400 left=500 top=200');
}
</script>
</head>
<body>
<div>헤더</div>
<%@include file="../adHeader.jsp" %>
<section>
	<article><!-- 이용자 카풀 등록 목록보기 -->
		<table border="1" cellspacing="0" width="1000">
			<thead>
				<tr>
					<th>구분</th> <!-- idx -->
					<th>아이디</th> <!-- userid -->
					<th>카풀명</th> <!-- poolname -->
					<th>목적</th> <!-- aim -->
					<th>단기/장기</th> <!-- termtype -->
					<th>성별</th><!-- gender -->
					<th>출발지</th> <!-- startspot -->
					<th>경유지</th> <!-- route -->
					<th>도착지</th> <!-- endspot -->
					<th>출발시간</th> <!-- starttime -->
					<th>정기시작일</th> <!-- startdate -->
					<th>정기종료일</th> <!-- enddate -->
					<th>정기요일</th> <!-- days -->
					<th>인원수</th> <!-- mannum -->
					<th>요금</th> <!-- pay -->
					<th>예약현황</th> <!-- status -->
					<th>흡연여부</th> <!-- smoking -->
					<th>추가내용</th> <!-- pluscontent -->
					<th>등록일</th> <!-- writedate -->
					<th>예약취소</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${empty lists}">
					<tr class="even">
						<td colspan="19" align="center">등록된 이용자 카풀이 없습니다.</td>
					</tr>
				</c:if>
				<c:forEach var="list" items="${lists}">
				<tr>
					<td>${list.idx}</td>
					<td>${list.userid}</td>
					<td>${list.poolname}</td>
					<td>${list.aim}</td>
					<td>${list.termtype}</td>
					<td>${list.gender}</td>
					<td>${list.startspot}</td>
					<td>${list.route}</td>
					<td>${list.endspot}</td>
					<td>${list.starttime}</td>
					<td>${list.startdate}</td>
					<td>${list.enddate}</td>
					<td>${list.days}</td>
					<td>${list.mannum}</td>
					<td>${list.pay}</td>
					<td>${list.status}</td>
					<td>${list.smoking}</td>
					<td>${list.pluscontent}</td>
					<td>${list.writedate}</td>
					<td>
						<input type="button" value="카풀삭제" onclick="javascript:idx='${list.idx}';userPoolDelForm();">
					</td>
				</tr>
				</c:forEach>
				
			</tbody>
			<tfoot>
				<tr  class="even">
					<td colspan="20" align="center">
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