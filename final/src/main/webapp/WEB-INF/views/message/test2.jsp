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
	opener.location.reload();
	window.self.close();

}
var sendid=null;
function messageRewrite(){
	window.self.close();
	var param="?sendid="+sendid;
	window.open('messageRewrite.do'+param,'messageRewrite','width=500 height=400');
}
</script>
<body>
<div>
<fieldset>
 <legend>쪽지</legend>
 보낸사람:<input type="text" name="sendid" value="${list[0].sendid}" readonly="readonly"><br>
 받는사람:<input type="text" name="receiveid" value="${list[0].receiveid}" readonly="readonly"><br>
내용:<br>
<textarea rows="5" cols="55" name="content">${list[0].content }</textarea><br>
<input type="button" value="답장하기" onclick="javascript:sendid='${list[0].sendid}';messageRewrite();">
<input type="button" value="닫기" onclick="delCancel()">
</fieldset>
</div>

</body>
</html>