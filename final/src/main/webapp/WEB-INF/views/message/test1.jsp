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
function messageDel(){
	var param="?idx="+idx;
	window.open('messageDel.do'+param,'messageDel','width=500 height=400 left=500 top=200');

}
</script>
<body>
<%@include file="../header.jsp" %>
<h2>${messageNumber }</h2>
<table border="1" cellspacing="0" width="800" height="150" >
			<thead>
			
				<tr>
					<th>번호</th>
					<th>보내는사람</th>
					<th>받는사람</th>
					<th>내용</th>
					<th>보낸날짜</th>
					<th>수신확인</th>
					<th>비고</th>
				</tr>
				
			</thead>
			<tbody>
			<c:if test="${empty list}">
					<tr>
						<td colspan="7" align="center">쪽지함이 비었습니다.</td>
					</tr>
				</c:if>
				<c:forEach var="list" items="${list}">
				<tr>
					<td>${list.idx }</td>
					<c:url var="messageContent" value="messageContent.do">
          <c:param name="idx">${list.idx }</c:param>
                  </c:url>
					<td>${list.sendid }</td>
					<td>${list.receiveid }</td>
					<td><a href="javascript: window.open('${messageContent }','messageContent','width=500 height=400')">${list.content}</a></td>
				
					<td>${list.senddate }</td>
					<td>${list.reading}</td>
					<td><input type="button" value="글삭제" onclick="javascript:idx='${list.idx}';messageDel();"></td>
				</tr>
				</c:forEach>
			</tbody>
			
			<tfoot>
				<tr>
				<td colspan="7" align="center">
						${pageStr}
					</td>
				</tr>
			</tfoot>
		</table>
</body>
</html>