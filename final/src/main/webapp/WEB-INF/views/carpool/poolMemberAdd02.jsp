<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
#map {
	height: 500px;
	width: 100%;
}
</style>
<link rel="shortcut icon" href="../favicon.ico">
<link href='http://fonts.googleapis.com/css?family=Raleway:400,300,700'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css"
	href="/final02/CSS/poolCommon.css" />
<link rel="stylesheet" type="text/css" href="/final02/CSS/buttons.css" />
<link rel="stylesheet" type="text/css" href="/final02/CSS/set2.css" />
<link rel="stylesheet" type="text/css" href="/final02/CSS/sambootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="/final02/CSS/menu_topexpand.css" />
</head>
<body>
	<%@ include file="../header.jsp"%>
	<link rel="stylesheet" type="text/css"
		href="/final02/CSS/cs-select.css" />
	<link rel="stylesheet" type="text/css"
		href="/final02/CSS/cs-skin-border.css" />
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
				카풀 등록 <small>카풀 목적, 출발지, 목적지 선택</small>
			</h1>
		</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="col-md-4">카풀을 하려는 목적을 선택해 주세요.</div>
				<div class="col-md-8">출발지와 목적지를 선택해 주세요.</div>
			</div>
			<div id="div2" class="col-md-12">
				<form name="geoInfo" action="poolMemberAdd03.do">
					<input type="hidden" name="pooltype" value="타세요">
					<div class="col-md-4">
						<section style="margin-top: 13%">
							<br> <select id="type" name="aim"
								class="cs-select cs-skin-border">
								<option value="출/퇴근">출/퇴근</option>
								<option value="드라이브">드라이브</option>
								<option value="좋은 만남">좋은만남</option>
								<option value="명절">명절</option>
							</select>
						</section>
					</div>
					<div class="col-md-8">
						<div class="input input--nao col-md-12">
							<input class="input__field input__field--nao" type="text" id="ss"
								name="startspot"><br> <input type="hidden" id="sc"
								name="startcoordi"> <label
								class="input__label input__label--nao" for="ss"> <span
								class="input__label-content input__label-content--nao">출발지</span>
							</label>
							<svg class="graphic graphic--nao" width="300%" height="100%"
								viewBox="0 0 1200 60" preserveAspectRatio="none">
						<path
									d="M0,56.5c0,0,298.666,0,399.333,0C448.336,56.5,513.994,46,597,46c77.327,0,135,10.5,200.999,10.5c95.996,0,402.001,0,402.001,0" />
					</svg>
						</div>
						<input type="hidden" id="sLat" name="sLat"> <input
							type="hidden" id="sLng" name="sLng"> <br>
						<div class="input input--nao col-md-12">
							<input class="input__field input__field--nao" type="text" id="es"
								name="endspot"><br> <input type="hidden" id="ec"
								name="endcoordi"> <label
								class="input__label input__label--nao" for="es"> <span
								class="input__label-content input__label-content--nao">목적지</span>
							</label>
							<svg class="graphic graphic--nao" width="300%" height="100%"
								viewBox="0 0 1200 60" preserveAspectRatio="none">
						<path
									d="M0,56.5c0,0,298.666,0,399.333,0C448.336,56.5,513.994,46,597,46c77.327,0,135,10.5,200.999,10.5c95.996,0,402.001,0,402.001,0" />
					</svg>
						</div>
						<input type="hidden" id="eLat" name="eLat" /> <input type="hidden"
							id="eLng" name="eLng" />
						<div class="col-md-4">
							<button type="button" onclick="findList()"
								class="button button--ujarak button--border-thin button--text-thick"
								onclick="editCarinfo()">이전</button>
						</div>
						<div class="col-md-8">
							<button type="submit" onclick="findList()"
								class="button button--ujarak button--border-thin button--text-thick button--next">다음</button>
						</div>
					</div>




				</form>
			</div>


		</div>
		<div id="map" class="col-md-12"></div>
		<script src="http://code.jquery.com/jquery-latest.js"></script>
		<script
			src="//apis.daum.net/maps/maps3.js?apikey=140c866172be3f537fee6199c675008a&libraries=services,clusterer"></script>


		<script>
			var id;
			$('input').focus(function(e) {
				id = e.target.id

				initAutocomplete(id);
			})

			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			mapOption = {
				center : new daum.maps.LatLng(37.566535, 126.97796919999996), // 지도의 중심좌표
				level : 6, // 지도의 확대 레벨
				mapTypeId : daum.maps.MapTypeId.ROADMAP
			// 지도종류
			};

			// 지도를 생성한다 
			var map = new daum.maps.Map(mapContainer, mapOption);

			var markers = new Array();
			var infowindows = new Array();

			var scoordis = document.getElementById('sc').value;
			var ecoordis = document.getElementById('ec').value;

			var bounds = new daum.maps.LatLngBounds();

			function initAutocomplete(id) {

				var input = /** @type {!HTMLInputElement} */
				(document.getElementById(id));

				var sImgSrc = 'http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/red_b.png'
				var aImgSrc = 'http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/blue_b.png'

						imgSrc = 'http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/red_b.png', // 출발 마커이미지의 주소입니다    
						imgSize = new daum.maps.Size(50, 45), // 출발 마커이미지의 크기입니다 
						imgOption = {
							offset : new daum.maps.Point(15, 43)
						// 출발 마커이미지에서 마커의 좌표에 일치시킬 좌표를 설정합니다 (기본값은 이미지의 가운데 아래입니다)
						};

				var title = '';

				if (id == 'ss') {
					title = '출발지';
					imgSrc = sImgSrc;
				} else if (id == 'es') {
					title = '도착지';
					imgSrc = aImgSrc;
				}

				// 마커 이미지를 생성합니다
				var markerImg = new daum.maps.MarkerImage(imgSrc, imgSize,
						imgOption);

				autocomplete = new google.maps.places.Autocomplete(
				/** @type {!HTMLInputElement} */
				(input), {
					types : [ 'geocode' ]
				});

				autocomplete
						.addListener(
								'place_changed',
								function() {

									var place = autocomplete.getPlace();

									if (!place.geometry) {
										window
												.alert("Autocomplete's returned place contains no geometry");
										return;
									}

									// If the place has a geometry, then present it on a map.
									if (place.geometry.viewport) {
										//map.fitBounds(place.geometry.viewport);
									} else {
										//map.setCenter(place.geometry.location);
										//map.setZoom(17);  // Why 17? Because it looks good.
									}

									var address = '';
									var location = '';
									var lat = '';
									var lng = '';

									if (place.formatted_address) {
										address = place.formatted_address;
										location = place.geometry.location;
										lat = location.lat();
										lng = location.lng();

									}

									if (title == '출발지') {
										document.getElementById('sc').value = location
												.toString();
										document.getElementById('sLat').value = lat;
										document.getElementById('sLng').value = lng;
									} else if (title == '도착지') {
										document.getElementById('ec').value = location
												.toString();
										document.getElementById('eLat').value = lat;
										document.getElementById('eLng').value = lng;
									}

									
									// 주소-좌표 변환 객체를 생성합니다
									var geocoder = new daum.maps.services.Geocoder();

									var coords = new daum.maps.LatLng(lat, lng);

									geocoder.coord2detailaddr(coords, callback);

									// 결과값으로 받은 위치를 마커로 표시합니다
									var marker = new daum.maps.Marker({
										map : map,
										position : coords,
										draggable : true,
										title : title,
										image : markerImg
									});

									bounds.extend(coords);
									map.setBounds(bounds);

									// 출발 마커에 dragstart 이벤트를 등록합니다
									daum.maps.event
											.addListener(
													marker,
													'dragstart',
													function() {
														if (title == '출발지') {
															document
																	.getElementById('ss').value = "";
														} else if (title == '도착지') {
															document
																	.getElementById('es').value = "";
														}
													});

									daum.maps.event
											.addListener(
													marker,
													"dragend",
													function() {

														var coord = marker
																.getPosition();

														var nLat=coord.getLat();
														var nLng=coord.getLng();

														if (title == '출발지') {
															document
																	.getElementById('sc').value = marker
																	.getPosition();
															document.getElementById('sLat').value=nLat;
															document.getElementById('sLng').value=nLng;
														} else if (title == '도착지') {
															document
																	.getElementById('ec').value = marker
																	.getPosition();
															document.getElementById('eLat').value=nLat;
															document.getElementById('eLng').value=nLng;
														}

														var geocoder = new daum.maps.services.Geocoder();

														geocoder
																.coord2detailaddr(
																		coord,
																		callback);

													});

									for (var i = 0; i < markers.length; i++) {
										if (markers[i].getTitle() == title) {
											markers[i].setMap(null);
											/* infowindows[i].close(); */

										}
									}
									markers.push(marker);

									// 인포윈도우로 장소에 대한 설명을 표시합니다
									/* var infowindow = new daum.maps.InfoWindow({
									    content: '<div style="padding:5px;">'+title+'</div>'
									});
									infowindow.open(map, marker);
									infowindows.push(infowindow); */
									var callback = function(status, result) {
										if (status === daum.maps.services.Status.OK) {

											if (title == '출발지') {

												document.getElementById('ss').value = '대한민국 '
														+ result[0].jibunAddress.name;

											} else if (title == '도착지') {
												document.getElementById('es').value = '대한민국 '
														+ result[0].jibunAddress.name;
											}

										}

									};
								});
			}
		</script>
		<script
			src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCJz53NRCX_RWtNSeoAbPveANaDjlQF1tU&libraries=places&callback=initAutocomplete"
			async defer></script>
		<script src="/final02/js/selectFx.js"></script>
		<script>
			(function() {
				[].slice.call(document.querySelectorAll('select.cs-select'))
						.forEach(function(el) {
							new SelectFx(el);
						});
			})();
		</script>
		</div>
		</div>
	</section>
</body>
<script src="/final02/js/menu-classie.js"></script>
<script src="/final02/js/menu-main.js"></script>
</html>