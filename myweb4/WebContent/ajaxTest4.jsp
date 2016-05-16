<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
window.onload=function(){
	printTime();
		
	}
	function printTime(){
		var now=new Date();
		var h=now.getHours();
		var m=now.getMinutes();
		var s=now.getSeconds();
		var str='<font color="red">'+h+'시'+m+'분'+s+'초</font>';
		var span=document.getElementById('clock');
		span.innerHTML=str;
		window.setTimeout('printTime()',1000 );
	}

</script>

</head>
<body>
현재시간은 <span id="clock"></span>입니다.
</body>
</html>