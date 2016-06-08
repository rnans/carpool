<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name="mWrite" action="messageSend.do">
	받는사람:<input type="text" name="sendid" value="${userid}"><br>
	보내는사람:<input type="text" name="receiveid" value="${rid}"><br>
	<textarea rows="10" cols="10" name="content"></textarea><br>
	<input type="submit" value="메시지전송">
	</form>
</body>
</html>