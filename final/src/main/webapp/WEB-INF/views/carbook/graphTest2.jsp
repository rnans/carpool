<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>chart created with amCharts | amCharts</title>
		<meta name="description" content="chart created using amCharts live editor" />

		<!-- amCharts javascript sources -->
		<script type="text/javascript" src="http://www.amcharts.com/lib/3/amcharts.js"></script>
		<script type="text/javascript" src="http://www.amcharts.com/lib/3/serial.js"></script>
		<script type="text/javascript" src="http://www.amcharts.com/lib/3/themes/light.js"></script>

		<!-- amCharts javascript code -->
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
	</head>
	<body>
		
		<div id="chartdiv" style="float:left;width: 50%; height: 400px; background-color: #FFFFFF;" ></div>
		<div id="chartdiv2" style="width: 50%; height: 400px; background-color: #FFFFFF;" ></div>
	</body>
</html>