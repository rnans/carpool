<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
function delCancel(){
	window.self.close();
}
</script>
<body>
<form action="messageRewrite_ok.do">
<div>
<fieldset>
 <legend>답장보내기</legend>
 보낸사람:<input type="text" name="sendid" value="${sid }" readonly="readonly"><br>
 받는사람:<input type="text" name="receiveid" value="${receiveid}" readonly="readonly"><br>
내용:<br>
<textarea rows="5" cols="55" name="content"></textarea><br>
<input type="submit" value="답장보내기">
<input type="button" value="닫기" onclick="delCancel()">
</fieldset>
</div>
</form>

</body>
</html>