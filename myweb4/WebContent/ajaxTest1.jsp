<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>

	function getXHR(){
		if(window.ActiveXObject){
			return new ActiveXObject("Msxml2.MXLHTTP");
		}else if(window.XMLHttpRequest){
			return new XMLHttpRequest();
		}else{
			return null;
		}
	}
	
	function show(){//요청함수
		var name=document.f.name.value;
		var param ='name='+name;
		XHR=getXHR();
		XHR.onreadystatechange=showResult;
		XHR.open('GET','hello.jsp?'+param,true);
		XHR.send(null);
		
	}
	function showResult(){//응답결과 함수.
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
	<h1 align="center">AJAX TEST~!!</h1>
	<hr>
	<form name="f">
	<input type="text" name="name">
	<input type="button" value="AjaxTest!" onclick="show()">
	</form>
	
</body>
</html>