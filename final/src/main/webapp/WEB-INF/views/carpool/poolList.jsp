<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
</head>
<body onload="initTmap()">
<%@include file="../header.jsp" %>
<h1>카풀 리스트 보기</h1>
<table>
	<thead>
		<tr>
			<th>번호</th>
			<th>출발</th>
			<th>도착</th>
			<th>유형</th>
			<th>인원/금액</th>
		</tr>
	</thead>
	<tbody>
<c:if test="${empty list }">
<tr>
 <td colspan="5" align="center">작성된 글이 없습니다.</td>
</tr>
 </c:if>
		
<c:forEach var="dtos" items="${list }">

<tr>
 <c:url var="poolEachContent" value="poolEachContent.do">
 <c:param name="idx">${dtos.idx }</c:param>
 </c:url>

 <td>${dtos.idx }</td>
 <td><a href="${poolEachContent }">${dtos.startspot}</a></td>
 <td>${dtos.endspot }</td>
 <td>${dtos.termtype }</td>
 <td>${dtos.mannum }/${dtos.pay }</td>

</tr>


 </c:forEach>
</tbody>
<tfoot>
<tr>
 <td colspan="5" align="center">${pageStr }</td>
 </tr>
 </tfoot>
</table>
<c:forEach var="dtos" items="${list }">
<div id="map_div${dtos.idx }"></div>
 </c:forEach>

<script src="/final02/js/jquery-1.12.4.min.js"></script>
<script src="https://apis.skplanetx.com/tmap/js?version=1&format=javascript&appKey=2e2fe45c-1baa-3078-b615-2c0b3f71bfe5"></script>
<script>
//초기화 함수
function initTmap(){
   
	
	
	<c:forEach var="dtos" items="${list }">	


    map = new Tmap.Map({div:'map_div'+'${dtos.idx}',
                        width:'100%', 
                        height:'400px',
                        transitionEffect:"resize",
                        animation:true
                    }); 
    window.alert('맵 생성 성공');
  //pr_3857 인스탄스 생성.
	var pr_3857 = new Tmap.Projection("EPSG:3857");
	 
	//pr_4326 인스탄스 생성.
	var pr_4326 = new Tmap.Projection("EPSG:4326");

	var scoordi='${dtos.startcoordi}'.split(',');
	var ecoordi='${dtos.endcoordi}'.split(',');
	
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
			startX=scoordi[i].substring(0,scoordi[i].length-1);

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
			endX=ecoordi[i].substring(0,ecoordi[i].length-1);

		}
	}
			
	var sCoordi= new Tmap.LonLat(startX, startY).transform(pr_4326,pr_3857);
	var eCoordi = new Tmap.LonLat(endX, endY).transform(pr_4326,pr_3857);
		
	window.alert(sCoordi.lat+''+sCoordi.lon);

	var bounds = new Tmap.Bounds();
	
	bounds.extend(sCoordi);
	bounds.extend(eCoordi);
	
  

    searchRoute(startX,startY,endX,endY);
    
    map.zoomToExtent(bounds);

    
    </c:forEach>
};
//경로 정보 로드
function searchRoute(startX,startY,endX,endY){
    var routeFormat = new Tmap.Format.KML({extractStyles:true, extractAttributes:true});
    var urlStr = "https://apis.skplanetx.com/tmap/routes?version=1&format=xml";
    urlStr += "&reqCoordType="+'WGS84GEO';
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
    routeLayer.events.register("featuresadded", routeLayer);
    map.addLayer(routeLayer);

	
}


</script>
		
	
		
</body>
</html>
