<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/final02/CSS/poolCommon.css" />
<link rel="stylesheet" type="text/css" href="/final02/CSS/buttons.css" />
<link rel="stylesheet" type="text/css" href="/final02/CSS/set2.css" />
<script>
function viewNextPage()
{
	var f=document.getElementById("form");
	var pc=document.getElementById("content");
	var type='${sessionScope.data.termtype}'
	
	if(type=='정기')
	{
		f.method='POST';
	}
	
	if(pc.value==null)
	{
		pc.value=" ";
	}
	f.submit();
	
}
</script>
<script src="https://apis.skplanetx.com/tmap/js?version=1&format=javascript&appKey=2e2fe45c-1baa-3078-b615-2c0b3f71bfe5"></script>
<script>
//초기화 함수
function initTmap(){
    centerLL = new Tmap.LonLat(14145677.4, 4511257.6);
    map = new Tmap.Map({div:'map_div',
                        width:'100%', 
                        height:'400px',
                        transitionEffect:"resize",
                        animation:true
                    }); 
  //pr_3857 인스탄스 생성.
	var pr_3857 = new Tmap.Projection("EPSG:3857");
	 
	//pr_4326 인스탄스 생성.
	var pr_4326 = new Tmap.Projection("EPSG:4326");

	var scoordi='${sessionScope.data.startcoordi}'.split(',');
	var ecoordi='${sessionScope.data.endcoordi}'.split(',');
	
	var startX;
	var startY;
	var endX;
	var endY;
	
	for(var i=0;i<scoordi.length;i++)
	{
		
		if(i==0)
		{
			startY=scoordi[i].substring(1,scoordi[i].length);

		}
		if(i==1)
		{
			startX=scoordi[i].substring(1,scoordi[i].length-1);

		}
	}
	
	for(var i=0;i<ecoordi.length;i++)
	{
		
		if(i==0)
		{
			endY=ecoordi[i].substring(1,ecoordi[i].length);

		}
		if(i==1)
		{
			endX=ecoordi[i].substring(1,ecoordi[i].length-1);

		}
	}
	
	var sCoordi= new Tmap.LonLat(startX, startY).transform(pr_4326,pr_3857);
	var eCoordi = new Tmap.LonLat(endX, endY).transform(pr_4326,pr_3857);
	
	document.getElementById('sLat').value=startY;
	document.getElementById('sLng').value=startX;
	document.getElementById('eLat').value=endY;
	document.getElementById('eLng').value=endX;
	    
    searchRoute(sCoordi.lon,sCoordi.lat,eCoordi.lon,eCoordi.lat);
};
//경로 정보 로드
function searchRoute(startX,startY,endX,endY){
    var routeFormat = new Tmap.Format.KML({extractStyles:true, extractAttributes:true});
    var urlStr = "https://apis.skplanetx.com/tmap/routes?version=1&format=xml";
    urlStr += "&startX="+startX;
    urlStr += "&startY="+startY;
    urlStr += "&endX="+endX;
    urlStr += "&endY="+endY;
    urlStr += "&appKey=2e2fe45c-1baa-3078-b615-2c0b3f71bfe5";
    var prtcl = new Tmap.Protocol.HTTP({
                                        url: urlStr,
                                        format:routeFormat
                                        });
    var routeLayer = new Tmap.Layer.Vector("route", {protocol:prtcl, strategies:[new Tmap.Strategy.Fixed()]});
    routeLayer.events.register("featuresadded", routeLayer, onDrawnFeatures);
    map.addLayer(routeLayer);
}
//경로 그리기 후 해당영역으로 줌
function onDrawnFeatures(e){
    map.zoomToExtent(this.getDataExtent());
}



	 





</script>
</head>
<body onload="initTmap()">
//지도 div 정의
<div id="map_div">
</div>
<h2>카풀등록 페이지6</h2>

<form id="form" name="f" action="poolMemberAddConfirm.do" method="get">
<input type="hidden" id="sLat" name="sLat">
<input type="hidden" id="sLng" name="sLng">
<input type="hidden" id="eLat" name="eLat">
<input type="hidden" id="eLng" name="eLng">
	
	
	<div id="div2">
	
	<table border="1">
		
			
				
	
			
		<tfoot>
			<tr>
				<th><textarea id="content" name="pluscontent" rows="5" cols="50"></textarea> </th>
				<td></td>
			</tr>
		</tfoot>
			
			<tbody>
			<tr>
				<th>출발지</th>
					<td>${sessionScope.data.startspot }</td>
					<th>경유지</th>
					<td>${sessionScope.data.route }</td>
					<th>도착지</th>
					<td>${sessionScope.data.endspot}</td>
			</tr>
				<tr>
					<th>목적</th>
					<td>${sessionScope.data.aim }</td>
				</tr>
				<tr>
					<th>인원</th>
					<td>${sessionScope.data.mannum }</td>
					<th>성별</th>
					<td>${sessionScope.data.gender }</td>
					<th>흡연</th>
					<td>${sessionScope.data.smoking }</td>
				</tr>
				<tr>
					<c:if test="${sessionScope.data.termtype eq '단기'}">	
					<th>출발일시</th>
					<td>${sessionScope.data.starttime}</td>
					</c:if>
					<c:if test="${sessionScope.data.termtype eq '정기'}">
					<th>출발일시</th>
					<td>${sessionScope.data.starttime}</td>
					<th>종료일시</th>
					<td>${sessionScope.data.enddate }</td>
					<th>반복</th>
					<td>${sessionScope.data.days }</td>
					</c:if>
				</tr>
			</tbody>
		</table>
	</div>
	
	
	
			<p>
				<input type="button" value="이전">
				<input type="button" value="완료" onclick="viewNextPage()">
			</p>

	</form>
</body>
</html>