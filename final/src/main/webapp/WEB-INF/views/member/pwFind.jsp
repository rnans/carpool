<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function pwFindClose(){
	window.self.close();
}
</script>
</head>
<body>
	<section>
		<article>
			<form name="pwFind" action="pwFind.do" method="post">
				<fieldset>
					<legend>비밀번호 찾기</legend>
						<ul>
							<li>ID : <input type="text" name="id"></li>
							<li>번호 : <input type="text" name="phonenum"></li>
						</ul>
						<div>
							<input type="submit" value="비밀번호 찾기">
							<input type="button" value="닫기" onclick="pwFindClose()">
						</div>
				</fieldset>
			</form>
		</article>
	</section>
</body>
</html>