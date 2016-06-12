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
		<script>
			window.onload = function() {
				var type = '${sessionScope.data.termtype}';

				var f = document.getElementById('f');
				if (type == '정기') {
					f.method = 'POST';
				}
			}
			function checkName() {
				if(document.getElementById('poolname').value==''||document.getElementById('poolname').value==null)
				{
					document.getElementById('msg').innerHTML = "카풀 이름은 반드시 입력해야 합니다.";				
					exit;
				}
				var url = 'checkPoolName.do'
				var params = 'poolname='
						+ document.getElementById('poolname').value;

				sendRequest(url, params, callback, 'GET');

				function callback() {
					if (XHR.readyState == 4) {
						if (XHR.status == 200) {
							var text = XHR.responseText;
							document.getElementById('msg').innerHTML = text;

						}
					}
				}
			}
			function submitName() {
				if (document.getElementById('msg').innerText == '사용 가능한 카풀 이름입니다.') {
					f.submit();
				} else {
					window.alert('사용 가능한 카풀 이름을 입력해 주세요.');
				}
			}
		</script>
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
			<div class="col-md-12">
				<h1 class="main--title">
					카풀 등록 <small>새로 생성된 풀 파티의 이름을 입력해주세요.</small>
				</h1>
			</div>
			<form id="f" name="poolNameform" action="poolMasterAddConfirm.do">
				<div class="row">

					<div class="input input--nao col-md-12">
							<input class="input__field input__field--nao" type="text"
								id="poolname" name="poolname" onblur="checkName()" placeholder="카풀 이름을 입력하세요."><br>
							<label class="input__label input__label--nao" for="poolname	">
								<span class="input__label-content input__label-content--nao">카풀 이름</span>
							</label>
							<svg class="graphic graphic--nao" width="300%" height="100%"
								viewBox="0 0 1200 60" preserveAspectRatio="none">
						<path
									d="M0,56.5c0,0,298.666,0,399.333,0C448.336,56.5,513.994,46,597,46c77.327,0,135,10.5,200.999,10.5c95.996,0,402.001,0,402.001,0" />
					</svg>
						</div>
					<div id="msg"></div>
				</div>

				  <div class="row">
        <div class="col-xs-4"></div>
        <div class="col-xs-8">
						<div class="col-xs-4">
							<button type="button"
								class="button button--ujarak button--border-thin button--text-thick"
								onclick="">이전</button>
						</div>
						<div class="col-xs-8">
							<button type="button" onclick="submitName();"
								class="button button--ujarak button--border-thin button--text-thick button--next">완료</button>
						</div>
					</div></div>
       
				
        
      
				
			</form>
			</div>
			</div>
		</section>
</body>
<script src="/final02/js/menu-classie.js"></script>
<script src="/final02/js/menu-main.js"></script>
</html>