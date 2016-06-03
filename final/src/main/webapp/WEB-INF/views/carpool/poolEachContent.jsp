<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="../favicon.ico">
<link rel="stylesheet" type="text/css" href="/final02/CSS/poolCommon.css" />
<link rel="stylesheet" type="text/css" href="/final02/CSS/buttons.css" />
<link rel="stylesheet" type="text/css" href="/final02/CSS/set2.css" />
<link rel="stylesheet" type="text/css"
	href="/final02/CSS/eachNormalize.css" />
<link rel="stylesheet" type="text/css" href="/final02/CSS/eachDemo.css" />
<link rel="stylesheet" type="text/css"
	href="/final02/CSS/eachComponent.css" />
	
<!--[if IE]>
  		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->

<meta charset="UTF-8">
<style>
#map_div
{
	z-index:-1;
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
			if (selEl.options[i].selected){
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
		var param = '?idx='+document.getElementById('idx').value;
		//alert('param='+param);
		location.href="payType.do"+param;
		/*
		var poolType = '${dto.pooltype}';
		var param = '';

		window.alert(poolType);
		
		if (poolType == '타세요') {
			var param = '?idx=' + document.getElementById('idx').value;
			window.open('reqToMasterPage.do' + param, 'reqListPopup',
					'width=480 height=320');
		} else if (poolType == '탈래요') {
			var param = '?idx=' + document.getElementById('idx').value
					+ '&memberid=' + '${sessionScope.sid}';
			window.open('reqToMemberPage.do' + param, 'reqListPopup2',
					'width=480 height=320');
		}
 		*/
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
					<h1 style="text-align: center"><img src="/final02/img/down-arrow.png"></h1>
					<h1>${dto.endspot }</h1>
					<h2><img src="/final02/img/team.png"> &nbsp;&nbsp;<strong>${dto.mannum}명</strong> <img src="/final02/img/won.png"> &nbsp;&nbsp;${dto.pay }</h2>
					<h3>
						by <strong>${dto.userid }</strong> &#8212; 진행 상태 <strong>${dto.status }</strong>
						on <strong>${dto.starttime }</strong>
					</h3>
				</div>
			</header>
			<button class="trigger" data-info="상세 보기">
				<span>Trigger</span>
			</button>
			<article class="content">
				<div>
					<h3>(타세요 / 태워주세요 태그) 카폴 상세 보기</h3>
					<input type="hidden" id="idx" name="idx" value="${dto.idx}">
					<p>프로필 사진 영역</p>
					<p>진행 상태 ${dto.status}</p>
					<p>출발지 ${dto.startspot}</p>
					<p>도착지 ${dto.endspot }</p>
					<p>출발 일시 ${dto.starttime }</p>
					<c:if test="${dto.termtype eq '정기' }">
						<p>종료 일시 ${dto.enddate }</p>
						<p>반복 ${dto.days }</p>
					</c:if>
					<p>목적 ${dto.aim }</p>
					<p>인원 ${dto.mannum }</p>
					<p>비용 ${dto.pay }</p>
					<p>성별 ${dto.gender }</p>
					<p>흡연 ${dto.smoking }</p>

					<div>평점 게시판 영역</div>
					<div>
						<input type="button" value="찜하기"><input type="button"
							value="예약하기" onclick="request()">
					</div>
					<c:if test="${dto.userid eq sid}">
						<div>
							<input type="button" value="목록보기"><input type="button"
								value="수정하기" onclick="showEdit()"><input type="button"
								value="삭제하기" onclick="runDel()">
						</div>
					</c:if>
					<div>
						<input type="button" value="쪽지보내기"
							onclick="javascript:userid='${dto.userid}';message();">
					</div>
					<a href="messageShow.do?sid=${sid }">목록</a>
					<div>
						댓글
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
								<input type="hidden" name="aimid" value="${dto.userid}">
								<select id="rate" name="rate">
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