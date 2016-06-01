<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<!-- 로그인 버튼 -->

<link rel="stylesheet" type="text/css" href="/final02/CSS/buttons.css" />
<!-- 로그인 모달사용 -->
<link rel="stylesheet" type="text/css" href="/final02/CSS/dialog-sally.css" />
<link rel="stylesheet" type="text/css" href="/final02/CSS/dialog.css" />
<script>
function loginCheck(){
	var id = document.getElementById('id').value;
	var pwd = document.getElementById('pwd').value;
	var form = document.login;
	
	if(form.id.value=="" || form.pwd.value==""){
		alert("아이디 혹은 비밀번호를 입력해 주세요.");
		
	}
	else
	{
		form.submit();
	}
	
}
</script>
<script>
function loginClose(){
	window.self.close();
}
</script>
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.js"></script>
<script src="/final02/js/idChecked.js"></script>
<script src="/final02/js/modernizr.custom2.js"></script>
</head>
<body>
	<!-- 로그인버튼 -->
	<div class="button-wrap"><button data-dialog="somedialog" class="trigger">로그인</button></div>
	
	<!-- 내용들어갈 부분 -->
	<div class="container">
				<div id="somedialog" class="dialog">
				<div class="dialog__overlay"></div>
				<div class="dialog__content">
				<form name="login" action="login.do" method="post">
					<fieldset>
					<legend>로그인</legend>
						<ul>
							<li>ID : <input type="text" name="id" id="id" ></li>
							<li>비밀번호 : <input type="password" name="pwd" id="pwd"></li>
						</ul>
						<p>		
							<input type="checkbox" name="saveid" id="saveid" onclick="javascript:saveid(document.new_user_session);"> ID기억하기
						</p>
						<div>
							<button type="button" class="button button--isi button--border-thin button--size-s button--round-s" onclick="loginCheck()">
								<span>로그인</span>
							</button>
							
						</div>
						<div>
							<a href="idFind.do">ID찾기</a> / <a href="pwFind.do">비밀번호찾기</a>
						</div>
					</fieldset>
				</form>
											
					</div>
				</div>
	</div>
		
		
		<!-- 모달 -->
		<script src="/final02/js/classie.js"></script>
		<script src="/final02/js/logindialogFx.js"></script>
		<script>
			(function() {

				var dlgtrigger = document.querySelector( '[data-dialog]' ),
					somedialog = document.getElementById( dlgtrigger.getAttribute( 'data-dialog' ) ),
					dlg = new DialogFx( somedialog );

				dlgtrigger.addEventListener( 'click', dlg.toggle.bind(dlg) );

			})();
		</script>	
	
	
</body>
</html>