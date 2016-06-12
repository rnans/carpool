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
<!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="/final02//CSS/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="/final02/CSS/_all-skins.min.css">
<link rel="stylesheet" type="text/css"
	href="/final02/CSS/menu_topexpand.css" />
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
<script src="/final02/js/httpRequest.js"></script>
<script src="/final02/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="/js/jQuery/jquery.xml2json.js"></script>
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
	
    searchRoute(startX,startY,endX,endY);
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
<%@ include file="../header.jsp" %>
	<div class="menu-wrap">
		<nav class="menu">
			<div class="icon-list">
				<a href="poolAdd.do"><i class="fa fa-pencil" aria-hidden="true"></i><span>등록하기</span></a>
				<a href="poolFindForm.do"><i class="fa fa-search"
					aria-hidden="true"></i><span>검색하기</span></a> <a
					href="poolMasterList.do"><i class="fa fa-car"
					aria-hidden="true"></i><span>타세요</span></a> <a href="poolMemberList.do"><i
					class="fa fa-thumbs-up" aria-hidden="true"></i><span>탈래요</span></a> <a
					href="shortPoolList.do"><i class="fa fa-clock-o"
					aria-hidden="true"></i><span>단기 카풀</span></a> <a href="longPoolList.do"><i
					class="fa fa-calendar" aria-hidden="true"></i><span>정기 카풀</span></a> <a
					href="poolStatus.do"><i class="fa fa-th-list"
					aria-hidden="true"></i><span>예약 현황</span></a> <a
					href="poolMasReqList.do"><i class="fa fa-user-plus"
					aria-hidden="true"></i><span>가입 요청 현황</span></a>
			</div>
		</nav>
	</div>
	<button class="menu-button" id="open-button"></button>



	<section id="mainsection">


			<div class="content-wrap">
				<div class="content">
		<div class="col-md-12">
			<h1 class="main--title">
				카풀 등록 <small>등록 정보 최종 확인</small>
			</h1>
		</div>
<div id="map_div">
</div>
	
	
<form id="form" name="f" action="poolMasterAdd06.do" method="get">
<input type="hidden" id="sLat" name="sLat">
<input type="hidden" id="sLng" name="sLng">
<input type="hidden" id="eLat" name="eLat">
<input type="hidden" id="eLng" name="eLng">
		
	
	<div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">정보 입력 확인</h3>

              
            </div>
            <!-- /.box-header -->
            <div class="box-body table-responsive no-padding">
              <table class="table table-hover">
                <tr>
				<th>출발지</th>
					<td>${sessionScope.data.startspot }</td>
				</tr>
				<tr>
					<th>도착지</th>
					<td>${sessionScope.data.endspot}</td>
				</tr>
				<tr>
					<th>목적</th>
					<td>${sessionScope.data.aim }</td>
				</tr>
				
					<c:if test="${sessionScope.data.termtype eq '단기'}">	
					<tr>
					<th>출발일시</th>
					<td>${sessionScope.data.starttime}</td>
					</tr>
					</c:if>
					<c:if test="${sessionScope.data.termtype eq '정기'}">
					<tr>
					<th>출발일시</th>
					<td>${sessionScope.data.starttime}</td>
					</tr>
					<tr>
					<th>종료일시</th>
					<td>${sessionScope.data.enddate }</td>
					</tr>
					<tr>
					<th>반복</th>
					<td>${sessionScope.data.days }</td>
					</tr>
					</c:if>
				
				<tr>
					<th>인원</th>
					<td>${sessionScope.data.mannum }</td>
					</tr>
					<tr>
					<th>성별</th>
					<td>${sessionScope.data.gender }</td>
					</tr>
					<tr>
					<th>흡연</th>
					<td>${sessionScope.data.smoking }</td>
				</tr>
				<tr>
				<th>추가 사항</th>
				<td><textarea class="col-xs-12" id="content" name="pluscontent" rows="5"></textarea></td>
			</tr>
              </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <div class="row">
        <div class="col-xs-4"></div>
        <div class="col-xs-8">
						<div class="col-xs-4">
							<button type="button"
								class="button button--ujarak button--border-thin button--text-thick"
								onclick="">이전</button>
						</div>
						<div class="col-xs-8">
							<button type="button" onclick="viewNextPage();"
								class="button button--ujarak button--border-thin button--text-thick button--next">다음</button>
						</div>
					</div></div>
       
				
        
      </div>
	
	
			
	
	</form>
	</div>
	</div>
	</section>
</body>
<script src="/final02/js/menu-classie.js"></script>
<script src="/final02/js/menu-main.js"></script>
</html>