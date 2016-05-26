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
function memberCarDelForm(){
	var param = "?idx="+idx;
	window.open('memberCarDelForm.do'+param,'memberCarDelForm','width=500 height=400 left=500 top=200');
}
</script>
<script>
var idx = null;
function memberCarOkForm(){
	var param = "?idx="+idx;
	window.open('memberCarOkForm.do'+param, 'memberCarOkForm','width=500 height=400 left=500 top=200');
}
</script>
</head>
<body>
<div>헤더</div>
<%@include file="../adHeader.jsp" %>
<section>
	<article>
		<table border="1" cellspacing="0" width="700">
			<thead>
				<tr>
					<th>구분</th>
					<th>이름</th><!-- driver -->
					<th>아이디</th><!-- id -->
					<th>차종</th><!-- cartype -->
					<th>차번호</th><!-- carnum -->
					<th>승인여부</th> <!-- confirm -->
					<th>승인</th>
					<th>삭제</th>
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
					<td>
						<input type="button" value="승인" onclick="javascript:idx='${list.idx}';memberCarOkForm();">
					</td>
					<td>
						<input type="button" value="삭제" onclick="javascript:idx='${list.idx}';memberCarDelForm();">
					</td>
				</tr>
			</c:forEach>
				
			</tbody>
			<tfoot>
				<tr>
					<td colspan="8" align="center">
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