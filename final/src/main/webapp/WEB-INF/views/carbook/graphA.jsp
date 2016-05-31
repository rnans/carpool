<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script type="text/javascript" src="http://www.amcharts.com/lib/3/amcharts.js"></script>
		<script type="text/javascript" src="http://cdn.amcharts.com/lib/3/serial.js"></script>
		<script type="text/javascript" src="http://www.amcharts.com/lib/3/themes/light.js"></script>
		<script type="text/javascript" src="http://cdn.amcharts.com/lib/3/pie.js"></script>
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
							"항목" : "기타",
							"$" : "${buysum}"
						} ]
					});
</script>
		<div id="chartdiv" style="float:left;width: 50%; height: 400px; background-color: #FFFFFF;" ></div>
	   	<div id="chartdiv2" style="float:left;width: 50%; height: 400px; background-color: #FFFFFF;" ></div>