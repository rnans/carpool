<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="./bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="./bootstrap/css/font-awesome.min.css">
</head>
<style>

.buttonArea li .gSrOnly {
    position: absolute!important;
    top: auto!important;
    bottom: 4px;
    font-size: 14px!important;
    text-align: center;
    line-height: 1.8!important;
    white-space: nowrap;
    color: #777;
}
.buttonArea {
    width: 100%;
    height: 52px;
}
.buttonArea ul {
    float: left;
    margin: 0 0 0 9px;
}

.buttonArea li .gSrOnly {
    position: absolute!important;
    top: auto!important;
    bottom: 4px;
    font-size: 14px!important;
    text-align: center;
    line-height: 1.8!important;
    white-space: nowrap;
    color: #777;
}

    .home li {
    position: relative;
    float: left;
    font-size: 20px;
    padding-right: 10px;
    width:80px;

}
</style>


<script type="text/javascript" src="/final02/js/httpRequest.js"></script>
<script>
window.onload=function(){
	for (var i = 0; i < sel.options.length; i++) {
	if (sel.options[i].value=='${carnum}') {
		sel.options[i].selected=true;
	}
}}


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
	window.open('costReg2.do?carnum='+carnum,'opencostReg','left='+(screen.availWidth-360)/2+',top='+(screen.availHeight-500)/2+', width=350px,height=450px');
	
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
<nav class="navbar navbar-default" >
  <div class="container-fluid" >   

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1"  >
      <ul class="nav navbar-nav bar">
      	<li><a href="carBookInfo.do"><i class="fa fa-home fa-2x" aria-hidden="true"></i>
     차계부</a></li>
        <li><a href="cost.do"><i class="fa fa-calculator fa-2x" aria-hidden="true"></i>
     내역</a></li>
        <li><a href="graph.do"><i class="fa fa-bar-chart fa-2x" aria-hidden="true"></i>
     그래프</a></li> 
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#">Link</a></li>
      </ul>
    </div>
  </div>
</nav>

<div style="width: 65%; margin: 0px auto">
  <div class="buttonArea" style="color: #4C4C4C; width:100%;">
    

    
    <ul class="nav navbar-nav home">
	<li>
	<i class="fa fa-home fa-3x" style="float: left;" aria-hidden="true"></i>
	<span class="gSrOnly">차계부</span></li>
     
     <li style=" float: left;position: relative;display: inline-block;">
		<div class="form-group" style="padding-top: 15px; padding-left: 50px;padding-right:50px;width:350px;  position: relative;display: inline-block;">
			<a href="#" class="btn btn-info" style="float: left; border:0;">Info</a>
			<select class="btn btn-default dropdown-toggle" style="width: 180px; float: left;"   id=sel name=carnum
				onchange="show()">
				<c:forEach var="carn" items="${cnum }">
					<option value="${carn.carnum }">${carn.carnum}</option>
				</c:forEach>
			</select>
			
		</div>
	</li>
    </ul>
    
    
     
           <div style="float: right;">

       <div class="buttonSubmit" style="float: right; padding-top: 15px; padding-right: 20px;">
							<a href="#" onclick="javascript:opencostReg()" class="btn btn-info" style="float: left; background: #EDD200; border:0;">비용 입력</a>
		</div>
      </div>
    </div>


<div class="outer" style="display: table;width:100%;height:36px;background-color:#4C4C4C;">
<h4 style="padding-left:100px; color: white;padding-top: 10px;font-size: 15px;"><i class="fa fa-car" aria-hidden="true"></i> &nbsp;${cardto.cartype } &nbsp; [${cardto.carnum}]</h4>

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
</div>
</body>
</html>