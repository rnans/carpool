<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://www.amcharts.com/lib/3/amcharts.js"></script>
		<script type="text/javascript" src="http://cdn.amcharts.com/lib/3/serial.js"></script>
		<script type="text/javascript" src="http://www.amcharts.com/lib/3/themes/patterns.js"></script>
<script type="text/javascript">
AmCharts.makeChart( "chartdiv", {
	  "type": "serial",
	  "theme": "light",
	  "dataProvider": [ {
	    "country": "USA",
	    "visits": 100
	  }, {
	    "country": "China",
	    "visits": 1882
	  }, {
	    "country": "Japan",
	    "visits": 1809
	  }, {
	    "country": "Germany",
	    "visits": 1322
	  }, {
	    "country": "UK",
	    "visits": 1122
	  }, {
	    "country": "France",
	    "visits": 1114
	  }, {
	    "country": "India",
	    "visits": 984
	  }, {
	    "country": "Spain",
	    "visits": 711
	  }, {
	    "country": "Netherlands",
	    "visits": 665
	  }, {
	    "country": "Russia",
	    "visits": 580
	  }, {
	    "country": "South Korea",
	    "visits": 443
	  }, {
	    "country": "Canada",
	    "visits": 441
	  }, {
	    "country": "Brazil",
	    "visits": 395
	  } ],
	  "valueAxes": [ {
	    "gridColor": "#FFFFFF",
	    "gridAlpha": 0.2,
	    "dashLength": 0
	  } ],
	  "gridAboveGraphs": true,
	  "startDuration": 1,
	  "graphs": [ {
	    "balloonText": "[[category]]: <b>[[value]]</b>",
	    "fillAlphas": 0.8,
	    "lineAlpha": 0.2,
	    "type": "column",
	    "valueField": "visits"
	  } ],
	  "chartCursor": {
	    "categoryBalloonEnabled": false,
	    "cursorAlpha": 0,
	    "zoomable": false
	  },
	  "categoryField": "country",
	  "categoryAxis": {
	    "gridPosition": "start",
	    "gridAlpha": 0,
	    "tickPosition": "start",
	    "tickLength": 20
	  },
	  "export": {
	    "enabled": true
	  }

	} );
			
		</script>
</head>
<body>
<div>헤더</div>
<%@include file="../adHeader.jsp" %>
<section>
<div id="chartdiv" style="width: 100%; height: 400px; background-color: #FFFFFF;" ></div>	
	<article>
		<table border="1" cellspacing="0" width="500">
			<thead>
				<tr>
					<th>구분</th>
					<th>이름</th>
					<th>아이디</th>
					<th>알림1</th>
					<th>알림2</th>
					<th>알림3</th>
					<th>알림4</th>
					<th>알림삭제</th>
				</tr>
			</thead>
			<tbody>
				<tr>
				
				</tr>
			</tbody>
			<tfoot>
				<tr>
				
				</tr>
			</tfoot>
		</table>
	</article>
</section>
<footer>풋</footer>
</body>
</html>