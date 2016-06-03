<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/final02/CSS/poolCommon.css" />
<link rel="stylesheet" type="text/css" href="/final02/CSS/buttons.css" />
<link rel="stylesheet" type="text/css" href="/final02/CSS/set2.css" />
<script>
window.onload=function()
{
	var sex='${dto.sex}';
	
	var male=document.getElementById('male');
	
	
	if(sex=="남성")
	{
		male.checked=true;
	}
	else if(sex=="여성")
	{
		female.checked=true;
	}
}
</script>
</head>
<body>

	<fieldset>
		<legend>카풀 등록</legend>
		<fieldset>
			<legend>개인 정보</legend>
			<form name="userInfo" action="poolMemberAdd02.do">
			<div id="div1">
			이름 <input type="text" name="name" value="${dto.name }"> 
			<br>
			아이디 <input type="hidden" name="id" value="${dto.id }">
			<br>
			지역 <input type="text" name="addr" value="${dto.addr}">
			<br>
			이메일 <input type="email" name="email" value="${dto.email}">
			<br>
			생년월일 <input type="number" name="birth" value="${dto.birth }">
			<br>
			전화번호 <input type="tel" name="phonenum" value="${dto.phonenum }">
			<br>
			성별 <input type="radio"  name="sex" value="남성" id="male">남성
			<input type="radio" name="sex" value="여성" id="female">여성
			<br>
			</div>
			<div id="div2">
			<img src='이미지 경로명' width="100" height="100"/>
			<br>
			
			
			<input type="file">
			</div>
			<input type="button" value="취소" onclick="location.href='poolAdd'"> 
			<input type="submit" value="다음"> 
			</form>
		</fieldset>
		<br>
		
	</fieldset>
</body>
</html>