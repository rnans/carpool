<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function delCancel(){
	window.self.close();
}
</script>
</head>
<body>
	<section>
		<article>
			<form name="memberCarOk" action="memberCarOk.do?idx="${idx}>
			<input type="hidden" name="idx" value="${idx}">
				<fieldset>
					<legend>차량 승인하기</legend>
					<div>
						<select name="confirm">
							<option value="1">승인</option>
							<option value="0">승인취소</option>
						</select>
					</div>
					<input type="submit" value="확인">
					<input type="button" value="취소" onclick="delCancel()">
				</fieldset>
			</form>
		</article>
	</section>
</body>
</html>