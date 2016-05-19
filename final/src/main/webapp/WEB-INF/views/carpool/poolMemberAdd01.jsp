<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
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
</head>
<body>

	<fieldset>
		<legend>카풀 등록</legend>
		<fieldset>
			<legend>개인 정보</legend>
			<form name="userInfo" action="poolMemberAdd02.do">
			<div id="div1">
			이름:<input type="text" name="name" value="박양선"> 
			<br>
			아이디:<input type="text" name="id" value="didtjs123">
			<br>
			주소:<input type="text" name="addr" value="서울">
			<br>
			이메일:<input type="text" name="email" value="naver@naver.com">
			<br>
			생년월일<input type="text" name="birthday" value="19961216">
			<br>
			전화번호:<input type="text" name="phonenumber" value="01012342345">
			<br>
			성별:<input type="radio"  name="sex" value="남성">남성
			<input type="radio" name="sex" value="여성">여성
			<br>
			</div>
			<div id="div2">
			<img src='이미지 경로명' width="100" height="100"/>
			<br>
			
			
			<input type="file">
			</div>
			<input type="button" value="취소" onclick="poolAdd.do">
			<input type="button" value="수정" onclick="poolAdd01Edit.do">  
			<input type="submit" value="다음"> 
			</form>
		</fieldset>
		<br>
		
	</fieldset>
</body>
</html>