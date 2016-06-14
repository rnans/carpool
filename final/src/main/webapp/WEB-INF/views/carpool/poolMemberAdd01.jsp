<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="/final02/CSS/poolCommon.css" />
<link rel="stylesheet" type="text/css" href="/final02/CSS/buttons.css" />
<link rel="stylesheet" type="text/css" href="/final02/CSS/set2.css" />
<link rel="stylesheet" type="text/css"
	href="/final02/CSS/cbcomponent.css" />
<link rel="stylesheet" type="text/css"
	href="/final02/CSS/menu_topexpand.css" />

<script>
	window.onload = function() {
		var sex = '${dto.sex}';

		var male = document.getElementById('male');

		if (sex == "남성") {
			male.checked = true;
		} else if (sex == "여성") {
			female.checked = true;
		}
	}
</script>
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
							카풀 등록 <small>회원 정보를 확인해주세요.</small>
						</h1>
					</div>
					<div class="col-md-12">
						<h2>${dto.id }님의 개인 정보</h2>
					</div>
					<div class="row">
						<form name="userInfo" action="poolMemberAdd02.do">

							<div id="div2" class="col-md-4 profile--div">
								<c:forEach var="iDto" items="${imgList}">
									<c:if test="${dto.id==iDto.id}">
										<img style="width: 300px; height: 300px"
											src="http://pool.sarte.kr/final02/img/${iDto.filename}" />
									</c:if>
								</c:forEach>

							</div>

							<input type="hidden" name="id" value="${dto.id }">
							<div class="col-md-8">
								<div class="input input--nao col-md-12">
									<input class="input__field input__field--nao" type="text"
										id="name" name="name" value="${dto.name }"><br> <label
										class="input__label input__label--nao" for="name"> <span
										class="input__label-content input__label-content--nao">이름</span>
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
										id="addr" name="addr" value="${dto.addr }"><br> <label
										class="input__label input__label--nao" for="addr"> <span
										class="input__label-content input__label-content--nao">지역</span>
									</label>
									<svg class="graphic graphic--nao" width="300%" height="100%"
										viewBox="0 0 1200 60" preserveAspectRatio="none">
						<path
											d="M0,56.5c0,0,298.666,0,399.333,0C448.336,56.5,513.994,46,597,46c77.327,0,135,10.5,200.999,10.5c95.996,0,402.001,0,402.001,0" />
					</svg>
								</div>
								<br>

								<div class="input input--nao col-md-12">
									<input class="input__field input__field--nao" type="email"
										id="email" name="email" value="${dto.email }"><br>
									<label class="input__label input__label--nao" for="email">
										<span class="input__label-content input__label-content--nao">이메일</span>
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
										id="birth" name="birth" value="${dto.birth }"><br>
									<label class="input__label input__label--nao" for="birth">
										<span class="input__label-content input__label-content--nao">생년월일</span>
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
										id="tel" name="phonenum" value="${dto.phonenum }"><br>
									<label class="input__label input__label--nao" for="tel">
										<span class="input__label-content input__label-content--nao">전화번호</span>
									</label>
									<svg class="graphic graphic--nao" width="300%" height="100%"
										viewBox="0 0 1200 60" preserveAspectRatio="none">
						<path
											d="M0,56.5c0,0,298.666,0,399.333,0C448.336,56.5,513.994,46,597,46c77.327,0,135,10.5,200.999,10.5c95.996,0,402.001,0,402.001,0" />
					</svg>
								</div>
								<br>

								<div class="input input--nao col-md-12">
									<div class="col-md-3"></div>
									<div class="col-md-9">
										<div class="col-md-6">
											<input id="male" name="sex" type="radio" value="남성"><label
												for="r1">남성</label>
										</div>
										<div class="col-md-6">
											<input id="female" name="sex" type="radio" value="여성"><label
												for="r1">여성</label>
										</div>
									</div>
								</div>
								<br>

								<div class="col-md-3">
									<button type="button" onclick="showCate();"
										class="button button--ujarak button--border-thin button--text-thick"
										onclick="location.href='poolMain.do'">취소</button>
								</div>
								<div class="col-md-3">
									<button type="button" onclick="findList()"
										class="button button--ujarak button--border-thin button--text-thick"
										onclick="edifProfile()">수정</button>
								</div>
								<div class="col-md-6">
									<button type="submit" onclick="findList()"
										class="button button--ujarak button--border-thin button--text-thick">다음</button>
								</div>
							</div>



						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
<script src="/final02/js/menu-classie.js"></script>
<script src="/final02/js/menu-main.js"></script>
</html>