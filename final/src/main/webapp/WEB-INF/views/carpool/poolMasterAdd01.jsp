<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#div1{
   float:left;
   width: 250px;
   height: 400px;
   border: 1px;
   margin: 5px;
}
#div2{
   float:right;
   width: 250px;
   height: 400px;
   border: 1px;
   margin: 5px;
}



</style>
<script>
window.onload=function()
{
	var sex='${dto.sex}';
	
	var male=document.getElementById('male');
	
	
	if(sex=="남자")
	{
		male.checked=true;
	}
	if(sex=="여자")
	{
		female.checked=true;
	}
}
</script>
</head>
<body>

	<fieldset>
		<legend>카풀 등록</legend>
		<form name="userInfo" action="poolMasterAdd02.do">
		<fieldset>
			<legend>개인 정보</legend>
			<div id="div1">
			이름:<input type="text" name="name" value="${dto.name }" readonly> 
			<br>
			아이디:<input type="text" name="id" value="${dto.id }"readonly>
			<br>
			주소:<input type="text" name="addr" value="${dto.addr }"readonly>
			<br>
			이메일:<input type="text" name="email" value="${dto.email }"readonly>
			<br>
			생년월일<input type="text" name="birthday" value="${dto.birth }"readonly>
			<br>
			전화번호:<input type="text" name="phonenumber" value="${dto.phonenum }"readonly>
			<br>
			성별:<input type="radio"  name="sex" value="남성" id="male"readonly>남성
			<input type="radio" name="sex" value="여성" id="female"readonly>여성
			<br>
			</div>
			<div id="div2">
			<img src='이미지 경로명' width="100" height="100"/>
			<br>
			
			
			<input type="file">
			</div>
		</fieldset>
		<br>
		<input type="button" value="취소" onclick="poolAdd.do">
			<input type="button" value="수정" onclick="poolAdd01Edit.do">  
			<input type="submit" value="다음"> 
			</form>
	</fieldset>
</body>
</html>