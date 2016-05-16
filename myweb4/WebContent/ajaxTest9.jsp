<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문서구조</title>
<script>

	window.onload = function() {
		window.alert('문서구조 변경 시작!');
            
		
		var spanNode=document.createElement('span');
		spanNode.setAttribute('id','b');
		var spanText=document.createTextNode('새로만든 span태그');
	   
		spanNode.appendChild(spanText);
		
		var h1Node=document.getElementById('a');
		h1Node.appendChild(spanNode);
		window.alert('변경시도1!!');
		
		var pNode=document.createElement('p');
		var pText=document.createTextNode('새로만든p태그');
		
		pNode.appendChild(pText);
		
		var bodyNode=h1Node.parentNode;
		bodyNode.insertBefore('pNode', 'h1Node');
		window.alert('변경시도2!!');
		
		bodyNode.removeChild(h1Node);
		window.alert('변경시도3!!');
	}
</script>
</head>
<body>
<h1 id="a">제목입니다.</h1>
<form>form태그 영역입니다.</form>
</body>
</html>