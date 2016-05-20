<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function idFindClose(){
	window.self.close();
}
</script>
</head>
<body>
	<section>
		<article>
			<form name="idFind" action="idFind.do" method="post">
				<fieldset>
					<legend>ID 찾기</legend>
						<ul>
							<li>이름 : <input type="text" name="name"></li>
							<li>번호 : <input type="text" name="phonenum"></li>
						</ul>
						<div>
							<input type="submit" value="ID 찾기">
							<input type="button" value="닫기" onclick="idFindClose()">
						</div>
				</fieldset>
			</form>
		</article>
	</section>
</body>
</html>