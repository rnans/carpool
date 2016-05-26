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
<%@ include file="../header.jsp" %>
<%@ include file="poolSubmenu.jsp" %>
<section>
<article>
<h1>예약 진행 상황 보기</h1>
<div id="tab">
<a href="ownMasterPoolList.do">파티 오너</a>
<a href="ownMemberPoolList.do">파티 멤버</a>
<a href="poolMasReqList.do">파티 참여 멤버 관리</a>
</div>
<h2>내가 한 요청 목록</h2>
<div>
<table>
	<thead>
		<tr>
			<th>번호</th>
			<th>예약상태</th>
			<th>비고</th>
		</tr>
	</thead>
	<tbody>
<c:if test="${empty memlist }">
<tr>
 <td colspan="3" align="center">나에게 들어온 요청이 없습니다.</td>
</tr>
 </c:if>
		
<c:forEach var="dtos" items="${memlist }">

<tr>
 <td>${dtos.idx }</td>
 <td>${dtos.status}</a></td>
 <td><input type="button" value="수정" onclick="editReq()"><input type="button" value="취소" onclick="delReq()"></td>
</tr>
 </c:forEach>
</tbody>
<tfoot>
<tr>
 <td colspan="3" align="center">${pageStr }</td>
 </tr>
 </tfoot>
</table>
</div>
</article>
</section>
</body>
</html>