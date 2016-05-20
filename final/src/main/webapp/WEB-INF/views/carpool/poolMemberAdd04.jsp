<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
window.onload=function()
{
	
	window.alert(document.getElementById('t').value);
}
</script>
</head>
<body>
<h2>카풀등록 페이지6</h2>
	
	<div id="div1">
		<img src="1234.jpg" border="100"><br>
		<input type="button" name="pf" value="프로필사진수정" align="center">
	</div>
	
	<div id="div2">
	
	<input type="hidden" name="starttime" value="${starttime}">
	<input type="hidden" name="aim" value="${aim}">
	<input type="hidden" name="startspot" value="${startspot}">
	<input type="hidden" name="endspot" value="${endspot}">
	<input type="hidden" name="route" value="${route}"> 
	<input type="hidden" name="mannum" value="${mannum }">
	<input type="hidden" name="gender" value="${gender }">
		<table border="1">
			<thead>
			
				<th>출발지></th>
				<td>${startspot }</td>
				<th>경유지></th>
				<td>${route }</td>
				<th>도착지></th>
				<td>${endspot}</td>
			
			</thead>
			
		<tfoot>
			<tr>
				<th>비고</th>
				<td></td>
			</tr>
		</tfoot>
			
			<tbody>
				<tr>
					<th>목적></th>
					<td>${aim }</td>
				</tr>
				<tr>
					<th>인원></th>
					<td>${mannum }</td>
					<th>성별></th>
					<td>${gender }</td>
					<th>흡연></th>
					<td>${smoking }</td>
				</tr>
				<tr>
					<th>출발일시></th>
					<td>${starttime }</td>
				</tr>
			</tbody>
		</table>
	</div>
	
	<div id="div3">
		<legend>지도API</legend>
		<fieldset>
			<img src="123.jpg" border="200"><br>
		</fieldset>
		<form>
			<p>
				<input type="button" value="등록">
				<input type="button" value="이전">
			</p>
		</form>
	</div>

</body>
</html>