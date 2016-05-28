<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="js/httpRequest.js"></script>
<script>
var idx=null;
function adminDriverReserveDel(){
	var param="?idx="+idx;
	window.open('adminDriverReserveDel.do'+param,'adminDriverReserveDel','width=500 height=400 left=500 top=200');
}
function show(){
	var search=document.a.search.value;
	var select=document.a.select.value;
	
	var params='select='+select+'&search='+search;
	sendRequest('adminDriverReserveSearch.do', params, showResult, 'GET');
}

function showResult(){//응답결과함수
	if(XHR.readyState==4){
		if(XHR.status==200){
			var result=XHR.responseText;
			spans.innerHTML=result;
		}
	}
}
</script>
<body>
<div>헤더</div>
<%@include file="../header.jsp" %>
<%@include file="../adHeader.jsp" %>
<h2>예약 및 결제관리</h2>
<h3>드라이버예약</h3>
<a href="driverReserveList.do">1.드라이버예약</a> | <a href="memberReserveList.do">2.사용자예약</a> |<a href="payMentList.do">3.결제관리</a>
<form name="a" action="adminDriverReserveSearch.do">

<select name="select" id="select">
<option value="masterid">작성자</option>
<option value="status">예약상태</option>
<option value="aimidx">예약된 게시물 글번호</option>
 </select>
 <input type="text" id="search" name="search">
 <input type="button" value="검색" onclick="show()">
 </form>


<section>
	
	<div id="spans">
		<table border="1" cellspacing="0" width="800" height="150" >
			<thead>
			
				<tr>
					<th>번호</th>
					<th>예약된 게시물 글번호</th>
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
		</div>
</section>
<footer>풋</footer>
</body>
</html>