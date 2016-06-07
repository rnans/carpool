
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
<div>
<%@include file="../header.jsp" %>
</div>
<%@include file="../adHeader.jsp" %>

	<div align="center"
		style="margin-left: 150px; margin-bottom: 10px; margin-top: 60px;">
		<h2 align="center">회원관리</h2>
		<h4 align="center">회원차량관리</h4>
		<div id="content" align="center">
			<section class="links">
				<nav class="link-effect-3" id="link-effect-3">
					<a href="memberInfo.do" data-hover="1.회원정보관리">1.회원정보관리</a> <a
						href="memberCarInfo.do" data-hover="2.회원차량관리">2.회원차량관리</a> <a
						href="memberAlarm.do" data-hover="3.회원알림관리">3.회원알림관리</a>
				</nav>
			</section>
		</div>
	</div>

	<div class="container" style="width: 100%; margin: 0px auto;">

		<table border="1" style="margin-left: 190px; margin-top: 0px;">
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
				<tr class="even">
					<td colspan="8" align="center">
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
							<td><input type="button" value="승인"
								onclick="javascript:idx='${list.idx}';memberCarOkForm();">
							</td>
							<td><button type="submit" class="uButton uButtonPoint"
									onclick="javascript:idx='${list.idx}';memberCarDelForm();"
									style="background: #FF5A5A; min-width: 60px; line-height: 20px; margin: 0 3px; font-size: 13px; color: #fff; border: 0px;">
									삭제</button></td>
						</tr>


					</c:forEach>
				
			</tbody>
			<tfoot>
				<tr class="even">
					<td colspan="8" align="center">
						${pageStr}
					</td>
				</tr>
			</tfoot>
		</table>
</div>
<footer>풋</footer>
</body>
</html>