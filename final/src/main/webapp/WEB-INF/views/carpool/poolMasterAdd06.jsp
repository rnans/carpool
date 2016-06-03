<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="/final02/CSS/poolCommon.css" />
<link rel="stylesheet" type="text/css" href="/final02/CSS/buttons.css" />
<link rel="stylesheet" type="text/css" href="/final02/CSS/set2.css" />
</head>
<body>
<fieldset>
<legend>카풀 등록</legend>
<script>
window.onload=function()
{
	var type='${sessionScope.data.termtype}';
	
	var f=document.getElementById('f');
	if(type=='정기')
	{
		f.method='POST';
	}
}
</script>
<form id="f" name="poolNameform" action="poolMasterAddConfirm.do">
		카풀명:<input type="text" name="poolname" placeholder="카폴 이름을 입력하세요."> 
		<br>
		소개글
		<br>
		<input type="text" value="ㅎㅇ"> 
		<br>

	<br>
	<input type="button" value="이전"> 
			<input type="submit" value="완료">
			</form> 
</fieldset>
			
</body>
</html>