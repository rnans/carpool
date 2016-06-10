<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="../favicon.ico">
<link href='http://fonts.googleapis.com/css?family=Raleway:400,300,700'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css"
	href="/final02/CSS/poolCommon.css" />
<link rel="stylesheet" type="text/css" href="/final02/CSS/buttons.css" />
<link rel="stylesheet" type="text/css" href="/final02/CSS/set2.css" />

<script src="/final02/js/selectFx.js"></script>
<script>
	var scount = 0;

	window.onload = function() {

		document.getElementById("term").style.display = "none";
		document.getElementById("short").style.display = "none";

		var d = new Date();

		window.alert(scount);

		var yearEl = document.getElementById('lsy');
		var monthEl = document.getElementById('lsm');

		var yearEl2 = document.getElementById('ley');
		var monthEl2 = document.getElementById('lem');

		var hourEl = document.getElementById("lh");

		yearEl2.innerHTML = '';
		monthEl2.innerHTML = '';
		yearEl.innerHTML = '';
		monthEl.innerHTML = '';

		hourEl.innerHTML = '';

		for (var i = d.getFullYear(); i < d.getFullYear() + 5; i++) {

			yearEl.innerHTML += '<option>' + i + '</option>';
			yearEl2.innerHTML += '<option>' + i + '</option>';
		}

		for (var i = 1; i <= 12; i++) {
			if (i == d.getMonth() + 1) {
				monthEl.innerHTML += '<option value="'+i+'" selected>' + i
						+ '</option>';
				monthEl2.innerHTML += '<option value="'+i+'" selected>' + i
						+ '</option>';
			}

			monthEl.innerHTML += '<option value="'+i+'">' + i + '</option>';
			monthEl2.innerHTML += '<option value="'+i+'">' + i + '</option>';

		}

		setDays2();
		setDays3();

		for (var i = 1; i <= 12; i++) {
			if (d.getHours() - 12 > 0) {
				if (i == (d.getHours() - 12)) {
					hourEl.innerHTML += '<option value="'+i+'" selected>' + i
							+ '</option>';
				}
				hourEl.innerHTML += '<option value="'+i+'">' + i + '</option>';
			} else if (i == d.getHours()) {
				hourEl.innerHTML += '<option value="'+i+'" selected>' + i
						+ '</option>';
			} else {
				hourEl.innerHTML += '<option value="'+i+'">' + i + '</option>';
			}
		}

		var apmEl = document.getElementById('lapm');

		if ((d.getHours() - 12) >= 0) {
			apmEl.value = '오후';
		}

		var d = new Date();

		var yearEl = document.getElementById('yearEl');
		var monthEl = document.getElementById('monthEl');
		var dayEl = document.getElementById('dayEl');
		var hourEl = document.getElementById("hourEl");

		yearEl.innerHTML = '';
		monthEl.innerHTML = '';
		dayEl.innerHTML = '';
		hourEl.innerHTML = '';

		for (var i = d.getFullYear(); i < d.getFullYear() + 5; i++) {

			yearEl.innerHTML += '<option>' + i + '</option>';

		}

		for (var i = 1; i <= 12; i++) {
			if (i == d.getMonth() + 1) {
				monthEl.innerHTML += '<option value="'+i+'" selected>' + i
						+ '</option>';
			}

			monthEl.innerHTML += '<option value="'+i+'">' + i + '</option>';

		}

		setDays();

		for (var i = 1; i <= 12; i++) {
			if (d.getHours() - 12 > 0) {
				if (i == (d.getHours() - 12)) {
					hourEl.innerHTML += '<option value="'+i+'" selected>' + i
							+ '</option>';
				}
				hourEl.innerHTML += '<option value="'+i+'">' + i + '</option>';
			} else if (i == d.getHours()) {
				hourEl.innerHTML += '<option value="'+i+'" selected>' + i
						+ '</option>';
			} else {
				hourEl.innerHTML += '<option value="'+i+'">' + i + '</option>';
			}
		}

		var apmEl = document.getElementById('apmEl');

		if ((d.getHours() - 12) >= 0) {
			apmEl.value = '오후';
		}

		if (scount === 0) {
			[].slice.call(document.querySelectorAll('select.cs-select'))
					.forEach(function(el) {
						new SelectFx(el);
						scount = scount + 1;
					});

		}

	}

	function viewShort() {
		document.getElementById("term").style.display = "none";
		document.getElementById("short").style.display = "block";

	}

	function viewTerm() {
		document.getElementById("short").style.display = "none";
		document.getElementById("term").style.display = "block";

	}

	function setDays3() {
		var days = 30;
		var d = new Date();
		var dayEl2 = document.getElementById('led');

		dayEl2.innerHTML = '';

		if (monthEl.value == 1 || monthEl.value == 3 || monthEl.value == 5
				|| monthEl.value == 7 || monthEl.value == 8
				|| monthEl.value == 10 || monthEl.value == 12) {
			days = 31;
		} else if (monthEl.value == 2) {
			days = 29;
		} else {

		}

		for (var i = 1; i <= days; i++) {
			if (i == d.getDate()) {
				dayEl2.innerHTML += '<option value="'+i+'" selected>' + i
						+ '</option>';
			} else {
				dayEl2.innerHTML += '<option value="'+i+'">' + i + '</option>';
			}

		}

	}

	function setDays() {
		var days = 30;
		var d = new Date();
		var dayEl = document.getElementById('dayEl');

		if (monthEl.value == 1 || monthEl.value == 3 || monthEl.value == 5
				|| monthEl.value == 7 || monthEl.value == 8
				|| monthEl.value == 10 || monthEl.value == 12) {
			days = 31;
		} else if (monthEl.value == 2) {
			days = 29;
		} else {

		}

		for (var i = 1; i <= days; i++) {
			if (i == d.getDate()) {
				dayEl.innerHTML += '<option value="'+i+'" selected>' + i
						+ '</option>';
			} else {
				dayEl.innerHTML += '<option value="'+i+'">' + i + '</option>';
			}

		}

	}

	function setDays2() {
		var days = 30;
		var d = new Date();
		var dayEl = document.getElementById('lsd');

		dayEl.innerHTML = '';

		if (monthEl.value == 1 || monthEl.value == 3 || monthEl.value == 5
				|| monthEl.value == 7 || monthEl.value == 8
				|| monthEl.value == 10 || monthEl.value == 12) {
			days = 31;
		} else if (monthEl.value == 2) {
			days = 29;
		} else {

		}

		for (var i = 1; i <= days; i++) {
			if (i == d.getDate()) {
				dayEl.innerHTML += '<option value="'+i+'" selected>' + i
						+ '</option>';
			} else {
				dayEl.innerHTML += '<option value="'+i+'">' + i + '</option>';
			}

		}

	}
</script>
</head>
<body>
	<%@ include file="../header.jsp"%>
	<link rel="stylesheet" type="text/css"
		href="/final02/CSS/cs-select.css" />
	<link rel="stylesheet" type="text/css"
		href="/final02/CSS/cs-skin-border.css" />
	<section id="mainsection">
		<div class="col-md-12">
			<h1 class="main--title">
				카풀 등록 <small>카풀 상세 정보 입력</small>
			</h1>
		</div>
		<div class="row">
			<div class="col-md-6">
				<button type="button"
					class="button button--ujarak button--border-thin button--text-thick"
					onclick="viewShort()">단기</button>

			</div>
			<div class="col-md-6">
				<button type="button"
					class="button button--ujarak button--border-thin button--text-thick"
					onclick="viewTerm()">정기</button>
			</div>
		</div>



		<div id="short" class="row">

			<form name="shortup" class="form-horizontal form"
				action="poolMasterAdd05.do" method="get">
				<h2>단기 카풀 세부 정보 입력</h2>
				<p>빠짐 없이 입력해 주세요.</p>
				<input type="hidden" name="termtype" value="단기">


				<div class="row">
					<div class="col-md-2">출발 일시</div>
					<div class="col-md-10">
						<div class="col-md-2">
							<select class="cs-select cs-skin-border" id="yearEl" name="sy">
							</select> 년
						</div>
						<div class="col-md-2">
							<select class="cs-select cs-skin-border" id="monthEl" name="sm"
								onchange="setDays()">
							</select> 월
						</div>
						<div class="col-md-2">
							<select class="cs-select cs-skin-border" id="dayEl" name="sd">
							</select> 일
						</div>
						<div class="col-md-2">
							<select class="cs-select cs-skin-border" id="apmEl" name="sapm">
								<option value="오전">오전</option>
								<option value="오후">오후</option>
							</select> APM
						</div>
						<div class="col-md-2">
							<select class="cs-select cs-skin-border" id="hourEl" name="sh">
							</select> 시
						</div>
						<div class="col-md-2">
							<select class="cs-select cs-skin-border" name="smi">
								<option value="00">00</option>
								<option value="30">30</option>
							</select> 분
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-md-12">인원과 요금을 입력해주세요.</div>
					<div class="col-md-6">

						<div class="input input--nao col-md-12">
							<input class="input__field input__field--nao" type="number"
								id="mannum" name="mannum" placeholder="인원 수를 입력하세요."><br>
							<label class="input__label input__label--nao" for="mannum">
								<span class="input__label-content input__label-content--nao">인원</span>
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
								id="pay" name="pay" placeholder="금액을 입력하세요(원)"><br>
							<label class="input__label input__label--nao" for="pay">
								<span class="input__label-content input__label-content--nao">요금</span>
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
						<select class="cs-select cs-skin-border" name="gender">
							<option>상관없음</option>
							<option>남성만</option>
							<option>여성만</option>
						</select>

					</div>

					<div class="col-md-2" style="vertical-align: middle;">흡연여부</div>
					<div class="col-md-4">
						<div class="col-md-6">
							<input type="radio" name="smoking" value="흡연">흡연

						</div>

						<div class="col-md-6">
							<input type="radio" name="smoking" value="비흡연"> 비흡연
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4"></div>
					<div class="col-md-8">
						<div class="col-md-4">
							<button type="button"
								class="button button--ujarak button--border-thin button--text-thick"
								onclick="">이전</button>
						</div>
						<div class="col-md-8">
							<button type="submit"
								class="button button--ujarak button--border-thin button--text-thick button--next">다음</button>
						</div>
					</div>
				</div>
			</form>
		</div>



		<div id="term" class="row">
			<form name="termup" class="form-horizontal form"
				action="poolMasterAdd05.do" method="post">
				<input type="hidden" name="termtype" value="정기">
				<h2>정기 카풀 세부 정보 입력</h2>
				<p>빠짐 없이 입력해 주세요.</p>
				<input type="hidden" name="termtype" value="단기">

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
							<input type="checkbox" name="mon" value="월">월
						</div>
						<div class="col-md-1">
							<input type="checkbox" name="tue" value="화">화
						</div>
						<div class="col-md-1">
							<input type="checkbox" name="wed" value="수">수
						</div>
						<div class="col-md-1">
							<input type="checkbox" name="thu" value="목">목
						</div>
						<div class="col-md-1">
							<input type="checkbox" name="fri" value="금">금
						</div>
						<div class="col-md-1">
							<input type="checkbox" name="sat" value="토">토
						</div>
						<div class="col-md-1">
							<input type="checkbox" name="sun" value="일">일
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">인원과 요금을 입력해주세요.</div>
					<div class="col-md-6">

						<div class="input input--nao col-md-12">
							<input class="input__field input__field--nao" type="number"
								id="mannum" name="mannum" placeholder="인원 수를 입력하세요."><br>
							<label class="input__label input__label--nao" for="mannum">
								<span class="input__label-content input__label-content--nao">인원</span>
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
								id="pay" name="pay" placeholder="금액을 입력하세요(원)"><br>
							<label class="input__label input__label--nao" for="pay">
								<span class="input__label-content input__label-content--nao">요금</span>
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
						<select class="cs-select cs-skin-border" name="gender">
							<option>상관없음</option>
							<option>남성만</option>
							<option>여성만</option>
						</select>

					</div>

					<div class="col-md-2" style="vertical-align: middle;">흡연여부</div>
					<div class="col-md-4">
						<div class="col-md-6">
							<input type="radio" name="smoking" value="흡연">흡연

						</div>

						<div class="col-md-6">
							<input type="radio" name="smoking" value="비흡연"> 비흡연
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4"></div>
					<div class="col-md-8">
						<div class="col-md-4">
							<button type="button"
								class="button button--ujarak button--border-thin button--text-thick"
								onclick="">이전</button>
						</div>
						<div class="col-md-8">
							<button type="submit"
								class="button button--ujarak button--border-thin button--text-thick button--next">다음</button>
						</div>
					</div>
				</div>



			</form>
		</div>

	</section>
</body>
</html>