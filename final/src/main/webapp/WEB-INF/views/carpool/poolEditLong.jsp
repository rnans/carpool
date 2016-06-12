<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>
#map{height:550px;}
</style>
<meta charset="UTF-8">
<title>파티풀 수정하기</title>
<link rel="shortcut icon" href="../favicon.ico">
<link href='http://fonts.googleapis.com/css?family=Raleway:400,300,700'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css"
	href="/final02/CSS/poolCommon.css" />
<link rel="stylesheet" type="text/css" href="/final02/CSS/buttons.css" />
<link rel="stylesheet" type="text/css" href="/final02/CSS/set2.css" />
<link rel="stylesheet" type="text/css"
	href="/final02/CSS/sambootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="/final02/CSS/menu_topexpand.css" />
<script src="/final02/js/selectFx.js"></script>
<script>
window.onload=function()
{
	var d = new Date();
	
	
	var yearEl=document.getElementById('yearEl');
	var monthEl=document.getElementById('monthEl');
	var dayEl=document.getElementById('dayEl');
	var hourEl=document.getElementById("hourEl");
	
	var sTime='${dto.starttime}';
	
	var sApm='오전';
	
	var type='${dto.termtype}';
		
	
		var sDate='${dto.startdate}';
		var sYear=sDate.substring(0,4);
		var sMonth=sDate.substring(5,7);
		var sDays=sDate.substring(8,10);
		
		var eDate='${dto.enddate}';
		var eYear=eDate.substring(0,4);
		var eMonth=eDate.substring(5,7);
		var eDays=eDate.substring(8,10);
		
		
		
		var yearEl=document.getElementById('lsy');
		var monthEl=document.getElementById('lsm');
		
		var yearEl2=document.getElementById('ley');
		var monthEl2=document.getElementById('lem');
	
	
		var hourEl=document.getElementById("lh");
			
			for(var i=d.getFullYear();i<d.getFullYear()+5;i++)
			{
			
				yearEl.innerHTML+='<option>'+i+'</option>';
				yearEl2.innerHTML+='<option>'+i+'</option>';
			}
					
			for(var i=1;i<=12;i++)
			{
				if(i==sMonth)
				{
					monthEl.innerHTML+='<option value="'+i+'" selected>'+i+'</option>';
					
				}
				if(i==eMonth)
				{
					monthEl2.innerHTML+='<option value="'+i+'" selected>'+i+'</option>';	
				}
				monthEl.innerHTML+='<option value="'+i+'">'+i+'</option>';
				monthEl2.innerHTML+='<option value="'+i+'">'+i+'</option>';
			
			}
			
			
			
			setDays2();
			setDays3();
			
			for(var i=1;i<=12;i++)
			{
				if(d.getHours()-12>0)
				{
					if(i==(d.getHours()-12))
					{
						hourEl.innerHTML+='<option value="'+i+'" selected>'+i+'</option>';
					}
					hourEl.innerHTML+='<option value="'+i+'">'+i+'</option>';
				}
				else if(i==d.getHours())
				{
					hourEl.innerHTML+='<option value="'+i+'" selected>'+i+'</option>';
				}
				else
				{
					hourEl.innerHTML+='<option value="'+i+'">'+i+'</option>';
				}
			}
			
			var apmEl=document.getElementById('lapm');
			
			if((d.getHours()-12)>=0)
			{
				 sApm='오후';
			}
		
		var days='${dto.days}';
		
		var arrDays=days.split('');
		
		var monEl=document.getElementById('mon');
		var tueEl=document.getElementById('tue');
		var wedEl=document.getElementById('wed');
		var thuEl=document.getElementById('thu');
		var friEl=document.getElementById('fri');
		var satEl=document.getElementById('sat');
		var sunEl=document.getElementById('sun');
		
		for(var i=0;i<arrDays.length;i++)
		{
			if(arrDays[i]==monEl.value)
			{
				monEl.checked=true;
			}
			else if(arrDays[i]==tueEl.value)
			{
				tueEl.checked=true;
			}
			else if(arrDays[i]==wedEl.value)
			{
				wedEl.checked=true;
			}
			else if(arrDays[i]==thuEl.value)
			{
				thuEl.checked=true;
			}
			else if(arrDays[i]==friEl.value)
			{
				friEl.checked=true;
			}
			else if(arrDays[i]==satEl.value)
			{
				satEl.checked=true;
			}
			else if(arrDays[i]==sunEl.value)
			{
				sunEl.checked=true;
			}
		}
		
		
		
	

	var smoke='${dto.smoking}';
	var smokingEl=document.getElementById('smoke');
	var nonsmokingEl=document.getElementById('nonsmoke');
	if(smokingEl.value==smoke)
	{
		smokingEl.checked=true;
	}
	if(nonsmokingEl.value==smoke)
	{
		nonsmokingEl.checked=true;
	}
	
	var aim='${dto.aim}';
	
	var aimEl=document.getElementById('aim');
	for(var i=0;i<aimEl.options.length;i++)
	{
		if(aimEl.options[i].value==aim)
		{
			aimEl.options[i].selected=true;
		}
	}
	
	var gender='${dto.gender}';
	
	var genderEl=document.getElementById('gender');
	for(var i=0;i<genderEl.options.length;i++)
	{
		if(genderEl.options[i].value==gender)
		{
			genderEl.options[i].selected=true;
		}
	}
	
	var sapmEl = document.getElementById('lapm');
	for (var i = 0; i < sapmEl.options.length; i++) {
		if (sapmEl.options[i].value == sApm) {
			sapmEl.options[i].selected = true;
		}
	}

	[].slice.call(document.querySelectorAll('select.cs-select')).forEach(
			function(el) {
				new SelectFx(el);
			});
}
 
function setDays()
{
	var days=30;
	
	var sDate='${dto.starttime}';
	var sDays=sDate.substring(8,10);
	
	if(monthEl.value==1||monthEl.value==3||monthEl.value==5||monthEl.value==7||monthEl.value==8||monthEl.value==10||monthEl.value==12)
	{
		days=31;
	}
	else if(monthEl.value==2)
	{
		days=29;
	}
	else
	{
		
	}
		
	for(var i=1;i<=days;i++)
	{
		if(i==sDays)
		{
			dayEl.innerHTML+='<option value="'+i+'" selected>'+i+'</option>';
		}
		else
		{
			dayEl.innerHTML+='<option value="'+i+'">'+i+'</option>';
		}
		

	}
		

}



function setDays3()
{
	var days=30;
	
	var sDate='${dto.enddate}';
	var sDays=sDate.substring(8,10);
	
	var monthEl=document.getElementById('lem');
	var dayEl2=document.getElementById('led');
	
	if(monthEl.value==1||monthEl.value==3||monthEl.value==5||monthEl.value==7||monthEl.value==8||monthEl.value==10||monthEl.value==12)
	{
		days=31;
	}
	else if(monthEl.value==2)
	{
		days=29;
	}
	else
	{
		
	}
		
	for(var i=1;i<=days;i++)
	{
		if(i==sDays)
		{
			dayEl2.innerHTML+='<option value="'+i+'" selected>'+i+'</option>';
		}
		else
		{
			dayEl2.innerHTML+='<option value="'+i+'">'+i+'</option>';
		}
		

	}

}

function setDays2()
{
	var days=30;
	
	var sDate='${dto.startdate}';
	var sDays=sDate.substring(8,10);

	var monthEl=document.getElementById('lsm');
	var dayEl=document.getElementById('lsd');
	
	if(monthEl.value==1||monthEl.value==3||monthEl.value==5||monthEl.value==7||monthEl.value==8||monthEl.value==10||monthEl.value==12)
	{
		days=31;
	}
	else if(monthEl.value==2)
	{
		days=29;
	}
	else
	{
		
	}
		
	for(var i=1;i<=days;i++)
	{
		if(i==sDays)
		{
			dayEl.innerHTML+='<option value="'+i+'" selected>'+i+'</option>';
		}
		else
		{
			dayEl.innerHTML+='<option value="'+i+'">'+i+'</option>';
		}
		

	}

}


</script>
</head>
<body>
<%@include file="../header.jsp" %>
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
		<div class="col-md-12">
			<h1 class="main--title">
				${dto.pooltype } 카풀 수정 <small>${dto.termtype }카풀 요청 글을
					수정합니다.</small>
			</h1>
		</div>
		<article>
			<div>
				<div id="map" class="col-md-12"></div>

				<form id="f" name="poolEdit" action="poolEdit.do" method="GET">
					<input type="hidden" id="sdate" value="${dto.starttime}"> <input
						type="hidden" name="idx" value="${dto.idx}">

					<div class="row">
						<div class="col-md-12">
							<div class="col-md-4">카풀을 하려는 목적을 선택해 주세요.</div>
							<div class="col-md-8">출발지와 목적지를 선택해 주세요.</div>
						</div>
						<div id="div2" class="col-md-12">
							<input type="hidden" name="pooltype" value="${dto.pooltype }">
							<div class="col-md-4">
								<section style="margin-top: 13%">
									<br> <select id="aim" name="aim"
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
									<input class="input__field input__field--nao" type="text"
										id="ss" name="startspot" value="${dto.startspot }"><br>
									<input type="hidden" id="sc" name="startcoordi"
										value="${dto.startcoordi }"> <label
										class="input__label input__label--nao" for="ss"> <span
										class="input__label-content input__label-content--nao">출발지</span>
									</label>
									<svg class="graphic graphic--nao" width="300%" height="100%"
										viewBox="0 0 1200 60" preserveAspectRatio="none">
						<path
											d="M0,56.5c0,0,298.666,0,399.333,0C448.336,56.5,513.994,46,597,46c77.327,0,135,10.5,200.999,10.5c95.996,0,402.001,0,402.001,0" />
					</svg>
								</div>
								<input type="hidden" id="sLat" name="sLat" value="${dto.slat }"> <input
									type="hidden" id="sLng" name="sLng" value="${dto.slng }"> <br>
								<div class="input input--nao col-md-12">
									<input class="input__field input__field--nao" type="text"
										id="es" value="${dto.endspot }" name="endspot"><br>
									<input type="hidden" id="ec" name="endcoordi"
										value="${dto.endcoordi }"> <label
										class="input__label input__label--nao" for="es"> <span
										class="input__label-content input__label-content--nao">목적지</span>
									</label>
									<svg class="graphic graphic--nao" width="300%" height="100%"
										viewBox="0 0 1200 60" preserveAspectRatio="none">
						<path
											d="M0,56.5c0,0,298.666,0,399.333,0C448.336,56.5,513.994,46,597,46c77.327,0,135,10.5,200.999,10.5c95.996,0,402.001,0,402.001,0" />
					</svg>
								</div>
								<input type="hidden" id="eLat" name="eLat"  value="${dto.elat }"/> <input
									type="hidden" id="eLng" name="eLng" value="${dto.elng}" />
							</div>
						</div>
					</div>

					<input type="hidden" id="termtype" name="termtype"
						value="${dto.termtype }">

				<div class="row">
					<div class="col-md-1">시작일</div>
					<div class="col-md-5">
						<div class="col-md-4">
							<select class="cs-select cs-skin-border" id="lsy" name="lsy">
							</select>년
						</div>
						<div class="col-md-4">
							<select class="cs-select cs-skin-border" id="lsm" name="lsm"
								onchange="setDays()">
							</select>월
						</div>
						<div class="col-md-4">
							<select class="cs-select cs-skin-border" id="lsd" name="lsd">
							</select>일
						</div>
					</div>
					<div class="col-md-1">종료일</div>
					<div class="col-md-5">
						<div class="col-md-4">
							<select class="cs-select cs-skin-border" id="ley" name="ley">
							</select>년
						</div>
						<div class="col-md-4">
							<select class="cs-select cs-skin-border" id="lem" name="lem"
								onchange="setDays2()">
							</select>월
						</div>
						<div class="col-md-4">
							<select class="cs-select cs-skin-border" id="led" name="led">
							</select>일
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-1">출발시간</div>
					<div class="col-md-5">
						<div class="col-md-4">
							<select class="cs-select cs-skin-border" id="lapm" name="lapm">
								<option>오전</option>
								<option>오후</option>
							</select>APM
						</div>
						<div class="col-md-4">
							<select class="cs-select cs-skin-border" id="lh" name="lh">
							</select>시
						</div>
						<div class="col-md-4">
							<select class="cs-select cs-skin-border" id="lmi" name="lmi">
								<option value="00">00</option>
								<option value="30">30</option>
							</select>분
						</div>
					</div>
					<div class="col-md-1">반복</div>
					<div class="col-md-5">
						<div class="col-md-1">
							<input type="checkbox" id="mon" name="mon" value="월">월
						</div>
						<div class="col-md-1">
							<input type="checkbox" id="tue" name="tue" value="화">화
						</div>
						<div class="col-md-1">
							<input type="checkbox" id="wed" name="wed" value="수">수
						</div>
						<div class="col-md-1">
							<input type="checkbox" id="thu" name="thu" value="목">목
						</div>
						<div class="col-md-1">
							<input type="checkbox" id="fri" name="fri" value="금">금
						</div>
						<div class="col-md-1">
							<input type="checkbox" id="sat" name="sat" value="토">토
						</div>
						<div class="col-md-1">
							<input type="checkbox" id="sun" name="sun" value="일">일
						</div>
					</div>
				</div>

					<div class="row">
						<div class="col-md-12">인원과 요금을 입력해주세요.</div>
						<div class="col-md-6">

							<div class="input input--nao col-md-12">
								<input class="input__field input__field--nao" type="number"
									value="${dto.mannum }" id="mannum" name="mannum"
									placeholder="인원 수를 입력하세요."><br> <label
									class="input__label input__label--nao" for="mannum"> <span
									class="input__label-content input__label-content--nao">인원</span>
								</label>
								<svg class="graphic graphic--nao" width="300%" height="100%"
									viewBox="0 0 1200 60" preserveAspectRatio="none">
						<path
										d="M0,56.5c0,0,298.666,0,399.333,0C448.336,56.5,513.994,46,597,46c77.327,0,135,10.5,200.999,10.5c95.996,0,402.001,0,402.001,0" />
					</svg>
							</div>
						</div>
						<div class="col-md-6">
							<div class="input input--nao col-md-12">
								<input class="input__field input__field--nao" type="number"
									value="${dto.pay}" id="pay" name="pay"
									placeholder="금액을 입력하세요(원)"><br> <label
									class="input__label input__label--nao" for="pay"> <span
									class="input__label-content input__label-content--nao">요금</span>
								</label>
								<svg class="graphic graphic--nao" width="300%" height="100%"
									viewBox="0 0 1200 60" preserveAspectRatio="none">
						<path
										d="M0,56.5c0,0,298.666,0,399.333,0C448.336,56.5,513.994,46,597,46c77.327,0,135,10.5,200.999,10.5c95.996,0,402.001,0,402.001,0" />
					</svg>
							</div>

						</div>

						<div class="col-md-2">성별</div>
						<div class="col-md-4">
							<select class="cs-select cs-skin-border" id="gender"
								name="gender">
								<option>상관없음</option>
								<option>남성만</option>
								<option>여성만</option>
							</select>

						</div>

						<div class="col-md-2" style="vertical-align: middle;">흡연여부</div>
						<div class="col-md-4">
							<div class="col-md-6">
								<input type="radio" id="smoke" name="smoking" value="흡연">흡연

							</div>

							<div class="col-md-6">
								<input type="radio" id="nonsmoke" name="smoking" value="비흡연">
								비흡연
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-xs-2">추가사항</div>
						
							<textarea class="col-xs-10" rows="5" name="pluscontent">${dto.pluscontent}</textarea>
					</div>
			
	<div class="row">
					<div class="col-md-4"></div>
					<div class="col-md-8">
						<div class="col-md-4">
							<button type="button"
								class="button button--ujarak button--border-thin button--text-thick"
								onclick="location.href='poolEachContent.do?idx=${dto.idx}&termtype=${dto.termtype}'">취소</button>
						</div>
						<div class="col-md-8">
							<button type="submit"
								class="button button--ujarak button--border-thin button--text-thick button--next">수정 완료</button>
						</div>
					</div>
				</div>
		
			</form>
			</div>



		</article>
		</div>
		</div>
	</section>

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

		var scoordi = scoordis.split(',');
		var ecoordi = ecoordis.split(',');

		var startX;
		var startY;
		var endX;
		var endY;

		for (var i = 0; i < scoordi.length; i++) {

			if (i == 0) {
				startX = scoordi[i].substring(1, scoordi[i].length);

			}
			if (i == 1) {
				startY = scoordi[i].substring(0, scoordi[i].length - 1);

			}
		}

		for (var i = 0; i < ecoordi.length; i++) {

			if (i == 0) {
				endX = ecoordi[i].substring(1, ecoordi[i].length);

			}
			if (i == 1) {
				endY = ecoordi[i].substring(0, ecoordi[i].length - 1);

			}
		}

	
		
		var scoords = new daum.maps.LatLng(startX, startY);
		var ecoords = new daum.maps.LatLng(endX, endY);

		var sImgSrc = 'http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/red_b.png'
		var aImgSrc = 'http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/blue_b.png'

				imgSrc = 'http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/red_b.png', // 출발 마커이미지의 주소입니다    
				imgSize = new daum.maps.Size(50, 45), // 출발 마커이미지의 크기입니다 
				imgOption = {
					offset : new daum.maps.Point(15, 43)
				// 출발 마커이미지에서 마커의 좌표에 일치시킬 좌표를 설정합니다 (기본값은 이미지의 가운데 아래입니다)
				};

		// 마커 이미지를 생성합니다
		var sMarkerImg = new daum.maps.MarkerImage(sImgSrc, imgSize, imgOption);
		var eMarkerImg = new daum.maps.MarkerImage(aImgSrc, imgSize, imgOption);

		// 결과값으로 받은 위치를 마커로 표시합니다
		var sMarker = new daum.maps.Marker({
			map : map,
			position : scoords,
			draggable : true,
			title : '출발지',
			image : sMarkerImg

		});

		// 결과값으로 받은 위치를 마커로 표시합니다
		var eMarker = new daum.maps.Marker({
			map : map,
			position : ecoords,
			draggable : true,
			title : '도착지',
			image : eMarkerImg
		});

		sMarker.setMap(map);
		eMarker.setMap(map);

		markers.push(sMarker);
		markers.push(eMarker);

		var bounds = new daum.maps.LatLngBounds();

		bounds.extend(scoords);
		bounds.extend(ecoords);
		map.setBounds(bounds);

		var sTitle = sMarker.getTitle();
		var eTitle = eMarker.getTitle();

	
		// 출발 마커에 dragstart 이벤트를 등록합니다
		daum.maps.event.addListener(sMarker, 'dragstart', function() {
			if (sTitle == '출발지') {
				
			} else if (sTitle == '도착지') {
				
			}
		});

		daum.maps.event.addListener(sMarker, "dragend", function() {

			var coord = sMarker.getPosition();

			var nLat = coord.getLat();
			var nLng = coord.getLng();

			if (sTitle == '출발지') {
				document.getElementById('sc').value = sMarker.getPosition();
				document.getElementById('sLat').value = nLat;
				document.getElementById('sLng').value = nLng;
			} else if (sTitle == '도착지') {
				document.getElementById('ec').value = sMarker.getPosition();
				document.getElementById('eLat').value = nLat;
				document.getElementById('eLng').value = nLng;
			}

			var geocoder = new daum.maps.services.Geocoder();

			geocoder.coord2detailaddr(coord, scallback);
			var scallback = function(status, result) {
				if (status === daum.maps.services.Status.OK) {

					if (sTitle == '출발지') {

						document.getElementById('ss').value = '대한민국 '
								+ result[0].jibunAddress.name;

					} else if (sTitle == '도착지') {
						document.getElementById('es').value = '대한민국 '
								+ result[0].jibunAddress.name;
					}

				}

			};
		});

		// 출발 마커에 dragstart 이벤트를 등록합니다
		daum.maps.event.addListener(eMarker, 'dragstart', function() {
			if (eTitle == '출발지') {
				
			} else if (eTitle == '도착지') {
				
			}
		});

		daum.maps.event.addListener(eMarker, "dragend", function() {

			var coord = eMarker.getPosition();

			var nLat = coord.getLat();
			var nLng = coord.getLng();

			if (eTitle == '출발지') {
				document.getElementById('sc').value = eMarker.getPosition();
				document.getElementById('sLat').value = nLat;
				document.getElementById('sLng').value = nLng;

			} else if (eTitle == '도착지') {
				document.getElementById('ec').value = eMarker.getPosition();
				document.getElementById('eLat').value = nLat;
				document.getElementById('eLng').value = nLng;
			}

			var geocoder = new daum.maps.services.Geocoder();

			geocoder.coord2detailaddr(coord, ecallback);

			var ecallback = function(status, result) {
				if (status === daum.maps.services.Status.OK) {

					if (eTitle == '출발지') {

						document.getElementById('ss').value = '대한민국 '
								+ result[0].jibunAddress.name;

					} else if (eTitle == '도착지') {
						document.getElementById('es').value = '대한민국 '
								+ result[0].jibunAddress.name;
					}

				}

			};

		});

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

													var nLat = coord.getLat();
													var nLng = coord.getLng();

													if (title == '출발지') {
														document
																.getElementById('sc').value = marker
																.getPosition();
														document
																.getElementById('sLat').value = nLat;
														document
																.getElementById('sLng').value = nLng;
													} else if (title == '도착지') {
														document
																.getElementById('ec').value = marker
																.getPosition();
														document
																.getElementById('eLat').value = nLat;
														document
																.getElementById('eLng').value = nLng;
													}

													var geocoder = new daum.maps.services.Geocoder();

													geocoder.coord2detailaddr(
															coord, callback);

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
</body>
<script src="/final02/js/menu-classie.js"></script>
<script src="/final02/js/menu-main.js"></script>
</html>