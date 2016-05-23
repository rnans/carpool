<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
var idx=null;
function memberDelForm(){
	var param="?idx="+idx;
	window.open('memberDelForm.do'+param,'memberDelForm','width=500 height=400 left=500 top=200');
}
function adminAddForm(){
	var param="?idx="+idx;
	window.open('adminAddForm.do'+param,'adminAddForm','width=500 height=400 left=500 top=200');
}
</script>
</head>
<body>
<div>헤더</div>
<%@include file="../adHeader.jsp" %>
<section>
	<article>
		<table border="1" cellspacing="0" width="800">
			<thead>
				<tr>
					<th>구분</th>
					<th>이름</th>
					<th>아이디</th>
					<th>지역</th>
					<th>연락처</th>
					<th>이메일</th>
					<th>성별</th>	
					<th>등급</th>
					<th>비고(승인)</th>
					<th>등급</th>
					<th>탈퇴</th>
				</tr>
			</thead>
			<!-- for문으로 돌리기. 탈퇴는 버튼으로 만들기 -->
			<tbody>
				<c:set var="memberList" value="${lists}"></c:set>
				<c:if test="${empty memberList}">
					<tr>
						<td colspan="11">등록된 회원이 없습니다.</td>
					</tr>
				</c:if>
				<c:forEach var="list" items="${lists}" >
					<tr>
						<td>${list.idx}</td>
						<c:url var="memberDelUrl" value="memberDelForm.do">
							<c:param name="idx">${list.idx}</c:param>
						</c:url>
						<td>${list.name}</td>
						<td>${list.id}</td>
						<td>${list.addr }</td>
						<td>${list.phonenum }</td>
						<td>${list.email }</td>
						<td>${list.sex }</td>
						<td>${list.grade}</td>
						<td>
							비고
						</td>
						<td>
							<input type="button" value="등급조정" onclick="javascript:idx='${list.idx}';adminAddForm();">
						</td>
						<td>
							<input type="button" value="탈퇴시키기" onclick="javascript:idx='${list.idx}';memberDelForm();">
						</td>
					</tr>
				</c:forEach>
				
			</tbody>
			<tfoot>
				<tr>
					<td colspan="11" align="center">페이징</td>
				</tr>
			</tfoot>
		</table>
	</article>
</section>
<footer>풋</footer>
</body>
</html>