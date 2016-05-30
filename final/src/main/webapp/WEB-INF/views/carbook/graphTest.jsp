<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
	<head>
		<title>chalk-column | amCharts</title>
		<meta name="description" content="chart created using amCharts live editor" />

		<!-- amCharts javascript sources -->
		<script type="text/javascript" src="http://www.amcharts.com/lib/3/amcharts.js"></script>
		<script type="text/javascript" src="http://cdn.amcharts.com/lib/3/serial.js"></script>
		<script type="text/javascript" src="http://www.amcharts.com/lib/3/themes/light.js"></script>

		<!-- amCharts javascript code -->
		<script type="text/javascript">
			AmCharts.makeChart("chartdiv",
				{
					"type": "serial",
					"categoryField": "category",
					"autoMarginOffset": 40,
					"marginRight": 70,
					"marginTop": 70,
					"startDuration": 1,
					"fontSize": 13,
					"theme": "light",
					"categoryAxis": {
						"gridPosition": "start"
					},
					"trendLines": [],
					"graphs": [
						{
							"balloonText": "[[title]] of [[category]]:[[value]]",
							"fillAlphas": 0.9,
							"id": "AmGraph-1",
							"title": "graph 1",
							"type": "column",
							"valueField": "3월"
						}
					],
					"guides": [],
					"valueAxes": [
						{
							"id": "ValueAxis-1",
							"title": "3월"
						}
					],
					"allLabels": [],
					"balloon": {},
					"titles": [],
					"dataProvider": [
						{
							"category": "주유",
							"3월": "${jooyusum}"
						},
						{
							"category": "정비",
							"3월": "${jungbisum}"
						},
						{
							"category": "기타",
							"3월": "${buysum}"
						}
					]
				}
			);
		</script>
	</head>
	<body>
		<div id="chartdiv" style="width: 100%; height: 400px; background-color: #FFFFFF;" ></div>
	</body>
</html>