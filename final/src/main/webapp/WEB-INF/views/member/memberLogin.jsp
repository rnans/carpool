<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function loginClose(){
	window.self.close();
}
</script>
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.js"></script>
<script src="js/idChecked.js"></script> 
</head>
<body>
	<section>
		<article>
			<form name="login" action="login.do" method="post">
				<fieldset>
					<legend>로그인</legend>
						<ul>
							<li>ID : <input type="text" name="id" id="id" ></li>
							<li>비밀번호 : <input type="password" name="pwd"></li>
						</ul>
						<p>		
							<input type="checkbox" name="saveid" id="saveid" onclick="javascript:saveid(document.new_user_session);"> ID기억하기
						</p>
						<div>
							<input type="submit" value="로그인">
							<input type="button" value="닫기" onclick="loginClose()">
						</div>
						<div>
							<a href="idFind.do">ID찾기</a> / <a href="pwFind.do">비밀번호찾기</a>
						</div>
				</fieldset>
			</form>
		</article>
	</section>
	
	<script src="js/classie.js"></script>
		<script src="js/dialogFx.js"></script>
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