<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<%@ include file="../header.jsp" %>
<%@ include file="poolSubmenu.jsp" %>
<div id="tab">
<a href="ownMasterPoolList.do">파티 오너</a>
<a href="ownMemberPoolList.do">파티 멤버</a>
<a href="poolMasReqList.do">파티 참여 멤버 관리</a>
</div>
<h2>(파티장) 나에게 들어온 요청 목록</h2>
<div>
<c:forEach var="dtos2" items="${maslist }">
<script>

function getInAll${dtos2.idx}()
{
	var idx='${dtos2.idx}';
	location.href='accAll.do?idx='+idx;
}
</script>
</c:forEach>
<table>
	<thead>
		<tr>
			<th>번호</th>
			<th>요청 수/총 인원</th>
			<th>현재 인원/총 인원</th>
			<th>상태</th>
		</tr>
		</thead>
	<tbody>
<c:if test="${empty maslist }">
<tr>
 <td colspan="4" align="center">나에게 들어온 요청이 없습니다.</td>
</tr>
 </c:if>
		
<c:forEach var="dtos2" items="${maslist }">

<tr>
 <td>${dtos2.idx }</td>
 <td>${dtos2.reqcount}/${dtos2.mans }</td>
 <td>${dtos2.nowmans }/${dtos2.mans }</td>
 <td><input type="button" id="${dtos2.idx }"value="모두승인" onclick="getInAll${dtos2.idx}()"></td>
</tr>
<tr>
  <th>요청한 멤버들 ${dtos2.members }</th>
  <td>멤버 목록 ${dtos2.inmembers }<input type="button" value="승인" onclick="getInMem()"></td>
</tr>
<tr>
  <th>승인된 멤버들</th>
  <td>멤버 목록 <input type="button" value="탈퇴" onclick="getOutMem()"></td>
</tr>
 </c:forEach>
</tbody>
<tfoot>
<tr>
 <td colspan="5" align="center">${pageStr2 }</td>
 </tr>
 </tfoot>
</table>
</div>
</body>
</html>