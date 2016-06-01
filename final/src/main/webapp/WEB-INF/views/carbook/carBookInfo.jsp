<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="./bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
<style>
#costdiv td{
	width: 50%;
}
</style>
</head>
<body>

<%@include file="../header.jsp"%>
<script type="text/javascript" src="/final02/js/httpRequest.js"></script>
<script>
window.onload=function(){
	for (var i = 0; i < sel.options.length; i++) {
	if (sel.options[i].value=='${carnum}') {
		sel.options[i].selected=true;
	}
}}

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
/* $(document).on(function(){
	if($("#hiddenCost").val('')){
		$("td[name=number]").text("0원");
	}
	
}); */

</script>
<input type="hidden" id="hiddenId" value="${sid}"/>
<hr>
<div class="btn-group">
    <select class="btn btn-default dropdown-toggle" id=sel name=carnum onchange="show()">
	<c:forEach var="carn" items="${cnum }" >
		<option value="${carn.carnum }">${carn.carnum}</option>
	</c:forEach>
	</select><a href="javascript:opencostReg()">비용입력</a>
</div>

차량사진
<div id="costdiv">
<fieldset>
	<legend>차량정보</legend>
	<table class="table table-striped table-hover " >
	<!--  <table border="1" width="400" height="100" >-->
	<thead>
	<tr class="success">
	<th>기록시작일</th>

	<th><input type="text" name="날짜" value="날짜"></th>
	</tr>
		</thead>
		<tbody>
		<c:set var="cost" value="${costsum}"/>
		<c:set var="km" value="${kmsum}" />
	
	<tr class="success">
	<td>총 주행거리</td>
	<td name="number">${km}km</td>
	</tr>
	<tr class="success">
	<td>총 지출금액</td>
	<td name="number">${cost}원</td>
	</tr>
</tbody>

</table>
</fieldset>

<fieldset>
	<legend>차계부</legend>
	<table class="table table-striped table-hover ">
	<thead>
	<!--  <table border="1" width="400" height="100" >-->
	<tr class="success">
		<th>날짜</th>
		<th></th>
	</tr>
	</thead>
	<tbody>
		<c:set var="jooyu" value="${jooyusum}"/>
		<c:set var="jungbi" value="${jungbisum}"/>
		<c:set var="buy" value="${buysum}"/>
	<tr class="success">
		<td>총 주유비용</td>
		<td name="number">${jooyu }원</td>
	</tr>
	<tr class="success">
		<td>총 정비비용</td>
		<td name="number">${jungbi }원</td>
	</tr>
	<tr class="success">
		<td>총 물품구입비용</td>
		<td name="number">${buy }원</td>
	</tr>
	</tbody>
	</table>
</fieldset>
</div>
</body>
</html>