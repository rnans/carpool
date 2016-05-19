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
</head>
<body>
<h2>카풀등록 페이지6</h2>
	<div id="div1">
		<img src="1234.jpg" border="100"><br>
		<input type="button" name="pf" value="프로필사진수정" align="center">
	</div>
	
	<div id="div2">
		<table border="1">
			<thead>
			
				<th>출발지></th>
				<td>경기도 안양시 달안동주민센터</td>
				<th>경유지></th>
				<td>경기도 과천시 중앙동</td>
				<th>도착지></th>
				<td>서울 특별시 서초구 강남대로</td>
			
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
					<td>출/퇴근</td>
				</tr>
				<tr>
					<th>인원></th>
					<td>2명</td>
					<th>흡연></th>
					<td>흡연</td>
				</tr>
				<tr>
					<th>출발일시></th>
					<td>16년02월29일 오전10시20분</td>
				</tr>
			</tbody>
		</table>
	</div>
	
	<div id="div3">
		<legend>지도API</legend>
		<fieldset>
			<img src="123.jpg" border="200"><br>
			출발지:<br>
			경유지:<br>
			도착지:<br>
		</fieldset>
		<form>
			<p>
				<input type="button" value="등록하기">
				<input type="button" value="이전화면">
			</p>
		</form>
	</div>

</body>
</html>