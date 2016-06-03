<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="./bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="./bootstrap/css/font-awesome.min.css">
<script type="text/javascript" src="js/httpRequest.js"></script>
<style>
.navbar-brand {
	position: relative;
	z-index: 2;
}

.navbar-nav.navbar-right .btn {
	position: relative;
	z-index: 2;
	padding: 4px 20px;
	margin: 10px auto;
}

.navbar .navbar-collapse {
	position: relative;
}

.navbar .navbar-collapse .navbar-right>li:last-child {
	padding-left: 22px;
}

.navbar .nav-collapse {
	position: absolute;
	z-index: 1;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	margin: 0;
	padding-right: 120px;
	padding-left: 80px;
	width: 100%;
}

.navbar.navbar-default .nav-collapse {
	background-color: #f8f8f8;
}

.navbar.navbar-inverse .nav-collapse {
	background-color: #222;
}

.navbar .nav-collapse .navbar-form {
	border-width: 0;
	box-shadow: none;
}

.nav-collapse>li {
	float: right;
}

.btn.btn-circle {
	border-radius: 50px;
}

.btn.btn-outline {
	background-color: transparent;
}

@media screen and (max-width: 767px) {
	.navbar .navbar-collapse .navbar-right>li:last-child {
		padding-left: 15px;
		padding-right: 15px;
	}
	.navbar .nav-collapse {
		margin: 7.5px auto;
		padding: 0;
	}
	.navbar .nav-collapse .navbar-form {
		margin: 0;
	}
	.nav-collapse>li {
		float: none;
	}
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

<!-- amCharts javascript code -->

<script>
	window.onload=function(){
		for (var i = 0; i < sel.options.length; i++) {
		if (sel.options[i].value=='${carnum}') {
			sel.options[i].selected=true;
		}
	}}
	
	function show() {
		var sel = document.getElementById('sel');

		var carnum = document.getElementById('sel').value;

		location.href='graph.do?carnum='+carnum;
	}
</script>
<script type="text/javascript"	src="http://www.amcharts.com/lib/3/amcharts.js"></script>
<script type="text/javascript"	src="http://cdn.amcharts.com/lib/3/serial.js"></script>
<script type="text/javascript"	src="http://www.amcharts.com/lib/3/themes/light.js"></script>
<script type="text/javascript"	src="http://cdn.amcharts.com/lib/3/pie.js"></script>
</head>
<body>
	<%@include file="../header.jsp"%>
<nav class="navbar navbar-default"  style=" margin-top:46px; " >
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
	<i class="fa fa-bar-chart fa-2x" style="float: left;margin-top: 7px;" aria-hidden="true"></i>
	<span class="gSrOnly" style="font-size: 17px;">그래프</span></li>
     
     <li style=" float: left;position: relative;display: inline-block;">
		<div class="form-group" style="padding-top: 15px; padding-left: 50px;padding-right:50px;width:350px;  position: relative;display: inline-block;margin-bottom: 0px;">
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


      </div>
      
 </div>
<div id="costdiv" style="margin-top: -5px;">
<div class="outer" style="display: table;width:100%;height:36px;background-color:#4C4C4C;margin-bottom: 10px;">
       <ul class="nav navbar-nav bar" style="height:36px; font-size:17px; overflow: hidden;">
      	<li  style="min-width:150px; background-color: white;"><a href="graph.do" style="padding-top: 9px;padding-left: 20px;"><i class="fa fa-pie-chart" aria-hidden="true" style="color:#4C4C4C;"></i>
    <font style="color:#4C4C4C; font-weight: bold;">  비용 그래프</font></a></li>
        <li  style="min-width:150px;"><a href="graph2.do" style="padding-top: 9px;padding-left: 20px;"><i class="fa fa-line-chart" aria-hidden="true" style="color:white;"></i>
     <font style="color:white;"> 거리 그래프</font></a></li>
        <li style="min-width:150px;"><a href="#" style="padding-top: 9px;padding-left: 20px;"><i class="fa fa-bar-chart" aria-hidden="true" style="color:white;"></i>
   <font style="color:white;">임시 그래프</font>  </a></li> 
      </ul>
</div>

<div id="view" class="view">
	<script>
			AmCharts.makeChart("chartdiv",
				{
				"type": "serial",
				"categoryField": "category",
				"columnSpacing": 50,
				"autoMarginOffset": 40,
				"marginRight": 10,
				"marginTop": 10,
				"startDuration": 1,
				"fontSize": 13,
				"theme": "light",
				"categoryAxis": {
					"gridPosition": "start"
				},
				"trendLines": [],
				"graphs": [
					{
						
						"columnWidth": 0.7,
						"fillAlphas": 0.9,
						"gapPeriod": 50,
						"id": "AmGraph-1",
						"title": "graph 1",
						"type": "column",
						"labelText": "주유",
						"valueField": "주유"
						
					},
					{
						
						"columnWidth": 0.7,
						"fillAlphas": 0.9,
						"gapPeriod": 50,
						"id": "AmGraph-2",
						"title": "graph 2",
						"type": "column",
						"labelText": "정비",
						"valueField": "정비"
					},
					{
						"balloonColor": "#0DE911",
						"columnWidth": 0.7,
						"fillAlphas": 1,
						"gapPeriod": 50,
						"id": "AmGraph-3",
						"title": "graph 3",
						"type": "column",
						"labelText": "유지",
						"valueField": "유지"
					},
					{
						"balloonColor": "#0DE911",
						"columnWidth": 0.7,
						"fillAlphas": 1,
						"gapPeriod": 50,
						"id": "AmGraph-4",
						"title": "graph 4",
						"type": "column",
						"labelText": "기타",
						"valueField": "기타"
					}
				],
				"guides": [],
				"valueAxes": [
					{
						"id": "ValueAxis-1",
						"title": "Axis title"
					}
				],
				"allLabels": [],
				"balloon": {},
				"titles": [{	"alpha": 0.66,
		        	"bold": true,
		        	"id": "Title-1",
		        	"size": 15,
		        	"text": "유지비용 그래프(원)"}],
				"dataProvider": [
					{
						"category": "cost",
						"주유": "${jooyusum}",
						"정비": "${jungbisum}",
						"유지": "${ugsum}",
						"기타": "${buysum}"
					}
				]
			}
		);
			
			AmCharts.makeChart("chartdiv2",{
					"type": "pie",
					"balloonText": "[[title]]<br><span style='font-size:14px'><b>[[value]]</b> ([[percents]]%)</span>",
					"titleField": "항목",
					"valueField": "$",
					"fontSize": 12,
					"theme": "light",
					"allLabels": [],
					"balloon": {},
					"titles": [		{	"alpha": 0.66,
					        	"bold": true,
					        	"id": "Title-1",
					        	"size": 15,
					        	"text": "유지비용 파이 그래프(원)"}
					],
					"dataProvider": [
						{
							"항목": "주유",
							"$": "${jooyusum}"
						},
						{
							"항목": "정비",
							"$": "${jungbisum}"
						},
						{
							"항목" : "유지",
							"$" : "${ugsum}"
						},
						{
							"항목" : "기타",
							"$" : "${buysum}"
						}
						]
					});
</script>
		<div id="chartdiv" style="float:left;width: 50%; height: 400px; background-color: #FFFFFF;" ></div>
	   	<div id="chartdiv2" style="float:left;width: 50%; height: 400px; background-color: #FFFFFF;" ></div>
</div>
	<a href="graph2.do">test</a>
	<a href="graphTest2.do">test2</a>
	
	</div>
</body>


</html>