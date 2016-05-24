<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#div1{
	float:left;
	width: 250px;
	height: 400px;
	border: 1px;
	margin: 5px;
	margin-left: 200px;
	
}
#div2{
	float:left;
	width: 800px;
	height: 250px;
	margin: 5px;
	margin-left:px;
	background-color:gray;
}
#div3{
	position:;
	float:left;
	width: 800px;
	height: 650px;
	margin-top: 5px;
	margin-left: 10px;
	background-color:;
	
}


</style>
<script>
function viewNextPage()
{
	var f=document.getElementById("form");
	var pc=document.getElementById("content");
	var type='${sessionScope.data.type}'
	
	if(type=='정기')
	{
		f.method='POST';
	}
	
	if(pc.value==null)
	{
		pc.value=" ";
	}
	f.submit();
	
}
</script>
</head>
<body>
<h2>카풀등록 페이지6</h2>

<form id="form" name="f" action="poolMasterAdd06.do" method="get">
	<div id="div1">
		<img src="1234.jpg" border="100"><br>
		<input type="button" name="pf" value="프로필사진수정" align="center">
	</div>
	
	<div id="div2">
	
	<table border="1">
		
			
				
	
			
		<tfoot>
			<tr>
				<th><textarea id="content" name="pluscontent" rows="5" cols="50"></textarea> </th>
				<td></td>
			</tr>
		</tfoot>
			
			<tbody>
			<tr>
				<th>출발지</th>
					<td>${sessionScope.data.startspot }</td>
					<th>경유지</th>
					<td>${sessionScope.data.route }</td>
					<th>도착지</th>
					<td>${sessionScope.data.endspot}</td>
			</tr>
				<tr>
					<th>목적</th>
					<td>${sessionScope.data.aim }</td>
				</tr>
				<tr>
					<th>인원</th>
					<td>${sessionScope.data.mannum }</td>
					<th>성별</th>
					<td>${sessionScope.data.gender }</td>
					<th>흡연</th>
					<td>${sessionScope.data.smoking }</td>
				</tr>
				<tr>
					<c:if test="${sessionScope.data.termtype eq '단기'}">	
					<th>출발일시</th>
					<td>${sessionScope.data.starttime}</td>
					</c:if>
					<c:if test="${sessionScope.data.termtype eq '정기'}">
					<th>출발일시</th>
					<td>${sessionScope.data.starttime}</td>
					<th>종료일시</th>
					<td>${sessionScope.data.enddate }</td>
					<th>반복</th>
					<td>${sessionScope.data.days }</td>
					</c:if>
				</tr>
			</tbody>
		</table>
	</div>
	
	<div id="div3">
		<legend>지도API</legend>
		<fieldset>
			<img src="123.jpg" border="200"><br>
		</fieldset>
	
			<p>
				<input type="button" value="이전">
				<input type="button" value="등록" onclick="viewNextPage()">
			</p>

	</div>
	</form>
</body>
</html>