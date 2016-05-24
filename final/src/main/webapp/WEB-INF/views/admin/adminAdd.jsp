<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function addCancel(){
	window.self.close();
}
</script>
</head>
<body>
	<section>
		<article>
		
			<form name="adminAdd" action="adminAdd.do?idx="${idx}>
			<input type="hidden" name="idx" value="${idx}">
				<fieldset>
					<legend>등급 변경(일반/관리자)</legend>
					<div>
						<select name="grade">
							<option value="관리자">관리자<option>
							<option value="일반">일반<option>
						</select>
					</div>
					<input type="submit" value="등급바꾸기">
					<input type="button" value="취소" onclick="addCancel()">
				</fieldset>
			</form>
		</article>
	</section>
</body>
</html>