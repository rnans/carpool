<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="../favicon.ico">
<link rel="stylesheet" type="text/css"
	href="/final02/CSS/poolCommon.css" />
<link rel="stylesheet" type="text/css" href="/final02/CSS/buttons.css" />
<link rel="stylesheet" type="text/css" href="/final02/CSS/set2.css" />
<link rel="stylesheet" type="text/css"
	href="/final02/CSS/eachNormalize.css" />
<link rel="stylesheet" type="text/css" href="/final02/CSS/eachDemo.css" />
<link rel="stylesheet" type="text/css"
	href="/final02/CSS/eachComponent.css" />
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="/final02//CSS/AdminLTE.min.css">
<!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet" href="/final02/CSS/_all-skins.min.css">

<!--[if IE]>
  		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->

<meta charset="UTF-8">
<style>
#map_div {
	
}
</style>
<title>카풀 상세 보기</title>
<script src="/final02/js/httpRequest.js"></script>
<script>
	function rateReq() {
		selEl = document.getElementById('rate');

		var rate;

		conEl = document.getElementById('content');

		var content = conEl.value;

		for (var i = 0; i < selEl.options.length; i++) {
			if (selEl.options[i].selected) {
				rate = selEl.options[i].value;
			}
		}

		var url = 'rateWrite.do';
		params = 'aimid=' + '${dto.userid}' + '&rate=' + rate + '&content='
				+ content;

		sendRequest(url, params, showResult, 'GET')

		function showResult() {
			if (XHR.readyState == 4) {
				if (XHR.status == 200) {
					var msg = XHR.responseText;

					window.alert(msg);
					location.reload();
				}
			}
		}
	}

	function rateEditReq() {
		selEl = document.getElementById('rate2');

		var rate;

		conEl = document.getElementById('content2');

		var content = conEl.value;

		for (var i = 0; i < selEl.options.length; i++) {
			if (selEl.options[i].selected) {
				rate = selEl.options[i].value;
			}
		}

		var url = 'rateEdit.do';
		params = 'idx=' + document.getElementById('rateIdx').value + '&rate='
				+ rate + '&content=' + content;

		sendRequest(url, params, showResult, 'GET')

		function showResult() {
			if (XHR.readyState == 4) {
				if (XHR.status == 200) {
					var msg = XHR.responseText;

					window.alert(msg);
					location.reload();
				}
			}
		}
	}

	function showEdit() {
		var param = '?idx=' + document.getElementById('idx').value;

		location.href = 'poolEditForm.do' + param;
	}
	function runDel() {
		var param = '?idx=' + document.getElementById('idx').value;

		location.href = 'poolDel.do' + param;
	}
	var userid = null;
	function message() {

		var param = "?userid=" + userid;
		window.open('messageSend.do' + param, 'messagesend',
				'width=480 height=320');
	}
	function request() {
		var param = '?idx=' + document.getElementById('idx').value;
		//alert('param='+param);
		location.href = "payType.do" + param;

		var poolType = '${dto.pooltype}';
		var termType = '${dto.termtype}';
		var param = '';

		window.alert(poolType);

		if (poolType == '탈래요' && termType == '단기') {
			var param = '?idx=' + document.getElementById('idx').value;
			location.href = 'upToMemberShort.do' + param;
		} else if (poolType == '탈래요' && termType == '정기') {
			var param = '?idx=' + document.getElementById('idx').value;
			location.href = 'upToMemberLong.do' + param;
		} else if (poolType == '타세요' && termType == '단기') {
			var param = '?idx=' + document.getElementById('idx').value;
			location.href = 'upToMasterShort.do' + param;
		} else if (poolType == '타세요' && termType == '정기') {
			var param = '?idx=' + document.getElementById('idx').value;
			location.href = 'upToMasterLong.do' + param;
		}

	}

	function delRate(idx) {
		var url = 'rateDel.do';
		params = 'idx=' + idx
		sendRequest(url, params, showResult, 'GET')
		function showResult() {
			if (XHR.readyState == 4) {
				if (XHR.status == 200) {
					var msg = XHR.responseText;

					window.alert(msg);
					location.reload();
				}
			}
		}
	}

	function modiRate(idx) {
		var tBodyEl = document.getElementById('tB');

		var trEl = document.getElementById('tr' + idx);
		trEl.style.display = "none";

		var newTrEl = document.createElement('tr');

		newTrEl.innerHTML = '<form name="reply" action="rateEdit.do">'
				+ '<input type="hidden" id="rateIdx" name="idx" value="'+idx+'">'
				+ '<input type="hidden" name="aimid" value="${dto.userid}">'
				+ '<select id="rate2" name="rate">'
				+ '<option value="1">1</option>'
				+ '<option value="2">2</option>'
				+ '<option value="3">3</option>'
				+ '<option value="4">4</option>'
				+ '<option value="5">5</option>' + '</select>'
				+ '<textarea id="content2" name="content">'
				+ '${rDtos[idx].content}' + '</textarea>'
				+ '<input type="button" onclick="rateEditReq();" value="수정완료">'
				+ '</form>';

		tBodyEl.insertBefore(newTrEl, trEl);
	}
</script>
</head>
<body onload="initTmap()" class="demo-2">
	<%@ include file="../header.jsp"%>

	<div id="eachContainer" class="container intro-effect-fadeout">
		<!-- Top Navigation -->
		<header class="header">
			<div class="bg-img">
				<div id="map_div"></div>
			</div>
			<div class="title">
				<h1>${dto.startspot }</h1>
				<h1 style="text-align: center">
					<img src="/final02/img/down-arrow.png">
				</h1>
				<h1>${dto.endspot }</h1>
				<h2>
					<img src="/final02/img/team.png"> &nbsp;&nbsp;<strong>${dto.mannum}명</strong>
					<img src="/final02/img/won.png"> &nbsp;&nbsp;${dto.pay }
				</h2>
				<h3>
					by <strong>${dto.userid }</strong> &#8212; 진행 상태 <strong>${dto.status }</strong>
					on <strong>${dto.starttime }</strong>
				</h3>
			</div>
		</header>
		<button class="trigger" data-info="상세 보기">
			<span>상세 보기</span>
		</button>
		<article class="content">
			<div style="background-color: #fff">
				<div class="row">
					<div class="col-md-12" style="margin-top: 5%; margin-bottom: 5%">
						<h1>
							카풀 상세 보기 <small>${dto.pooltype }</small>
							<a href="poolList.do"><i class="fa fa-bars pull-right" aria-hidden="true"></i></a>
							<c:if test="${dto.userid eq sid }">
							<a
								href="runDel()"><i class="fa fa-trash-o pull-right" aria-hidden="true"></i></a><a href="javascript:showEdit()"><i
								class="fa fa-pencil-square-o pull-right" aria-hidden="true"></i></a>
							</c:if>
						</h1>
					</div>
				</div>
				<div class="row">
					<div class="col-xs-12">
						<div class="box">
							<div class="box-header">
								<h3 class="box-title">상세 정보</h3>


							</div>
							<!-- /.box-header -->
							<div class="box-body table-responsive no-padding">
								<table class="table table-hover">
									<tr>
										<th>진행 상태</th>
										<td>${dto.status}</td>
									</tr>
									<tr>
										<th>출발지</th>
										<td>${dto.startspot}</td>
									</tr>
									<tr>
										<th>도착지</th>
										<td>${dto.endspot }</td>
									</tr>
									<tr>
										<th>출발 일시</th>
										<td>${dto.starttime }</td>
									</tr>
									<c:if test="${dto.termtype eq '정기' }">
										<tr>
											<th>종료 일시</th>
											<td>${dto.enddate }</td>
										</tr>
										<tr>
											<th>반복</th>
											<td>${dto.days }</td>
										</tr>
									</c:if>
									<tr>
										<th>목적</th>
										<td>${dto.aim }</td>
									</tr>
									<tr>
										<th>인원</th>
										<td>${dto.mannum }</td>
									</tr>
									<tr>
										<th>비용</th>
										<td>${dto.pay }</td>
									</tr>
									<tr>
										<th>성별</th>
										<td>${dto.gender }</td>
									</tr>
									<tr>
										<th>흡연</th>
										<td>${dto.smoking }</td>
									</tr>

								</table>
								<input type="hidden" id="idx" name="idx" value="${dto.idx}">
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-xs-12">

						<c:if test="${dto.userid ne sid}">
							<div class="row">
								<div class="col-xs-4"></div>
								<div class="col-xs-8">
									<div class="col-xs-4">
										<button type="button"
											class="button button--ujarak button--border-thin button--text-thick"
											onclick="">찜하기</button>
									</div>
									<div class="col-xs-8">
										<button type="button" onclick="request();"
											class="button button--ujarak button--border-thin button--text-thick button--next">예약하기</button>
									</div>
								</div>
							</div>
						</c:if>

						
					</div>
				</div>
				<div>
					<input type="button" value="쪽지보내기"
						onclick="javascript:userid='${dto.userid}';message();"> 댓글
					<c:if test="${empty rDtos}">
						<div>${msg}</div>
					</c:if>
					<table>
						<tbody id="tB">
							<c:forEach var="rDtos" items="${rDtos}">
								<tr id="tr${rDtos.idx}">
									<td>${rDtos.rate }</td>
									<td>${rDtos.userid}</td>
									<td>${rDtos.content }</td>
									<td>${rDtos.writedate }</td>
									<td><c:if test="${rDtos.userid eq sid}">
											<a href="javascript:modiRate(${rDtos.idx})">수정</a>
											<a href="javascript:delRate(${rDtos.idx})">삭제</a>
										</c:if></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>


			<c:if test="${sid ne dto.userid}">
				<div>
					댓글 달기
					<form name="reply" action="rateWrite.do">
						<input type="hidden" name="aimid" value="${dto.userid}"> <select
							id="rate" name="rate">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
						</select>
						<textarea id="content" name="content"></textarea>
						<input type="button" onclick="rateReq();" value="평가하기">
					</form>
				</div>
			</c:if>
		</article>


	</div>

	<!-- /container -->

</body>
<script src="/final02/js/jquery-1.12.4.min.js"></script>
<script
	src="https://apis.skplanetx.com/tmap/js?version=1&format=javascript&appKey=2e2fe45c-1baa-3078-b615-2c0b3f71bfe5"></script>
<script>
	//초기화 함수
	function initTmap() {

		map = new Tmap.Map({
			div : 'map_div',
			width : '100%',
			height : '100%',
			transitionEffect : "resize",
			animation : true
		});
		//pr_3857 인스탄스 생성.
		var pr_3857 = new Tmap.Projection("EPSG:3857");

		//pr_4326 인스탄스 생성.
		var pr_4326 = new Tmap.Projection("EPSG:4326");

		var scoordi = '${dto.startcoordi}'.split(',');
		var ecoordi = '${dto.endcoordi}'.split(',');

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
		var eCoordi = new Tmap.LonLat(endX, endY).transform(pr_4326, pr_3857);

		searchRoute(startX, startY, endX, endY);
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
		routeLayer.events
				.register("featuresadded", routeLayer, onDrawnFeatures);
		map.addLayer(routeLayer);

	}
	//경로 그리기 후 해당영역으로 줌
	function onDrawnFeatures(e) {
		map.zoomToExtent(this.getDataExtent());
	}
</script>
<script src="/final02/js/eachClassie.js"></script>
<script>
	(function() {

		// detect if IE : from http://stackoverflow.com/a/16657946		
		var ie = (function() {
			var undef, rv = -1; // Return value assumes failure.
			var ua = window.navigator.userAgent;
			var msie = ua.indexOf('MSIE ');
			var trident = ua.indexOf('Trident/');

			if (msie > 0) {
				// IE 10 or older => return version number
				rv = parseInt(ua.substring(msie + 5, ua.indexOf('.', msie)), 10);
			} else if (trident > 0) {
				// IE 11 (or newer) => return version number
				var rvNum = ua.indexOf('rv:');
				rv = parseInt(ua.substring(rvNum + 3, ua.indexOf('.', rvNum)),
						10);
			}

			return ((rv > -1) ? rv : undef);
		}());

		// disable/enable scroll (mousewheel and keys) from http://stackoverflow.com/a/4770179					
		// left: 37, up: 38, right: 39, down: 40,
		// spacebar: 32, pageup: 33, pagedown: 34, end: 35, home: 36
		var keys = [ 32, 37, 38, 39, 40 ], wheelIter = 0;

		function preventDefault(e) {
			e = e || window.event;
			if (e.preventDefault)
				e.preventDefault();
			e.returnValue = false;
		}

		function keydown(e) {
			for (var i = keys.length; i--;) {
				if (e.keyCode === keys[i]) {
					preventDefault(e);
					return;
				}
			}
		}

		function touchmove(e) {
			preventDefault(e);
		}

		function wheel(e) {
			// for IE 
			//if( ie ) {
			//preventDefault(e);
			//}
		}

		function disable_scroll() {
			window.onmousewheel = document.onmousewheel = wheel;
			document.onkeydown = keydown;
			document.body.ontouchmove = touchmove;
		}

		function enable_scroll() {
			window.onmousewheel = document.onmousewheel = document.onkeydown = document.body.ontouchmove = null;
		}

		var docElem = window.document.documentElement, scrollVal, isRevealed, noscroll, isAnimating, container = document
				.getElementById('eachContainer'), trigger = container
				.querySelector('button.trigger');

		function scrollY() {
			return window.pageYOffset || docElem.scrollTop;
		}

		function scrollPage() {
			scrollVal = scrollY();

			if (noscroll && !ie) {
				if (scrollVal < 0)
					return false;
				// keep it that way
				window.scrollTo(0, 0);
			}

			if (classie.has(container, 'notrans')) {
				classie.remove(container, 'notrans');
				return false;
			}

			if (isAnimating) {
				return false;
			}

			if (scrollVal <= 0 && isRevealed) {
				toggle(0);
			} else if (scrollVal > 0 && !isRevealed) {
				toggle(1);
			}
		}

		function toggle(reveal) {
			isAnimating = true;

			if (reveal) {
				classie.add(container, 'modify');
			} else {
				noscroll = true;
				disable_scroll();
				classie.remove(container, 'modify');
			}

			// simulating the end of the transition:
			setTimeout(function() {
				isRevealed = !isRevealed;
				isAnimating = false;
				if (reveal) {
					noscroll = false;
					enable_scroll();
				}
			}, 600);
		}

		// refreshing the page...
		var pageScroll = scrollY();
		noscroll = pageScroll === 0;

		disable_scroll();

		if (pageScroll) {
			isRevealed = true;
			classie.add(container, 'notrans');
			classie.add(container, 'modify');
		}

		window.addEventListener('scroll', scrollPage);
		trigger.addEventListener('click', function() {
			toggle('reveal');
		});
	})();
</script>
</html>