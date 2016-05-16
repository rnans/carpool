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
	 sendRequest('getNotice.jsp', null, showResult, 'GET');
 }
 function showResult(){
	 if(XHR.readyState==4){
		 if(XHR.status==200){
			 var result=XHR.responseText;
			 var div=document.getElementById('notices');
			 div.innerHTML=result;
		 }
	 }
	 
 }
</script>
</head>
<body>
<div id="notices"> </div>
<input type="button" value="공지사항보기" onclick="show()">
</body>
</html>