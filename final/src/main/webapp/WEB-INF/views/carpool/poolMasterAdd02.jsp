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
<link rel="stylesheet" type="text/css"
	href="/final02/CSS/menu_topexpand.css" />
</head>
<body>
	<%@ include file="../header.jsp"%>

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
				카풀 등록 <small>본인 차량 정보를 확인해주세요.</small>
			</h1>
		</div>
		<div class="row">
			<form name="carInfo" action="poolMasterAdd03.do">

				<div id="div2" class="col-md-4 profile--div">
					<img style="width:300px; height:300px;" src="http://pool.sarte.kr/final02/img/${dto.carphoto }"/>

				</div>
				<div id="div1" class="col-md-8">
					<input type="hidden" name="idx" value="${dto.idx}">
					<div class="input input--nao col-md-12">
						<input class="input__field input__field--nao" type="text"
							id="driver" name="driver" value="${dto.driver }"><br>
						<label class="input__label input__label--nao" for="driver">
							<span class="input__label-content input__label-content--nao">운전자
								이름</span>
						</label>
						<svg class="graphic graphic--nao" width="300%" height="100%"
							viewBox="0 0 1200 60" preserveAspectRatio="none">
						<path
								d="M0,56.5c0,0,298.666,0,399.333,0C448.336,56.5,513.994,46,597,46c77.327,0,135,10.5,200.999,10.5c95.996,0,402.001,0,402.001,0" />
					</svg>
					</div>
					<br>

					<div class="input input--nao col-md-12">
						<input class="input__field input__field--nao" type="text"
							id="carnum" name="carnum" value="${dto.carnum }"><br>
						<label class="input__label input__label--nao" for="carname">
							<span class="input__label-content input__label-content--nao">차량
								번호</span>
						</label>
						<svg class="graphic graphic--nao" width="300%" height="100%"
							viewBox="0 0 1200 60" preserveAspectRatio="none">
						<path
								d="M0,56.5c0,0,298.666,0,399.333,0C448.336,56.5,513.994,46,597,46c77.327,0,135,10.5,200.999,10.5c95.996,0,402.001,0,402.001,0" />
					</svg>
					</div>
					<br>


					<div class="input input--nao col-md-12">
						<input class="input__field input__field--nao" type="text"
							id="cartype" name="cartype" value="${dto.cartype }"><br>
						<label class="input__label input__label--nao" for="cartype">
							<span class="input__label-content input__label-content--nao">차종</span>
						</label>
						<svg class="graphic graphic--nao" width="300%" height="100%"
							viewBox="0 0 1200 60" preserveAspectRatio="none">
						<path
								d="M0,56.5c0,0,298.666,0,399.333,0C448.336,56.5,513.994,46,597,46c77.327,0,135,10.5,200.999,10.5c95.996,0,402.001,0,402.001,0" />
					</svg>
					</div>
					<br> <br>
					<div class="col-md-3">
						<button type="button" onclick="showCate();"
							class="button button--ujarak button--border-thin button--text-thick"
							onclick="location.href='poolMasterAdd01.do'">취소</button>
					</div>
					<div class="col-md-3">
						<button type="button" onclick="findList()"
							class="button button--ujarak button--border-thin button--text-thick"
							onclick="editCarinfo()">수정</button>
					</div>
					<div class="col-md-6">
						<button type="submit" onclick="findList()"
							class="button button--ujarak button--border-thin button--text-thick button--next">다음</button>
					</div>

				</div>
			</form>
		</div></div>
		</div>
		</div>
	</section>
</body>
<script src="/final02/js/menu-classie.js"></script>
<script src="/final02/js/menu-main.js"></script>
</html>