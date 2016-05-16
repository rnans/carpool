<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="httpRequest.js"></script>
<script type="text/javascript">
	function show(){
		var name = document.f.name.value;
		var params = 'name='+name;
		sendRequest('hello.jsp', params, showResult, 'GET');
	}
	
	function showResult(){
		if(XHR.readyState==4){
			if(XHR.status==200){
				var tx = XHR.responseText;
				window.alert(tx);
			}
		}
	}
</script>
</head>
<body>
	<h1 align="center">아작스테스트</h1>
	<hr>
	<form name="f">
		이름 : <input type="text" name="name">
		<input type="button" value="아작스테스트" onclick="show()">
	</form>
</body>
</html>