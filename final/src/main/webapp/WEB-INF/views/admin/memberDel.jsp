<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
		<c:set var="dto" value="${dto}"></c:set>
			<form name="memberDel" action="memberDel.do?idx="${dto.idx}>
			<input type="hidden" name="idx" value="${dto.idx}">
				<fieldset>
					<legend>회원탈퇴시키기</legend>
					<div> 정말 탈퇴시키시겠습니까?</div>
					<input type="submit" value="탈퇴시키기">
					<input type="button" value="취소" onclick="delCancel()">
				</fieldset>
			</form>
		</article>
	</section>
</body>
</html>