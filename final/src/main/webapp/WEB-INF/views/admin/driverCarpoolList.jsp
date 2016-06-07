<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.links {
  *zoom: 1;
  padding: 50px;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
    color: #797878;
  text-align: center;
}
.links:before, .links:after {
  content: "";
  display: table;
}
.links:after {
  clear: both;
}

.link-effect-3 a {
  padding: 10px 0;
  margin: 0 20px;
  color: #797878;
  text-shadow: none;
  position: relative;
}
.link-effect-3 a::before {
  position: absolute;
  top: 0;
  left: 0;
  overflow: hidden;
  padding: 10px 0;
  max-width: 0;
  border-bottom: 2px solid #fff;
  color: #fff;
  content: attr(data-hover);
  -webkit-transition: max-width 0.5s;
  -moz-transition: max-width 0.5s;
  transition: max-width 0.5s;
}
.link-effect-3 a:hover::before {
  max-width: 100%;
}
</style>
<script>
var idx = null;
function driverPoolDelForm(){
	var param = "?idx="+idx;
	window.open('driverPoolDelForm.do'+param,'driverPoolDelForm','width=500 height=400 left=500 top=200');
}
</script>
</head>
<body>
	<div>
		<%@include file="../header.jsp"%>
	</div>
	<%@include file="../adHeader.jsp" %>

	<div align="center"
		style="margin-left: 150px; margin-bottom: 10px; margin-top: 60px;">
		<h2 align="center">카풀게시물관리</h2>
		<h4 align="center">드라이버</h4>
		<div id="content" align="center">
			<section class="links">
				<nav class="link-effect-3" id="link-effect-3">
					<a href="driverPoolList.do" data-hover="1.드라이버">1.드라이버</a> 
					<a href="userPoolList.do" data-hover="2.사용자">2.사용자</a>
				</nav>
			</section>
		</div>
	</div>
	
	<div class="container" style="width: 100%; margin: 0px auto;">
		<table border="1" style="margin-left: 100px;">
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
					<tr  class="even">
						<td colspan="19" align="center">등록된 드라이버 카풀이 없습니다.</td>
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
						<td><button type="submit" class="uButton uButtonPoint"
									onclick="javascript:idx='${list.idx}';driverPoolDelForm();"
									style="background: #FF5A5A; min-width: 60px; line-height: 20px; margin: 0 3px; font-size: 13px; color: #fff; border: 0px;">
									글삭제</button></td>
				
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
</div>
<footer>풋</footer>
</html>