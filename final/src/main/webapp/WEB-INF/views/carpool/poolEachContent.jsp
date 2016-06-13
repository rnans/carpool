<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="../favicon.ico">

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
<link rel="stylesheet" type="text/css"
	href="/final02/CSS/menu_topexpand.css" />
<!--[if IE]>
  		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->

<meta charset="UTF-8">
<style>
#map_div {
	
}

.fa {
	margin-right: 5px;
}

.rating .fa {
	font-size: 22px;
}

.rating-num {
	margin-top: 0px;
	font-size: 60px;
}

.progress {
	margin-bottom: 5px;
}

.progress-bar {
	text-align: left;
}

.rating-desc .col-md-3 {
	padding-right: 0px;
}

.sr-only {
	margin-left: 5px;
	overflow: visible;
	clip: auto;
}

/*----------------------------------------------------*/
/*----------------- Testimonials CSS -----------------*/
/*----------------------------------------------------*/
.testimonial {
	margin-bottom: 10px;
}

.testimonial-section {
	width: 100%;
	height: auto;
	padding: 15px;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	position: relative;
	border: 1px solid #fff;
}

.testimonial-section:after {
	top: 100%;
	left: 50px;
	border: solid transparent;
	content: " ";
	position: absolute;
	border-top-color: #fff;
	border-width: 15px;
	margin-left: -15px;
}

.testimonial-desc {
	margin-top: 20px;
	text-align: left;
	padding-left: 15px;
}

.testimonial-desc img {
	border: 1px solid #f5f5f5;
	border-radius: 150px;
	height: 70px;
	padding: 3px;
	width: 70px;
	display: inline-block;
	vertical-align: top;
}

.testimonial-writer {
	display: inline-block;
	vertical-align: top;
	padding-left: 10px;
}

.testimonial-writer-name {
	font-weight: bold;
}

.testimonial-writer-designation {
	font-size: 85%;
}

.testimonial-writer-company {
	font-size: 85%;
}
/*---- Outlined Styles ----*/
.testimonial.testimonial-default {
	
}

.testimonial.testimonial-default .testimonial-section {
	border-color: #777;
}

.testimonial.testimonial-default .testimonial-section:after {
	border-top-color: #777;
}

.testimonial.testimonial-default .testimonial-desc {
	
}

.testimonial.testimonial-default .testimonial-desc img {
	border-color: #777;
}

.testimonial.testimonial-default .testimonial-writer-name {
	color: #777;
}

.testimonial.testimonial-primary {
	
}

.testimonial.testimonial-primary .testimonial-section {
	border-color: #337AB7;
	color: #286090;
	background-color: rgba(51, 122, 183, 0.1);
}

.testimonial.testimonial-primary .testimonial-section:after {
	border-top-color: #337AB7;
}

.testimonial.testimonial-primary .testimonial-desc {
	
}

.testimonial.testimonial-primary .testimonial-desc img {
	border-color: #337AB7;
}

.testimonial.testimonial-primary .testimonial-writer-name {
	color: #337AB7;
}

.testimonial.testimonial-info {
	
}

.testimonial.testimonial-info .testimonial-section {
	border-color: #5BC0DE;
	color: #31b0d5;
	background-color: rgba(91, 192, 222, 0.1);
}

.testimonial.testimonial-info .testimonial-section:after {
	border-top-color: #5BC0DE;
}

.testimonial.testimonial-info .testimonial-desc {
	
}

.testimonial.testimonial-info .testimonial-desc img {
	border-color: #5BC0DE;
}

.testimonial.testimonial-info .testimonial-writer-name {
	color: #5BC0DE;
}

.testimonial.testimonial-success {
	
}

.testimonial.testimonial-success .testimonial-section {
	border-color: #5CB85C;
	color: #449d44;
	background-color: rgba(92, 184, 92, 0.1);
}

.testimonial.testimonial-success .testimonial-section:after {
	border-top-color: #5CB85C;
}

.testimonial.testimonial-success .testimonial-desc {
	
}

.testimonial.testimonial-success .testimonial-desc img {
	border-color: #5CB85C;
}

.testimonial.testimonial-success .testimonial-writer-name {
	color: #5CB85C;
}

.testimonial.testimonial-warning {
	
}

.testimonial.testimonial-warning .testimonial-section {
	border-color: #F0AD4E;
	color: #d58512;
	background-color: rgba(240, 173, 78, 0.1);
}

.testimonial.testimonial-warning .testimonial-section:after {
	border-top-color: #F0AD4E;
}

.testimonial.testimonial-warning .testimonial-desc {
	
}

.testimonial.testimonial-warning .testimonial-desc img {
	border-color: #F0AD4E;
}

.testimonial.testimonial-warning .testimonial-writer-name {
	color: #F0AD4E;
}

.testimonial.testimonial-danger {
	
}

.testimonial.testimonial-danger .testimonial-section {
	border-color: #D9534F;
	color: #c9302c;
	background-color: rgba(217, 83, 79, 0.1);
}

.testimonial.testimonial-danger .testimonial-section:after {
	border-top-color: #D9534F;
}

.testimonial.testimonial-danger .testimonial-desc {
	
}

.testimonial.testimonial-danger .testimonial-desc img {
	border-color: #D9534F;
}

.testimonial.testimonial-danger .testimonial-writer-name {
	color: #D9534F;
}

/*---- Filled Styles ----*/
.testimonial.testimonial-default-filled {
	
}

.testimonial.testimonial-default-filled .testimonial-section {
	color: #fff;
	border-color: #777;
	background-color: #777;
}

.testimonial.testimonial-default-filled .testimonial-section:after {
	border-top-color: #777;
}

.testimonial.testimonial-default-filled .testimonial-desc {
	
}

.testimonial.testimonial-default-filled .testimonial-desc img {
	border-color: #777;
	background-color: #777;
}

.testimonial.testimonial-default-filled .testimonial-writer-name {
	color: #777;
}

.testimonial.testimonial-primary-filled {
	
}

.testimonial.testimonial-primary-filled .testimonial-section {
	color: #fff;
	background-color: #337ab7;
	border-color: #2e6da4;
}

.testimonial.testimonial-primary-filled .testimonial-section:after {
	border-top-color: #337AB7;
}

.testimonial.testimonial-primary-filled .testimonial-desc {
	
}

.testimonial.testimonial-primary-filled .testimonial-desc img {
	border-color: #2e6da4;
	background-color: #337ab7;
}

.testimonial.testimonial-primary-filled .testimonial-writer-name {
	color: #337AB7;
}

.testimonial.testimonial-info-filled {
	
}

.testimonial.testimonial-info-filled .testimonial-section {
	color: #fff;
	background-color: #5bc0de;
	border-color: #46b8da;
}

.testimonial.testimonial-info-filled .testimonial-section:after {
	border-top-color: #5BC0DE;
}

.testimonial.testimonial-info-filled .testimonial-desc {
	
}

.testimonial.testimonial-info-filled .testimonial-desc img {
	border-color: #46b8da;
	background-color: #5bc0de;
}

.testimonial.testimonial-info-filled .testimonial-writer-name {
	color: #5BC0DE;
}

.testimonial.testimonial-success-filled {
	
}

.testimonial.testimonial-success-filled .testimonial-section {
	color: #fff;
	background-color: #5cb85c;
	border-color: #4cae4c;
}

.testimonial.testimonial-success-filled .testimonial-section:after {
	border-top-color: #5CB85C;
}

.testimonial.testimonial-success-filled .testimonial-desc {
	
}

.testimonial.testimonial-success-filled .testimonial-desc img {
	border-color: #4cae4c;
	background-color: #5cb85c;
}

.testimonial.testimonial-success-filled .testimonial-writer-name {
	color: #5CB85C;
}

.testimonial.testimonial-warning-filled {
	
}

.testimonial.testimonial-warning-filled .testimonial-section {
	color: #fff;
	background-color: #f0ad4e;
	border-color: #eea236;
}

.testimonial.testimonial-warning-filled .testimonial-section:after {
	border-top-color: #F0AD4E;
}

.testimonial.testimonial-warning-filled .testimonial-desc {
	
}

.testimonial.testimonial-warning-filled .testimonial-desc img {
	border-color: #eea236;
	background-color: #f0ad4e;
}

.testimonial.testimonial-warning-filled .testimonial-writer-name {
	color: #F0AD4E;
}

.testimonial.testimonial-danger-filled {
	
}

.testimonial.testimonial-danger-filled .testimonial-section {
	color: #fff;
	background-color: #d9534f;
	border-color: #d43f3a;
}

.testimonial.testimonial-danger-filled .testimonial-section:after {
	border-top-color: #D9534F;
}

.testimonial.testimonial-danger-filled .testimonial-desc {
	
}

.testimonial.testimonial-danger-filled .testimonial-desc img {
	border-color: #d43f3a;
	background-color: #D9534F;
}

.testimonial.testimonial-danger-filled .testimonial-writer-name {
	color: #D9534F;
}
</style>
<title>카풀 상세 보기</title>
<script src="/final02/js/httpRequest.js"></script>
<script>
	
	
	function setRate(i)
	{
		document.getElementById('rate').value=i;
	}
	
	function rateReq() {
		var rate = document.getElementById('rate').value;

		var conEl = document.getElementById('content');

		var content = conEl.value;

		

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
		var rate = document.getElementById('rate').value;

		var conEl = document.getElementById('content');

		var content = conEl.value;

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
		var termtype = '${dto.termtype}';

		var param = '?idx=' + document.getElementById('idx').value
				+ '&termtype=' + termtype;

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
		
		var conEl = document.getElementById('con' + idx);
		
		document.getElementById('content').value=conEl.innerText;
		
		document.getElementById('rateIdx').value=idx;
		
		var ra=document.getElementById('ra'+idx).value;
		
		document.getElementById('rate').value=ra;
		
		
		document.getElementById('inputRate').style.display='none';

		document.getElementById('inputCan').style.display='table-cell';
		
		document.getElementById('inputEdit').style.display='table-cell';
		
	}
	
	
</script>
</head>
<body onload="initTmap()" class="demo-2">
	<%@ include file="../header.jsp"%>
<link rel="stylesheet" type="text/css"
	href="/final02/CSS/poolCommon.css" />
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





	<div id="eachContainer" class="container intro-effect-fadeout">
		<!-- Top Navigation -->
		<header class="header">
			<div class="bg-img">
				<div id="map_div"></div>
			</div>
			<div class="title">
				<h1><span>${dto.startspot }</span></h1>
				<h1 style="text-align: center">
					<img src="/final02/img/down-arrow.png">
				</h1>
				<h1><span>${dto.endspot }</span></h1>
				<h2>
					<img src="/final02/img/team.png"> &nbsp;&nbsp;<strong>${dto.mannum}명</strong>
					<img src="/final02/img/won.png"> &nbsp;&nbsp;${dto.pay }
				</h2>
				<h3>
					by <strong>${dto.userid }</strong> &#8212; 진행 상태 <i
					class="fa fa-calendar" aria-hidden="true"></i><strong>${dto.status }</strong>
					on <strong>${dto.starttime }</strong>
				</h3>
			</div>
		</header>
		<button class="trigger" data-info="상세 보기">
			<span><i class="fa fa-arrow-down" aria-hidden="true"></i></span>
		</button>
		<article class="content">
			<div style="background-color: #fff">
				<div class="row">
					<div class="col-md-12" style="margin-top: 5%; margin-bottom: 5%">
						<h1>
							카풀 상세 보기 <small>${dto.pooltype }</small> <a href="poolList.do"><i
								class="fa fa-bars pull-right" aria-hidden="true"></i></a>
							<c:if test="${dto.userid eq sid }">
								<a href="runDel()"><i class="fa fa-trash-o pull-right"
									aria-hidden="true"></i></a>
								<a href="javascript:showEdit()"><i
									class="fa fa-pencil-square-o pull-right" aria-hidden="true"></i></a>
							</c:if>
						</h1>
					</div>
				</div>
				<div class="row">
					<div class="col-md-8">
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
					<div class="col-md-4">
						<div class="box">
							<div class="box-header">
								<h3 class="box-title">등록자 정보</h3>
							</div>
							<!-- Widget: user widget style 1 -->
							<div class="box box-widget widget-user">
								<!-- Add the bg color to the header using any of the bg-* classes -->
								<div class="widget-user-header bg-aqua-active">
									<h3 class="widget-user-username">${mDTO.name }</h3>
									<h5 class="widget-user-desc">${mDTO.email }</h5>
									<h5 class="widget-user-desc">${mDTO.addr }</h5>
								</div>
								<div class="widget-user-image">
									<img class="img-circle" src="/final02/img/basic.jpg"
										alt="User Avatar">
								</div>
								<div class="box-footer">
									<div class="row">
										<div class="col-sm-4 border-right">
											<div class="description-block">
												<h5 class="description-header">${pCount }</h5>
												<span class="description-text">등록글</span>
											</div>
											<!-- /.description-block -->
										</div>
										<!-- /.col -->
										<div class="col-sm-4 border-right">
											<div class="description-block">
												<h5 class="description-header">${avg.count }
													<c:if test="${empty avg.count}">0</c:if>
												</h5>
												<span class="description-text">평가</span>
											</div>
											<!-- /.description-block -->
										</div>
										<div class="col-sm-4 border-right">
											<div class="description-block">
												<a href="messageWrite.do?uid=${dto.userid}">
													<h5 class="description-header">
														<i class="fa fa-paper-plane" aria-hidden="true"></i>
													</h5> <span class="description-text"> 쪽지보내기</span>
												</a>
											</div>
											<!-- /.description-block -->
										</div>
										<!-- /.description-block -->
									</div>
									<!-- /.col -->
								</div>
							</div>
							<div class="box">
								<div class="box-header">
									<h3 class="box-title">등록자 평가</h3>
								</div>

								<div class="rating-desc">
									<div class="col-xs-3 col-md-3 text-right">
										<span class="fa fa-star"></span>5
									</div>
									<div class="col-xs-8 col-md-9">
										<div class="progress">
											<div class="progress-bar progress-bar-success"
												role="progressbar" aria-valuenow="20" aria-valuemin="0"
												aria-valuemax="100" style="width: ${avg.r5}%">
												<span class="sr-only">${avg.r5}%</span>
											</div>
										</div>
									</div>
									<div class="col-xs-3 col-md-3 text-right">
										<span class="fa fa-star"></span>4
									</div>
									<div class="col-xs-8 col-md-9">
										<div class="progress">
											<div class="progress-bar progress-bar-success"
												role="progressbar" aria-valuenow="20" aria-valuemin="0"
												aria-valuemax="100" style="width: ${avg.r4}%">
												<span class="sr-only">${avg.r4}%</span>
											</div>
										</div>
									</div>
									<div class="col-xs-3 col-md-3 text-right">
										<span class="fa fa-star"></span>3
									</div>
									<div class="col-xs-8 col-md-9">
										<div class="progress">
											<div class="progress-bar progress-bar-info"
												role="progressbar" aria-valuenow="20" aria-valuemin="0"
												aria-valuemax="100" style="width: ${avg.r3}%">
												<span class="sr-only">${avg.r3}%</span>
											</div>
										</div>
									</div>
									<div class="col-xs-3 col-md-3 text-right">
										<span class="fa fa-star"></span>2
									</div>
									<div class="col-xs-8 col-md-9">
										<div class="progress">
											<div class="progress-bar progress-bar-warning"
												role="progressbar" aria-valuenow="20" aria-valuemin="0"
												aria-valuemax="100" style="width: ${avg.r2}%">
												<span class="sr-only">${avg.r2}%</span>
											</div>
										</div>
									</div>
									<div class="col-xs-3 col-md-3 text-right">
										<span class="fa fa-star"></span>1
									</div>
									<div class="col-xs-8 col-md-9">
										<div class="progress">
											<div class="progress-bar progress-bar-danger"
												role="progressbar" aria-valuenow="80" aria-valuemin="0"
												aria-valuemax="100" style="width: ${avg.r1}%">
												<span class="sr-only">${avg.r1}%</span>
											</div>
										</div>
									</div>
									<!-- end row -->
								</div>

								<div class="text-center">
									<h1 class="rating-num">${avg.avg}</h1>

								</div>



							</div>
						</div>


					</div>
					<!-- /.row -->
				</div>


				<div class="row">
				<div class="col-md-12">
					<div class="box">
								<div class="box-header">
									<h3 class="box-title">등록자 평가 댓글</h3>
								</div>
					<!-- /.widget-user -->
					<c:if test="${empty rDtos}">
						<div class="text-center">${msg}</div>
					</c:if>


					<c:forEach var="rDtos" items="${rDtos}" varStatus="i">

						<c:if test="${i.count%2==0}">
							<div class="col-sm-12">
								<input type="hidden" value="${rDtos.idx}" id="hi${rDtos.idx }">
								<input type="hidden" value="${rDtos.rate}" id="ra${rDtos.idx}">
								<div id="tb-testimonial"
									class="testimonial testimonial-primary-filled">
									<div id="con${rDtos.idx}" class="testimonial-section">${rDtos.content }</div>
									<div class="testimonial-desc">
										<img
											src="https://placeholdit.imgix.net/~text?txtsize=9&txt=100%C3%97100&w=100&h=100"
											alt="" />
										<div class="testimonial-writer">
											<div class="testimonial-writer-name">${rDtos.userid}</div>
											<div class="testimonial-writer-designation">${rDtos.writedate }</div>
											<a href="javascript:modiRate(${rDtos.idx})"
												class="testimonial-writer-company">수정</a> <a
												class="testimonial-writer-company"
												href="javascript:delRate(${rDtos.idx})">삭제</a>
										</div>
									</div>
								</div>
							</div>
						</c:if>
						<c:if test="${i.count%2==1 }">
							<div class="col-sm-12">
							<input type="hidden" value="${rDtos.idx}" id="hi${rDtos.idx }">
							<input type="hidden" value="${rDtos.rate}" id="ra${rDtos.idx}">
								<div id="tb-testimonial"
									class="testimonial testimonial-info-filled">
									
									<div id="con${rDTos.idx}" class="testimonial-section">${rDtos.content }</div>
									<div class="testimonial-desc">
										<img
											src="https://placeholdit.imgix.net/~text?txtsize=9&txt=100%C3%97100&w=100&h=100"
											alt="" />
										<div class="testimonial-writer">
											<div class="testimonial-writer-name">${rDtos.userid}</div>
											<div class="testimonial-writer-designation">${rDtos.writedate }</div>
											<c:if test="${rDtos.userid eq sid}">
												<a href="javascript:modiRate(${rDtos.idx})"
													class="testimonial-writer-company">수정</a>
												<a class="testimonial-writer-company"
													href="javascript:delRate(${rDtos.idx})">삭제</a>
											</c:if>
										</div>
									</div>
								</div>
							</div>
						</c:if>
					</c:forEach>
					<c:if test="${sid ne dto.userid}">
					<div>
						<form name="reply" action="rateWrite.do">
						<input type="hidden" id="rateIdx" name="idx" value="">
							<input type="hidden" name="aimid" value="${dto.userid}">
							<div class="input-group">
                <div class="input-group-btn">
                  <button type="button" class="btn btn-warning dropdown-toggle" data-toggle="dropdown">별점
                    <span class="fa fa-caret-down"></span></button>
                  <ul class="dropdown-menu">
                    <li><a href="javascript:setRate(5);"><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i></a></li>
                    <li><a href="javascript:setRate(4);"><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i></a></li>
                    <li><a href="javascript:setRate(3);"><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i></a></li>
                    <li><a href="javascript:setRate(2);"><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i></a></li>
                    <li><a href="javascript:setRate(1);"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                  </ul>
                  
                </div>
                <!-- /btn-group -->
                <input type="hidden" id="rate" name="rate">
                <input type="text" id="content" name="content" class="form-control">
               <span class="input-group-btn" id="inputRate">
                      <button type="button" onclick="rateReq();" id="rateBt" class="btn btn-info btn-flat">평가하기</button>
                    </span>
                    <span class="input-group-btn" id="inputEdit">
                      <button type="button" onclick="rateEditReq();" id="editBt" class="btn btn-info btn-flat">수정 완료</button>
                    </span>
                    <span class="input-group-btn" id="inputCan">
                      <button type="button" onclick="editCancel();" id="canBt" class="btn btn-danger btn-flat">취소</button>
                    </span>
              </div>
						</form>
					</div>
				</c:if>
					</div>
					</div>
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
				
			</div>






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

		document.getElementById('inputRate').style.display='table-cell';

		document.getElementById('inputCan').style.display='none';
		
		document.getElementById('inputEdit').style.display='none';
		
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
<script src="/final02/js/menu-classie.js"></script>
<script src="/final02/js/menu-main.js"></script>
</html>