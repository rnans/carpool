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
<script>
/* function sendWithParam()
{
	var param ='?';
	
	param+='type='+document.getElementById('type').value+'&';
	param+='startspot='+document.getElementById('ss').value+'&';
	param+='route='+document.getElementById('r').value+'&';
	param+='endspot='+document.getElementById('es').value;
	
	location.href='poolMemberAdd03.do'+param;
	
} */
</script>
</head>
<body>
<h2>카풀등록 페이지4</h2>
	<div id="div1">
		<h3>카풀등록</h3>
	</div>
	
	<div id="div2">
		<form name="geoInfo" action="poolMemberAdd03.do">
	
		유형><select id="type" name="aim">
			<option value="출/퇴근">출/퇴근</option>
			<option value="드라이브">드라이브</option>
			<option value="좋은 만남">좋은만남</option>
			<option value="명절">명절</option>
		  </select><br>
		출발지><input type="text" id="ss" name="startspot"><br>
		경유지><input type="text" id="r" name="route"><br>
		목적지><input type="text" id="es" name="endspot"><br>
	
		<p>
			<input type="button" name="back" value="이전" onclick="location.href='poolMemberAdd.do'">
			<input type="submit" name="next" value="다음">
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