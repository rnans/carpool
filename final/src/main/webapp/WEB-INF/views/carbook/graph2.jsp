<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="./bootstrap/css/bootstrap.css" rel="stylesheet"
	type="text/css" />
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
	<hr size=5 color=skyblue>
	${carnum }
<button type="button" class="btn btn-default btn-lg" style="border:0;">
  <span class="glyphicon glyphicon-usd" aria-hidden="true"></span> 통계
</button>
	<div class="btn-group">
		<select class="btn btn-default dropdown-toggle" id="sel" name="carnum"
			onchange="show()">
			<c:forEach var="carn" items="${cnum }">
				<option value="${carn.carnum}">${carn.carnum}</option>
			</c:forEach>
	</div>
	<form action="">
		<div>
			Date: <input type="text" name="startday" id="datepicker" value="시작일"
				maxlength="10" size="6">~ <input type="text" name="endday"
				id="datepicker2" value="종료일" maxlength="10" size="6"> <select
				name=type>
				<option>주유</option>
				<option>정비</option>
				<option>물품구입비용</option>
			</select> <input type="button" value="확인"><br>
		</div>
		
	</form>


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
							"text": "Chart Title"
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
	<a href="graphTest.do">test</a>
	<a href="graphTest2.do">test2</a>
</body>


</html>