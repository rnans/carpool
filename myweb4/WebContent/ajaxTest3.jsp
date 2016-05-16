<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
 function view(){
	 var p1=document.getElementById('p1');
   //window.alert(p1.innerHTML);
   p1.innerHTML='<h2 style="color:blue;">앗! 화면이바뀌네!</h2>';
   }
</script>
</head>
<body>
<p id="p1"><strong>Ajax</strong> 프로그래밍,<br>기초</p>
<input type="button" value="보기" onclick="view()">
</body>
</html>