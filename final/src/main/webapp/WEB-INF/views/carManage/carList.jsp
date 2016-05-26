<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<fieldset>
		<legend>차량관리</legend>
		<table border="1">
			<tr>
				<th>운전자</th>
				<th>차량번호</th>
				<th>차량종류</th>
				<th>인증여부</th>
				<th>관리</th>
			</tr>
			<c:if test="${empty list}">
				<tr>
					<td colspan="6">등록된 차량이 없습니다.</td>
				</tr>
			</c:if>
			<c:forEach var="dto" items="${list }">
			
				<tr>
					<td>${dto.driver }</td>
					<td>${dto.carnum }</td>
					<td>${dto.cartype }</td>
					<td>${dto.confirm }된 차량입니다.</td>
					
					<td colspan="2">
					<form action="carUpdate.do">
					<input type="hidden" name="idx" value="${dto.idx}">
					<input type="submit" value="수정">
					</form>
					<form action="carDel.do">
					<input type="hidden" name="idx" value="${dto.idx}">
					<input type="submit" value="삭제">
					</form>
					</td>
					
				</tr>
				
			</c:forEach>
			<tr>
			<td colspan="6" align="right"><input type="button" value="등록" onclick="location.href='carAdd.do'"></td>
			</tr>

		</table>
	</fieldset>
</body>
</html>