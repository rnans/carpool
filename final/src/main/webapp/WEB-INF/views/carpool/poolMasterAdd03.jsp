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
		<form name="location" action="poolMasterAdd04.do">
		카풀명:<input type="text" name="carPoolName" value="카풀 01"> 
		<br>
		목적:<input type="text" name="object"> ex)출/퇴근,여행
		<br>
		출발지:<input type="text" name="startAddr" value="강남역"><br>
		경유지:<input type="text" name="passAddr" value="역삼역"><br>
		목적지:<input type="text" name="endAddr" value="선릉역"><br>
	
		<p>
			<input type="button" value="취소" onclick="poolAdd.do">  
			<input type="submit" value="다음"> 
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