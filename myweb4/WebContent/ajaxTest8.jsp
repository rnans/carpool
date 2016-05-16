<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
window.onload=function(){
	window.alert('속성테스트');
	var fontTag=document.getElementById('fon');
	
	fontTag.setAttribute('color', 'green');
	window.alert('값변경완료');
	
	fontTag.setAttribute('color', 'red');
	window.alert('값변경완료!');
	
	var idvalue=fontTag.getAttribute('id');
	window.alert('font태그의 아이디'+idvalue);
	
	fontTag.removeAttribute('color');
	window.alert('속성삭제');
	
}
</script>
</head>
<body>
<h1><font id="fon">elements인터페이스 속성 테스트</font></h1>
</body>
</html>