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
	background-color:gray;
}
#div2{
	float:left;
	width: 450px;
	height: 400px;
	margin: 5px;
	
}
#div3{
	float:left;
	width: 400px;
	height: 400px;
	margin: 5px;
	
}


</style>
</head>
<body>
<h2>카풀등록 페이지4</h2>
	<div id="div1">
		<h3>카풀등록</h3>
	</div>
	
	<div id="div2">
		<form name="f" action="#">
	
		유형><select>
			<option>출/퇴근</option>
			<option>드라이브</option>
			<option>좋은만남</option>
			<option>명절</option>
		  </select><br>
		출발지><input type="text" name="start"><br>
		경유지><input type="text" name="route"><br>
		목적지><input type="text" name="end"><br>
	
		<p>
			<input type="button" name="back" value="이전">
			<input type="button" name="next" value="다음">
		</p>
		</form>
	</div>
	
	<div id="div3">
		<legend>지도API</legend>
		<table width="500" height="400" border="1">
		</table>
	</div>

</body>
</html>