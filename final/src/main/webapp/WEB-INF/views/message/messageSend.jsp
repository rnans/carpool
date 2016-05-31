<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
function sendCancel(){
	window.self.close();
}
</script>
<body>
<div>
<fieldset>
<legend>쪽지 보내기</legend>
<form name="messageSend_ok" action="messageSend_ok.do">
  보내는사람:<input type="text" name="sendid" readonly="readonly" value="${sid }"><br>
 받는사람:<input type="text" name="receiveid" readonly="readonly" value="${id }"><br>
 내용:<br>
 <textarea name="content" rows="5" cols="55"></textarea>
<div><input type="submit" value="쪽지전송"></div> <div><input type="button" value="닫기" onclick="sendCancel()"></div> 
 </form>
</fieldset>
</div>
</body>
</html>