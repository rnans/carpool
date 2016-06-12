<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css"
	href="/final02/CSS/poolCommon.css" />
<link rel="stylesheet" type="text/css" href="/final02/CSS/buttons.css" />
<link rel="stylesheet" type="text/css" href="/final02/CSS/set2.css" />
<link href="/final02/CSS/hover.css" rel="stylesheet" media="all">
<link rel="stylesheet" type="text/css"
	href="/final02/CSS/menu_topexpand.css" />
</head>
<body>
	<%@ include file="../header.jsp"%>
	<style>
.jumbotron {
	background-color: #fff;
	border-top: 5px solid #02639d;
}

.jumbotron h1 {
	color: #333;
}

.jumbotron p {
	margin: 25px auto;
}
</style>
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
				
		<div id="search" class="col-md-12">
		<br>
		<br>
					<div class="jumbotron">
						<h1>카풀 등록</h1>
						<p>
							일반 이용자와 운전자는 각각 카풀을 모집하는 글을 올리실 수 있습니다. <br>모집 글 유형을 선택해주세요.
						</p>
					</div>

					<div id="row">

						<div id="div1" class="col-md-6 select">
							<figure>
								<img src="/final02/img/pMember.jpg" class="center-block" alt="" />
								<a href="poolMemberAdd.do">
									<figcaption>
										<h2>탈래요!</h2>
										<p>
											카풀을 제공하는 운전자를 구해보세요.<br> 일반 이용자는 '탈래요' 글을 통해 카풀을 제공하는
											운전자를 구하실 수 있습니다.
										</p>

									</figcaption>
								</a>
							</figure>
						</div>
						<div id="div2" class="col-md-6 select center-block"
							style="text-align: center;">
							<figure>
								<img src="/final02/img/pMaster.jpg" class="center-block" alt="" />
								<a href="poolMasterAdd.do">
									<figcaption>
										<h2>타세요!</h2>
										<p>
											당신의 카풀을 이용할 이용자를 구해보세요.<br> 운전자는 '타세요' 글을 통해 카풀을 이용하고자
											하는 이용자를 구하실 수 있습니다.
										</p>

									</figcaption>
								</a>
							</figure>
						</div>

					</div>
				</div>
			</div>
		</div>
	</section>
</body>
<script src="/final02/js/menu-classie.js"></script>
<script src="/final02/js/menu-main.js"></script>
</html>