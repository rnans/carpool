<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
	href="/final02/CSS/poolCommon.css" />

<link rel="stylesheet" type="text/css"
	href="/final02/CSS/menu_topexpand.css" />
</head>
<body onload="initTmap()">
	<%@include file="../header.jsp"%>
	<link href="/final02/CSS/2colGrid.css" rel="stylesheet">
	<link href="/final02/CSS/hover.css" rel="stylesheet">
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
				<div class="row">
					<div class="col-md-12">
						<h1 class="main--title">
							카풀 보기<small>원하시는 카풀을 찾아보세요.</small>
						</h1>
					</div>
				</div>

				<div class="row">
					<!-- Projects Row -->
					<c:if test="${empty list }">
    	작성된 글이 없습니다.
 	</c:if>
					<c:forEach var="dtos" items="${list }" varStatus="i">
						<c:url var="poolEachContent" value="poolEachContent.do">
							<c:param name="idx">${dtos.idx }</c:param>
						</c:url>
						<c:if test="${i.count%2==0}">
						
						</c:if>
						<div class="col-md-6 col-sm-6 portfolio-item">
							<div class="innerDiv">
								<a href="${poolEachContent }" class="portfolio-link"
									data-toggle="modal">
									<div id="map_div${dtos.idx }" class="mapDiv"
										style="z-index: -1;"></div>
								</a>
								<div class="main-content">
									<h3>${dtos.startspot}</h3>
									<h3 style="text-align: center">
										<img src="/final02/img/down-arrow.png">
									</h3>
									<h3>${dtos.endspot }</h3>
								</div>
								<p class="text-right">
									<span class="glyphicon glyphicon-calenda" aria-hidden="true"></span>
									${dtos.termtype} <span class="text-right"><i class="fa fa-users" aria-hidden="true"></i> ${dtos.mannum }/ <i class="fa fa-krw" aria-hidden="true"></i> ${dtos.pay }</span>
								</p>
								<p class="text-right">
								<i
					class="fa fa-calendar" aria-hidden="true"></i><span class="glyphicon glyphicon-calenda" aria-hidden="true"> ${dtos.starttime}</span>
								</p>
							</div>
						</div>
						<c:if test="${i.count%2==0}">
					
					</c:if>
				</c:forEach>
				   <!-- Pagination -->
        <div class="row text-center">
            <div class="col-lg-12">
                <ul class="pagination">
				${pageStr }
				</ul>
				</div>
				</div>
			</div>
		</div>
	</section>
	<script src="/final02/js/jquery-1.12.4.min.js"></script>
	<script
		src="https://apis.skplanetx.com/tmap/js?version=1&format=javascript&appKey=2e2fe45c-1baa-3078-b615-2c0b3f71bfe5"></script>
	<script>
		//초기화 함수
		function initTmap() {

			<c:forEach var="dtos" items="${list }">

			map = new Tmap.Map({
				div : 'map_div' + '${dtos.idx}',
				width : '100%',
				height : '400px',
				transitionEffect : "resize",
				animation : true
			});

			//pr_3857 인스탄스 생성.
			var pr_3857 = new Tmap.Projection("EPSG:3857");

			//pr_4326 인스탄스 생성.
			var pr_4326 = new Tmap.Projection("EPSG:4326");

			var scoordi = '${dtos.startcoordi}'.split(',');
			var ecoordi = '${dtos.endcoordi}'.split(',');

			var startX;
			var startY;
			var endX;
			var endY;

			for (var i = 0; i < scoordi.length; i++) {

				if (i == 0) {
					startY = scoordi[i].substring(1, scoordi[i].length);

				}
				if (i == 1) {
					startX = scoordi[i].substring(0, scoordi[i].length - 1);

				}
			}

			for (var i = 0; i < ecoordi.length; i++) {

				if (i == 0) {
					endY = ecoordi[i].substring(1, ecoordi[i].length);

				}
				if (i == 1) {
					endX = ecoordi[i].substring(0, ecoordi[i].length - 1);

				}
			}

			var sCoordi = new Tmap.LonLat(startX, startY).transform(pr_4326,
					pr_3857);
			var eCoordi = new Tmap.LonLat(endX, endY).transform(pr_4326,
					pr_3857);

			var bounds = new Tmap.Bounds();

			bounds.extend(sCoordi);
			bounds.extend(eCoordi);

			searchRoute(startX, startY, endX, endY);

			map.zoomToExtent(bounds);

			</c:forEach>
		};
		//경로 정보 로드
		function searchRoute(startX, startY, endX, endY) {
			var routeFormat = new Tmap.Format.KML({
				extractStyles : true,
				extractAttributes : true
			});
			var urlStr = "https://apis.skplanetx.com/tmap/routes?version=1&format=xml";
			urlStr += "&reqCoordType=" + 'WGS84GEO';
			urlStr += "&startX=" + startX;
			urlStr += "&startY=" + startY;
			urlStr += "&endX=" + endX;
			urlStr += "&endY=" + endY;
			urlStr += "&appKey=2e2fe45c-1baa-3078-b615-2c0b3f71bfe5";
			var prtcl = new Tmap.Protocol.HTTP({
				url : urlStr,
				format : routeFormat
			});
			var routeLayer = new Tmap.Layer.Vector("route", {
				protocol : prtcl,
				strategies : [ new Tmap.Strategy.Fixed() ]
			});
			routeLayer.events.register("featuresadded", routeLayer);
			map.addLayer(routeLayer);

		}
	</script>



</body>
<script src="/final02/js/menu-classie.js"></script>
<script src="/final02/js/menu-main.js"></script>
</html>
