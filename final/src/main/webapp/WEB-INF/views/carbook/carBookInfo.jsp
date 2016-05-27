<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="../header.jsp"%>
<script type="text/javascript" src="/final02/js/httpRequest.js"></script>
<script>

function show(){		
	var sel=document.getElementById('sel');
	
	var carnum=null;
	for(var i=0;i<sel.options.length;i++)
	{
		if(sel.options[i].selected)
		{
			carnum=sel.options[i].value;			
		}
	}		
	var params='carnum='+carnum
	sendRequest('carA.do', params, showResult, 'GET');
}

function showResult(){
	if(XHR.readyState==4){
		if(XHR.status==200){
			var result = XHR.responseText;
			costdiv.innerHTML=result;
		}
	}
}

function opencostReg(){
	
	var sel=document.getElementById('sel');
		
	var carnum=null;
	for(var i=0;i<sel.options.length;i++)
	{
		if(sel.options[i].selected)
		{
			carnum=sel.options[i].value;			
		}
	}		
	window.open('costReg.do?carnum='+carnum,'opencostReg','width=350,height=450');
	
}

</script>
<hr>
<div>
	<select id=sel name=carnum onchange="show()">
	<c:forEach var="carn" items="${cnum }" >
		<option value="${carn.carnum }">${carn.carnum}</option>
	</c:forEach>
	</select>
	<a href="javascript:opencostReg()">비용입력</a>
</div>

차량사진
<div id="costdiv">
<fieldset>
	<legend>차량정보</legend>
	<table border="1" width="400" height="100" >
	<thead>
	<tr>
	<th>기록시작일</th>
	<td><input type="text" name="날짜" value="날짜"></td>
	</tr>
		<c:set var="cost" value="${costsum}"/>
		<c:set var="km" value="${kmsum}" />
	
	<tr>
	<th>총 주행거리</th>
	<td>${km}km</td>
	</tr>
	<tr>
	<th>총 지출금액</th>
	<td>${cost}원</td>
	</tr>

	</thead>
</table>
</fieldset>

<fieldset>
	<legend>차계부</legend>
	<table border="1" width="400" height="100" >
	<tr>
		<th>날짜</th>
		<td></td>
	</tr>
		<c:set var="jooyu" value="${jooyusum}"/>
		<c:set var="jungbi" value="${jungbisum}"/>
		<c:set var="buy" value="${buysum}"/>
	<tr>
		<th>총 주유비용</th>
		<td>${jooyu }원</td>
	</tr>
	<tr>
		<th>총 정비비용</th>
		<td>${jungbi }원</td>
	</tr>
	<tr>
		<th>총 물품구입비용</th>
		<td>${buy }원</td>
	</tr>
	</table>
</fieldset>
</div>
</body>
</html>