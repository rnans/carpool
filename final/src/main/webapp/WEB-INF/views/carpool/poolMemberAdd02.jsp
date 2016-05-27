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
<script src="/final02/js/httpRequest.js"></script>
<script>
function createCORSRequest(method, url) {
	  var xhr = new XMLHttpRequest();
	  if ("withCredentials" in xhr) {

	    // Check if the XMLHttpRequest object has a "withCredentials" property.
	    // "withCredentials" only exists on XMLHTTPRequest2 objects.
	    xhr.open(method, url, true);

	  } else if (typeof XDomainRequest != "undefined") {

	    // Otherwise, check if XDomainRequest.
	    // XDomainRequest only exists in IE, and is IE's way of making CORS requests.
	    xhr = new XDomainRequest();
	    xhr.open(method, url);

	  } else {

	    // Otherwise, CORS is not supported by the browser.
	    xhr = null;

	  }
	  return xhr;
	}

	
function searchAddr()
{
	var input=document.getElementById('ss').value;
	
	url='https://maps.googleapis.com/maps/api/place/autocomplete/output';
	params='key=AIzaSyCJz53NRCX_RWtNSeoAbPveANaDjlQF1tU';
	params+='&types=address&input='+input;
	
	url=url+'?'+params;
	
	var xhr = createCORSRequest('GET', url);
	if (!xhr) {
	  throw new Error('CORS not supported');
	  window.alert('실패');
	}
	
	xhr.send();
	
	xhr.onload=function()
	{
		var text = xhr.responseText;
        var data = eval('('+text+')');
        
        var places=data.predictions;
   	 
        var list=document.getElementById('test');
        
        window.alert('성공'+places);
        
        list.innerHTML=places.description;
	}
	
}



</script>
</head>
<body>
<h2>카풀등록 페이지4</h2>
	<div id="div1">
		<h3>카풀등록</h3>
	</div>
	
	<div id="div2">
		<form name="geoInfo" action="poolMemberAdd03.do">
		<input type="hidden" name="pooltype" value="탈래요">
		유형<select id="type" name="aim">
			<option value="출/퇴근">출/퇴근</option>
			<option value="드라이브">드라이브</option>
			<option value="좋은 만남">좋은만남</option>
			<option value="명절">명절</option>
		  </select><br>
		출발지<input type="text" placeholder="출발지를 입력하세요." onkeyup="searchAddr()" id="ss" name="startspot"><br>
		<div id="test"></div>
		경유지<input type="text" placeholder="경유지를 입력하세요." onkeyup="searchAddr()" id="r" name="route"><br>
		목적지<input type="text" placeholder="목적지를 입력하세요." onekeyup="searchAddr()" id="es" name="endspot"><br>
	
		<p>
		<input id="tBt" type="button" value="test" onclick="searchAddr()"> 
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