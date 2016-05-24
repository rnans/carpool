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
</head>
<body>
	<section>
		<article>
			<form name="login" action="login.do" method="post">
				<fieldset>
					<legend>로그인</legend>
						<ul>
							<li>ID : <input type="text" name="id" value="${saveid}"></li>
							<li>비밀번호 : <input type="password" name="pwd"></li>
						</ul>
						<p>
							<c:if test="${!empty saveid}">
								<input type="checkbox" name="saveid" value="on" checked> ID기억하기
							</c:if>
							<c:if test="${empty saveid}">
								<input type="checkbox" name="saveid" value="on"> ID기억하기
							</c:if>
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
</body>
</html>