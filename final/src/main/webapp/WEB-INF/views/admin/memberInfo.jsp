<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#chartdiv {float:left; padding:auto; overflow:hidden; clear:both;}
#chartdiv2 {float:left; padding:auto; overflow: hidden;}
table a{float:left; clear:both; padding: auto; margin:10px 5px; clear:both;}
</style>
<script>
var idx=null;
function memberDelForm(){
	var param="?idx="+idx;
	window.open('memberDelForm.do'+param,'memberDelForm','width=500 height=400 left=500 top=200');
}
function adminAddForm(){
	var param="?idx="+idx;
	window.open('adminAddForm.do'+param,'adminAddForm','width=500 height=400 left=500 top=200');
}
</script>

<script type="text/javascript" src="http://www.amcharts.com/lib/3/amcharts.js"></script>
<script type="text/javascript" src="http://www.amcharts.com/lib/3/pie.js"></script>

<script type="text/javascript">
var result = new Array();
var dto = new Object();
var man=0;
var woman=0;

<c:forEach var="dto" items="${lists}">

dto.sex = '${dto.sex}';
if(dto.sex=='남성' || dto.sex=='남자'){
	man++;
}else if(dto.sex=='여성'){
	woman++;
}
result.push(dto);
</c:forEach>


AmCharts.makeChart("chartdiv",
		
			{
				"type": "pie",
				"balloonText": "[[title]]<br><span style='font-size:14px'><b>[[value]]</b> ([[percents]]%)</span>",
				"colors": [
					"#495fba","#e8d685","#ae85c9","#c9f0e1","#d48652","#629b6d","#719dc3","#719dc3"
						],
				"titleField": "category",
				"valueField": "column-1",
				"allLabels": [],
				"balloon": {},
			    "legend": {
				"enabled": true,
				"align": "center",
				"color": "#1414CF",
				"markerType": "circle",
				"rollOverColor": "#0000FF"

				
			},
				"titles": [],
				
				"dataProvider": [
					{
						"category": "남성",
						"column-1": man
						
					},
					{
						"category": "여성",
						"column-1": woman
					}	
			]
	}
);
</script>

<script type="text/javascript">
var results = new Array();
var dtos = new Object();

var seoul=0;
var gyeonggi=0;
var busan=0;
var inchean=0;
var gangwon=0;
var etc=0;

<c:forEach var="dto" items="${lists}">

dtos.addr = '${dto.addr}';
if(dtos.addr=='서울특별시'){
	seoul++;
}else if(dtos.addr=='부산광역시'){
	busan++;
}else if(dtos.addr=='대구광역시'){
	daegu++;
}else if(dtos.addr=='인천광역시'){
	inchean++;
}else if(dtos.addr=='경기도'){
	gyeonggi++;
}else if(dtos.addr=='강원도'){
	gangwon++;
}else{
	etc++;
}
results.push(dtos);
</c:forEach>
			AmCharts.makeChart("chartdiv2",
					{
						"type": "pie",
						"balloonText": "[[title]]<br><span style='font-size:14px'><b>[[value]]</b> ([[percents]]%)</span>",
						"titleField": "category",
						"valueField": "column-1",
						"theme": "light",
						"allLabels": [],
						"balloon": {},
						"legend": {
							"enabled": true,
							"align": "center",
							"markerType": "circle"
						},
						"titles": [],
						"dataProvider": [
							{
							"category": "서울특별시",
							"column-1": seoul
						},
						{
							"category": "인천광역시",
							"column-1": inchean
						},
						{
							"category": "부산광역시",
							"column-1": busan
						},
						{
							"category": "경기도",
							"column-1": gyeonggi
						},
						{
							"category": "강원도",
							"column-1": gangwon
						},
						{
							"category": "기타",
							"column-1": etc
						}
						]
					}
				);
		</script>
</head>
<body>
<div>헤더</div>
<%@include file="../adHeader.jsp" %>
<section>
	<article>
	<div id="chartdiv" style="width: 50%; height: 400px; background-color: #FFFFFF;"></div>
	<div id="chartdiv2" style="width: 50%; height: 400px; background-color: #FFFFFF;"></div>
		
		<table border="1" cellspacing="0" width="800" id="a">
			<thead>
				<tr>
					<th>구분</th>
					<th>이름</th>
					<th>아이디</th>
					<th>지역</th>
					<th>연락처</th>
					<th>이메일</th>
					<th>성별</th>	
					<th>등급</th>
					<th>가입날짜</th>
					<th>등급</th>
					<th>탈퇴</th>
				</tr>
			</thead>
			<!-- for문으로 돌리기. 탈퇴는 버튼으로 만들기 -->
			<tbody>
				<c:set var="memberList" value="${lists}"></c:set>
				<c:if test="${empty memberList}">
					<tr class="even">
						<td colspan="11">등록된 회원이 없습니다.</td>
					</tr>
				</c:if>
				<c:forEach var="list" items="${lists}" >
					<tr>
						<td>${list.idx}</td>
						<td>${list.name}</td>
						<td>${list.id}</td>
						<td>${list.addr }</td>
						<td>${list.phonenum }</td>
						<td>${list.email }</td>
						<td>${list.sex }</td>
						<td>${list.grade}</td>
						<td>
							${list.joindate}
						</td>
						<td>
							<input type="button" value="등급조정" onclick="javascript:idx='${list.idx}';adminAddForm();">
						</td>
						<td>
							<input type="button" value="탈퇴시키기" onclick="javascript:idx='${list.idx}';memberDelForm();">
						</td>
					</tr>
				</c:forEach>
				
			</tbody>
			<tfoot>
				<tr  class="even">
					<td colspan="11" align="center">
					${pageStr}
					</td>
				</tr>
			</tfoot>
		</table>
		
	</article>
</section>
<footer>풋</footer>
</body>
</html>