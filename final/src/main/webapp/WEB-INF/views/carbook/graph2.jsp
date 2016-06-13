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
.top a{
margin: 0 0 0 50px;
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
<nav class="navbar navbar-default" >
  <div class="container-fluid" style=" margin-top:40px; height:48px;overflow:hidden; text-align: center;">   

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" style="text-align: center;height: 40px;"  >
      <ul class="nav navbar-nav bar top" style="margin-left: 400px;">
      	<li><a href="carBookInfo.do"><i class="fa fa-home fa-2x" aria-hidden="true" style=""></i>
     차계부</a></li>
        <li><a href="cost.do"><i class="fa fa-calculator fa-2x" aria-hidden="true"></i>
     내역</a></li>
        <li><a href="graph.do" style="height:48px; color:#363636; border-bottom: 2px solid #363636;"><i class="fa fa-bar-chart fa-2x" aria-hidden="true"></i>
     그래프</a></li> 
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
<div class="outer" style="display: table;width:100%;height:36px;background-color:#4C4C4C;margin-top:10px; margin-bottom: 10px;">
       <ul class="nav navbar-nav bar" style="height:36px; font-size:17px; overflow: hidden;">
      	<li  style="min-width:150px;"><a href="graph.do" style="padding-top: 9px;padding-left: 20px;"><i class="fa fa-pie-chart" aria-hidden="true" style="color:white;"></i>
    <font style="color:white;">  비용 그래프</font></a></li>
        <li  style="min-width:150px; background-color: white;"><a href="graph2.do" style="padding-top: 9px;padding-left: 20px;"><i class="fa fa-line-chart" aria-hidden="true" style="color:#4C4C4C;"></i>
     <font style="color:#4C4C4C; font-weight: bold;"> 거리 그래프</font></a></li>
        <li style="min-width:150px;"><a href="#" style="padding-top: 9px;padding-left: 20px;"><i class="fa fa-bar-chart" aria-hidden="true" style="color:white;"></i>
   <font style="color:white;">기간별 그래프</font>  </a></li> 
      </ul>
</div>

<div id="view" class="view">
<script type="text/javascript">
			AmCharts.makeChart("chartdiv",
				{
					"type": "serial",
					"categoryField": "category",
					"startDuration": 1,
					"theme": "light",
					"categoryAxis": {
						"gridPosition": "start",
						"gridAlpha": 0,
						"gridCount": 10,
						"fontSize": 14
					},
					"trendLines": [],
					"graphs": [
						{
							"accessibleLabel": "",
							"colorField": "color",
							"columnWidth": 0.40,
							"fillAlphas": 1,
							"id": "AmGraph-1",
							"lineColorField": "color",
							"title": "graph 1",
							"type": "column",
							"valueField": "column-1"
						}
					],
					"guides": [],
					"valueAxes": [
						{
							"id": "",
							"axisAlpha": 0,
							"axisColor": "#D61818",
							"axisThickness": 0,
							"title": ""
						}
					],
					"allLabels": [],
					"balloon": {},
					"titles": [
						{
							"alpha": 0.66,
							"bold": true,
							"id": "Title-1",
							"size": 15,
							"text": "주행거리 기간별 그래프(km)"
						}
					],
					"dataProvider": [
						{
							"category": "1월",
							"column-1": "100000",
							"color": "skyblue"
						},
						{
							"category": "2월",
							"column-1": "20000",
							"color": "#B2EBF4"
						},
						{
							"category": "3월",
							"column-1": "30000",
							"color": "skyblue"
						},
						{
							"category": "4월",
							"column-1": "55555",
							"color": "#B2EBF4"
						},
						{
							"category": "5월",
							"column-1": "66666",
							"color": "skyblue"
						},
						{
							"category": "6월",
							"column-1": "44444",
							"color": "#B2EBF4"
						},
						{
							"category": "7월",
							"column-1": "77777",
							"color": "skyblue"
						},
						{
							"category": "8월",
							"column-1": "80000",
							"color": "#B2EBF4"
						},
						{
							"category": "9월",
							"column-1": "60000",
							"color": "skyblue"
						},
						{
							"category": "10월",
							"column-1": "12213",
							"color": "#B2EBF4"
						},
						{
							"category": "11월",
							"column-1": "77777",
							"color": "skyblue"
						},
						{
							"category": "12월",
							"column-1": "112222",
							"color": "#B2EBF4"
						}
					]
				}
			);
			
			///
			
				AmCharts.makeChart("chartdiv2",
				{
					"type": "serial",
					"categoryField": "date",
					"startDuration": 1,
					"theme": "light",
					"categoryAxis": {
						"gridPosition": "start",
						"gridAlpha": 0,
						"gridCount": 10,
						"fontSize": 14
					},
					"chartCursor": {
						"enabled": true,
						"categoryBalloonDateFormat": "MMM YYYY"
					},
					"trendLines": [],
					"graphs": [
						{
							"bullet": "round",
							"bulletBorderColor": "#0000FF",
							"bulletColor": "#267EE1",
							"id": "AmGraph-1",
							"labelOffset": 1,
							"labelPosition": "bottom",
							"title": "graph 1",
							"valueField": "column-1",
							"visibleInLegend": false
						}
					],
					"guides": [],
					"valueAxes": [
						{
							"axisFrequency": 0,
							"baseValue": -2,
							"id": "ValueAxis-1",
							"autoGridCount": false,
							"autoRotateCount": 0,
							"gridCount": 4,
							"minorGridAlpha": 0,
							"offset": -1,
							"title": ""
						},
						{
							"id": "ValueAxis-2",
							"axisThickness": 0,
							"fontSize": 0
						}
					],
					"allLabels": [],
					"balloon": {
						"borderThickness": 0,
						"textAlign": "left"
					},
					"titles": [
						{
							"id": "Title-1",
							"size": 15,
							"text": "거리 누적 그래프(km)"
						}
					],
					"dataProvider": [
						{
							"date": "1 월",
							"column-1": 1
						},
						{
							"date": "2 월",
							"column-1": 2
						},
						{
							"date": "3월",
							"column-1": 4
						},
						{
							"date": "4월",
							"column-1": 8
						},
						{
							"date": "5월",
							"column-1": 12
						},
						{
							"date": "6월",
							"column-1": 17
						},
						{
							"date": "7월",
							"column-1": 22
						},
						{
							"date": "8월",
							"column-1": 28
						},
						{
							"date": "9월",
							"column-1": 30
						},
						{
							"date": "10월",
							"column-1": 35
						},
						{
							"date": "11월",
							"column-1": 32
						},
						{
							"date": "12월",
							"column-1": 40
						}
					]
				}
			);			
		</script>
		<div id="chartdiv" style="float:left;width: 50%; height: 400px; background-color: #FFFFFF;" ></div>
	   	<div id="chartdiv2" style="float:left;width: 50%; height: 400px; background-color: #FFFFFF;" ></div>
</div>
	
	</div>
</body>


</html>