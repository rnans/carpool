<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<table border="1" width="600" height="100">
			<thead>
				<tr>
					<th>유형</th>
					<th>날짜</th>
					<th>비고</th>
					<th>금액</th>
					<th>주행거리</th>
					<th>수정</th>
					<th>삭제</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="list" items="${list}">
					<tr>
						<td>${list.category}</td>
						<td>${list.costday}</td>
						<td>${list.bigo}</td>
						<td>${list.cost}원</td>
						<td>${list.km}km</td>
						<td><input type="button" value="수정"
							onclick="javascript:idx='${list.idx}';update();"></td>
						<td><input type="button" value="삭제"
							onclick="javascript:idx='${list.idx}';costDel();"></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>