<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- 텍스트상자 -->
<link rel="stylesheet" type="text/css" href="/final02/CSS/set1.css" />

<!-- 로그인 버튼 -->
<link rel="stylesheet" type="text/css" href="/final02/CSS/buttons.css" />

<!-- 로그인 모달사용 -->
<link rel="stylesheet" type="text/css" href="/final02/CSS/dialog-sally.css" />
<link rel="stylesheet" type="text/css" href="/final02/CSS/dialog.css" />

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
</script>

<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.js"></script>
<script src="/final02/js/idChecked.js"></script>
<script src="/final02/js/modernizr.custom2.js"></script>
<style>
.button{
	float: none;
	margin:0 auto;
}
#a{
	
	margin-right: 250px;
}

</style>
</head>
<body>
	<!-- 로그인버튼 -->
	<a href="#" data-dialog="somedialog" class="trigger">로그인</a>
	
	<!-- 내용들어갈 부분 -->
	<div class="container">
				<div id="somedialog" class="dialog">
				
				<div class="dialog__overlay"></div>
			
			<div id="loginDiv" class="dialog__content">

				<form name="login" action="login.do" method="post">
					<section class="content">
						<span class="input input--hoshi"> <input
							class="input__field input__field--hoshi" type="text" id="id"
							name="id"> <label
							class="input__label input__label--hoshi input__label--hoshi-color-1"
							for="id"> <span
								class="input__label-content input__label-content--hoshi">ID</span>
						</label>
						</span> <span class="input input--hoshi"> <input
							class="input__field input__field--hoshi" type="password" id="pwd"
							name="pwd"> <label
							class="input__label input__label--hoshi input__label--hoshi-color-1"
							for="pwd"> <span
								class="input__label-content input__label-content--hoshi">PassWord</span>
						</label>
						</span>
					</section>
						<div id="a">
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
							<section class="content">
								<span class="input input--hoshi"> 
									<input class="input__field input__field--hoshi" type="text" id="name" name="name"> 
										<label class="input__label input__label--hoshi input__label--hoshi-color-1" for="name">
											<span class="input__label-content input__label-content--hoshi">Name</span>
										</label>
								</span> 
								<span class="input input--hoshi"> 
									<input class="input__field input__field--hoshi" type="text" id="phonenum" name="phonenum"> 
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
							
							<section class="content">
								<span class="input input--hoshi"> 
									<input class="input__field input__field--hoshi" type="text" id="id" name="id"> 
										<label class="input__label input__label--hoshi input__label--hoshi-color-1" for="id">
											<span class="input__label-content input__label-content--hoshi">ID</span>
										</label>
								</span> 
								<span class="input input--hoshi"> 
									<input class="input__field input__field--hoshi" type="text" id="phonenum" name="phonenum"> 
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
		
	
		
		var status='${status}';
		window.onload=function()
		{
			var dlgtrigger = document.querySelector( '[data-dialog]' ),
			somedialog = document.getElementById( dlgtrigger.getAttribute( 'data-dialog' ) ),
			dlg = new DialogFx( somedialog );

			dlgtrigger.addEventListener( 'click', dlg.toggle.bind(dlg) );
			
			if(status=='1')
			{
				dlg.toggle.bind(dlg);
			}
		}
		
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


		

			
		</script>	
	
	
</body>
</html>