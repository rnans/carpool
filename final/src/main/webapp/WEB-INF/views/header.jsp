<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<style>
	#rig2{
		text-align: right;
	}
	#rig2 a{
		color: black;
	}
.button{
	float: none;
	margin:0 auto;
}

</style>
<script src="/final02/js/httpRequest.js"></script>
<script src="https://code.jquery.com/jquery-2.2.3.js"></script>
<script src="/final02/bootstrap/js/bootstrap.js"></script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
<link href="/final02/CSS/cssReset.css" rel="stylesheet" type="text/css" />

<!-- 텍스트상자 -->
<link rel="stylesheet" type="text/css" href="/final02/CSS/set1.css" />

<!-- 로그인 버튼 -->
<link rel="stylesheet" type="text/css" href="/final02/CSS/buttons.css" />

<!-- 로그인 모달사용 -->
<link rel="stylesheet" type="text/css" href="/final02/CSS/dialog-sally.css" />
<link rel="stylesheet" type="text/css" href="/final02/CSS/dialog.css" />


<link href="/final02/CSS/bootstrap.css" rel="stylesheet" type="text/css"/>
<link href="/final02/CSS/menu.css" rel="stylesheet" type="text/css" />


<script>
</script>

<header>

<nav class="navbar navbar-findcond navbar-fixed-top">
    <div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.do">PoolParty</a>
		</div>
		<div class="collapse navbar-collapse" id="navbar">
			<ul class="nav navbar-nav navbar-left">
				<li class="dropdown">
					<a href="poolMain.do" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">카풀<span class="badge">0</span><span class="caret"></a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="poolAdd.do">등록하기</a></li>
						<li class="divider"></li>
						<li><a href="poolFindForm.do">검색하기</a></li>						
						<li class="divider"></li>
						<li><a href="poolMasterList.do">타세요</a></li>
						<li><a href="poolMemberList.do">탈래요</a></li>
						<li><a href="shortPoolList.do">단기 카풀</a></li>
						<li><a href="longPoolList.do">정기 카풀</a></li>
						<li class="divider"></li>
						<li><a href="poolStatus.do">예약 현황</a></li>
						
					</ul>
				</li>
				<li class="dropdown">
					<a href="comm.do" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">커뮤니티 <span class="badge">0</span><span class="caret"></span></a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="commMain.do">전체글</a></li>
						<li class="divider"></li>
						<li><a href="calendar.do">일정</a></li>
						<li><a href="commMember.do">멤버</a></li>
					</ul>
				</li>
				<li class="dropdown">
					<a href="carBookInfo.do" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">차계부 <span class="caret"></span></a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="carBookInfo.do">차계부</a></li>
						<li><a href="cost.do">비용</a></li>
						<li><a href="graph.do">그래프</a></li>
					</ul>
				</li>
				<li><a href="carList.do">차량관리</a></li>
				<li class="dropdown">
					<a href="messageList.do" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">쪽지함 <span class="badge">${mNum}</span><span class="caret"></span></a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="messageList.do">쪽지함보기</a></li>
						<hr>
						<li class="view"></li>
					</ul>
				</li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="csCenter.do" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">고객센터 <span class="caret"></span></a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="csCenter.do">공지사항</a></li>
						<li class="divider"></li>
						<li><a href="qnaList.do">자주묻는질문</a></li>
						<li><a href="oneAndOne.do">1:1문의</a></li>
						<li><a href="useGuideList.do">이용안내</a></li>
					</ul>
				</li>
				<c:if test="${!empty sessionScope.sid}">
				<li class="active"><a href="myPage.do">${sessionScope.sid}님 로그인</a> </li>
				<li><a href="logout.do">로그아웃</a></li>
				</c:if>
				<c:if test="${empty sessionScope.sid }">
				<li class="active">
				<!-- 로그인버튼 -->
				<a data-dialog="somedialog" class="trigger">로그인</a></li>
				<li><a href="memberJoin.do">회원가입</a></li>
				</c:if>
				<c:if test="${sessionScope.grade eq '관리자'}">
				<li><a href="memberInfo.do">관리자페이지</a></li>
				</c:if>
			</ul>
			<!-- 검색상자(다른 거로 대체할거임) -->
<!-- 			<form class="navbar-form navbar-right search-form" role="search">
				<input type="text" class="form-control" placeholder="Search" />
			</form> -->
		</div>
	</div>
</nav>


	
    

<!-- 폼창에 값없을때 넘어가는거 방지 -->
<script>
function loginCheck(){
	
	var form = document.login;
	
	if(form.id.value=="" || form.pwd.value==""){
		alert("아이디 혹은 비밀번호를 입력해 주세요.");
		
	}else if(form.id.value!="" && form.pwd.value!=""){
		form.submit();
	}
	
}
function idFindCheck(){
	var form = document.idFind;
	if(form.name.value=="" || form.phonenum.value==""){
		alert("이름 혹은 전화번호를 입력해 주세요.");
	}else if(form.name.value!="" && form.phonenum.value!=""){
		form.submit();
	}
}
function pwFindCheck(){
	var form = document.pwFind;
	if(form.id.value==""||form.phonenum.value==""){
		alert("아이디 혹은 전화번호를 입력해 주세요.");
	}else if(form.id.value!="" && form.phonenum.value!=""){
		form.submit();
	}
}
function alram(){
	sendRequest("messageAlram.do",null, alramResult, 'GET');
}
function alramResult(){
	if(XHR.readyState==4){
		if(XHR.status==200){
			$('.view').html(XHR.responseText);
		}
	}
}
	alram();
</script>

<script src="/final02/js/idChecked.js"></script>
<script src="/final02/js/modernizr.custom2.js"></script>



	
	<!-- 내용들어갈 부분 -->
	<div class="container">
				<div id="somedialog" class="dialog">
				
				<div class="dialog__overlay"></div>
			
			<div id="loginDiv" class="dialog__content">

				<form name="login" action="login.do" method="post">
					<section class="content" style="width: 470px; min-height: 170px;">
						<span class="input input--hoshi"> 
						<input class="input__field input__field--hoshi" type="text" id="id"	name="id"> 
						<label
							class="input__label input__label--hoshi input__label--hoshi-color-1"
							for="id"> 
							<span class="input__label-content input__label-content--hoshi">ID</span>
						</label>
						</span> 
						
						<span class="input input--hoshi"> 
						 		<input class="input__field input__field--hoshi" type="password" id="pwd"
									   name="pwd" onkeydown="javascript:onEnterSubmit();"> 
							<label class="input__label input__label--hoshi input__label--hoshi-color-1"	for="pwd"> 
								<span class="input__label-content input__label-content--hoshi">PassWord</span>
							</label>
						</span>
					</section>
						<div id="a" class="col-md-12">
							<input type="checkbox" name="saveid" id="saveid"
								onclick="javascript:saveid(document.new_user_session);">
							ID기억하기
						</div>
						<div>
							<button type="button"
								class="button button--isi button--border-thin button--size-s button--round-s"
								onclick="loginCheck()">
								<span>로그인</span>
							</button>
							
						</div>
						<div>
							<a href="javascript:showFind()">ID찾기</a> / <a href="javascript:showFind2()">비밀번호찾기</a>
						</div>

				</form>
			</div>

			<!-- 아이디 찾기 -->
					<div id="idFind" class="dialog__content" style="display:none;">
						<form name="idFind" action="idFind.do" method="post">
							<section class="content" style="width: 470px; min-height: 170px;">
								<span class="input input--hoshi"> 
									<input class="input__field input__field--hoshi" type="text" id="name" name="name"> 
										<label class="input__label input__label--hoshi input__label--hoshi-color-1" for="name">
											<span class="input__label-content input__label-content--hoshi">Name</span>
										</label>
								</span> 
								<span class="input input--hoshi"> 
									<input class="input__field input__field--hoshi" type="text" id="phonenum" name="phonenum" onkeydown="javascript:onEnterSubmit2();"> 
										<label class="input__label input__label--hoshi input__label--hoshi-color-1" for="phonenum"> 
											<span class="input__label-content input__label-content--hoshi">Phonenum</span>
										</label>
								</span>
							</section>
								<div>
									<button type="button"
										class="button button--isi button--border-thin button--size-s button--round-s"
										onclick="idFindCheck()">
										<span>ID 찾기</span>
									</button>
								</div>
							
						</form>
					</div>
					
					<!-- 비밀번호찾기 -->
					<div id="pwFind" class="dialog__content" style="display:none;">
						<form name="pwFind" action="pwFind.do" method="post">
							
							<section class="content" style="width: 470px; min-height: 170px;">
								<span class="input input--hoshi"> 
									<input class="input__field input__field--hoshi" type="text" id="id" name="id"> 
										<label class="input__label input__label--hoshi input__label--hoshi-color-1" for="id">
											<span class="input__label-content input__label-content--hoshi">ID</span>
										</label>
								</span> 
								<span class="input input--hoshi"> 
									<input class="input__field input__field--hoshi" type="text" id="phonenum" name="phonenum" onkeydown="javascript:onEnterSubmit3();"> 
										<label class="input__label input__label--hoshi input__label--hoshi-color-1" for="phonenum"> 
											<span class="input__label-content input__label-content--hoshi">Phonenum</span>
										</label>
								</span>
							</section>
		
								<div>
									<button type="button"
										class="button button--isi button--border-thin button--size-s button--round-s"
										onclick="pwFindCheck()">
										<span>PW 찾기</span>
									</button>
								</div>
							
						</form>
					</div>

		</div>
		</div>

		
		
		<!-- 모달 -->
		<script src="/final02/js/classie.js"></script>
		<script src="/final02/js/logindialogFx.js"></script>
		<script>
		
		function onEnterSubmit(){
			var keyCode = window.event.keyCode;
			if(keyCode==13){
				login.submit();
			}
		}
		
		function onEnterSubmit2(){
			var keyCode = window.event.keyCode;
			if(keyCode==13){
				idfind.submit();
			}
		}
		
		function onEnterSubmit3(){
			var keyCode = window.event.keyCode;
			if(keyCode==13){
				pwfind.submit();
			}
		}
	
		
		var status='${status}';
	
		
		
		function showFind()
		{
			var ddiv=document.getElementById('loginDiv');
			
			ddiv.style.display='none';
			
			var idFdiv=document.getElementById('idFind');
			
			idFdiv.style.display='block';
		
		}
		function showFind2()
		{
			var ddiv=document.getElementById('loginDiv');
			
			ddiv.style.display='none';
			
			var pwFdiv=document.getElementById('pwFind');
			
			pwFdiv.style.display='block';
		}


		
		(function() {

			var dlgtrigger = document.querySelector( '[data-dialog]' )
						
			var	somedialog = document.getElementById( dlgtrigger.getAttribute( 'data-dialog' ) ),
				dlg = new DialogFx( somedialog );

			dlgtrigger.addEventListener( 'click', dlg.toggle.bind(dlg) );

		})();
			
		</script>	

</header>
