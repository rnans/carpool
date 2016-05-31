<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="./bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
</head>


<script type="text/javascript" src="/final02/js/httpRequest.js"></script>
<script>
var idx=null;
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
	sendRequest('costA.do', params, showResult, 'GET');
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
	window.open('costReg.do?carnum='+carnum,'opencostReg','left='+(screen.availWidth-360)/2+',top='+(screen.availHeight-500)/2+', width=350px,height=450px');
	
}

function update(){
	var param="?idx="+idx;
   window.open('costUpdate.do'+param,'update','left='+(screen.availWidth-360)/2+',top='+(screen.availHeight-500)/2+', width=350px,height=450px');
}
function costDel(){
	var param="?idx="+idx;
   window.open('costDel.do'+param,'costDel','left='+(screen.availWidth-300)/2+',top='+(screen.availHeight-330)/2+', width=250px,height=110px');
}
</script>
<body>
	<%@include file="../header.jsp"%>
	<hr>
	<div>
		<select id=sel name=carnum class="btn btn-default dropdown-toggle" onchange="show()">
			<c:forEach var="carn" items="${cnum }">
				<option value="${carn.carnum }">${carn.carnum}</option>
			</c:forEach>
		</select> <a href="javascript:opencostReg()">비용입력</a>
	</div>
	<div id="costdiv">
		<table class="table table-striped table-hover " >
		<!-- <table border="1" width="600" height="100">-->
			<thead>
				<tr class="success">
					<th>유형</th>
					<th>날짜</th>
					<th>비고</th>
					<th>금액</th>
					<th>주행거리</th>
					<th>수정</th>
					<th>삭제</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="list" items="${list}">
					<tr class="success">
						<td>${list.category}</td>
						<td>${list.costday}</td>
						<td>${list.bigo}</td>
						<td>${list.cost}원</td>
						<td>${list.km}km</td>
						<td><input type="button" value="수정"
							onclick="javascript:idx='${list.idx}';update();"></td>
						<td><input type="button" value="삭제"
							onclick="javascript:idx='${list.idx}';costDel();"></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>