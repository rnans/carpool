<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
var idx=null;
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

function update(){
	var param="?idx="+idx;
   window.open('costUpdate.do'+param,'update','width=350,height=450');
}
function costDel(){
	var param="?idx="+idx;
   window.open('costDel.do'+param,'costDel','width=350,height=450');
}
</script>
<body>
<%@include file="../header.jsp"%>
<hr>
<div>
	<select id=sel name=carnum onchange="show()">
	<c:forEach var="carn" items="${cnum }" >
		<option value="${carn.carnum }">${carn.carnum}</option>
	</c:forEach>
	</select>
	<a href="javascript:opencostReg()">비용입력</a>
</div>
<div id="costdiv">
<table border="1" width="600" height="100" >
<thead>
   <tr>
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
               <tr>
                  <td>${list.category}</td>
                  <td>${list.costday}</td>
                  <td>${list.bigo}</td>
                  <td>${list.cost}원</td>
                  <td>${list.km}km</td>
                  <td><input type="button" value="수정" onclick="javascript:idx='${list.idx}';update();"></td>
                  <td><input type="button" value="삭제" onclick="javascript:idx='${list.idx}';costDel();"></td>
               </tr>
   </c:forEach>
</tbody>
</table>
</div>
</body>
</html>