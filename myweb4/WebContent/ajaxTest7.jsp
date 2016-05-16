<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
window.onload=function(){
	window.alert('DomTestStart!');
/*	
	var rootNode=document.documentElement;
	window.alert(rootNode.nodeName);
	
	var bodyNode=rootNode.lastChild;
	window.alert(bodyNode.nodeName);
	
	var span1=bodyNode.firstChild;
	window.alert(span1.nodeName);
	
	
	
	var p1=span1.nextSibling;
	window.alert(p1.nodeName);
	
	var span2=p1.lastChild;
	window.alert(span2.nodeName);
	
	var span3=span2.lastChild;
	window.alert(span3.nodeValue);
	
	var div=p1.nextSibling;
	window.alert(div.nodeName);
	
	var p2=div.firstChild;
	window.alert(p2.nodeName);
	
	var span4=div.lastChild;
	window.alert(span4.nodeName);
	
	var span5=div.lastChild;
	window.alert(span5.nodeValue);
	*/
	
	var spanTag=document.getElementById('b');
	var bData=spanTag.lastChild;
	window.alert(bData.nodeValue);
	
}
</script>
</head>
<body><span id="a">a</span>
 <p>test<span id="b">b</span></p>
 <div><p>p</p><span id="c">c</span></div>
  <div id="debugConsole" style="border:1px solid #000"></div>
</body>
</html>