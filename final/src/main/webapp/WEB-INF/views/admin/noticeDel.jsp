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
			<form name="noticeDel" action="noticeDelete_ok.do?idx="${idx}>
			<input type="hidden" name="idx" value="${ idx}">
				<fieldset>
					<legend>공지사항 글 삭제하기</legend>
					<div> 정말 삭제하시겠습니까?</div>
					<input type="submit" value="글삭제">
					<input type="button" value="취소" onclick="delCancel()">
				</fieldset>
			</form>
		</article>
	</section>
</body>
</html>