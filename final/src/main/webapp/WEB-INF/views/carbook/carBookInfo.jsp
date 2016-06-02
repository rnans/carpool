<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="./bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="./bootstrap/css/font-awesome.min.css">
<style>
.success td{
	width: 50%;
}
.nav ul{
width: 100px;
text-align: center;
}
.nav li{

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
.tabletd td{
width: 50%;
}

</style>
</head>
<body style="color: #4C4C4C; font-family:'Helvetica Neue', Helvetica, Arial, sans-serif;">

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
	var params='carnum='+carnum;
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





<div id="costdiv" style="margin-top: 15px;">
<div class="outer" style="display: table;width:100%;height:36px;background-color:#4C4C4C;margin-bottom: 15px;">
<h4 style="padding-left:100px; color: white;padding-top: 10px;font-size: 15px;"><i class="fa fa-car" aria-hidden="true"></i> &nbsp;${cardto.cartype } &nbsp; [${cardto.carnum}]</h4>

</div>
<div style="float:left; height:225px; width: 48%; margin-right: 7px;" >
<img style="width:100%;height:100%;" src="http://localhost:9090/final02/img/${cardto.carphoto}">
</div>
<div style="float:right; height:225px; width: 48%; margin-left: 7px;" >
			<fieldset>
			<legend style="font-size: 17px; font-weight: bold; padding-bottom: 5px;">차량정보</legend> 
			<table class="table table-striped table-hover tabletd" style="height: 154.44px;border-top: 3px solid #4C4C4C; border-bottom:3px solid #4C4C4C;">
				<!--  <table border="1" width="400" height="100" >-->
				<thead>
					<tr>
						<td style="width: 50%;">기록시작일</td>
						

						<td style="width: 50%;">2016-01-01</td>
					</tr>
				</thead>
				<tbody>
					<c:set var="cost" value="${costsum}" />
					<c:set var="km" value="${kmsum}" />
				<tr>
					<td>운전자</td>
					<td>${cardto.driver }</td>
				</tr>
				<tr>
				<td>시작 주행거리</td>
				<td>0km</td>
				</tr>
					<tr>
						<td>총 주행거리</td>
						<td  class="info" name="number">${km}km</td>
					</tr>
					<tr>
						<td>총 지출금액</td>
						<td  class="info" name="number">${cost}원</td>
					</tr>
				</tbody>

			</table>
		</fieldset>
	</div>

		<fieldset>
			<legend style="font-size: 17px; font-weight: bold; padding-bottom: 5px;">차계부
  
			</legend>
			<table class="table table-striped table-hover " style="height: 154.44px;
			border-top: 3px solid #4C4C4C; border-bottom:3px solid #4C4C4C;">
				<thead>
					<!--  <table border="1" width="400" height="100" >-->
					<tr>
						<th>날짜</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:set var="jooyu" value="${jooyusum}" />
					<c:set var="jungbi" value="${jungbisum}" />
					<c:set var="buy" value="${buysum}" />
					<tr>
						<td>총 주유비용</td>
						<td  class="info" name="number">${jooyu }원</td>
					</tr>
					<tr>
						<td>총 정비비용</td>
						<td  class="info" name="number">${jungbi }원</td>
					</tr>
					<tr>
						<td>총 물품구입비용</td>
						<td  class="info" name="number">${buy }원</td>
					</tr>
				</tbody>
			</table>
		</fieldset>
	</div>
		
</div>
	
	
	
</body>
</html>