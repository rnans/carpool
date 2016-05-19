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
</head>
<body>

	<fieldset>
		<legend>카풀 등록</legend>
		<fieldset>
			<legend>개인 정보</legend>
			
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
		</fieldset>
		<br>
		<input type="button" value="취소"> 
			<input type="submit" value="다음"> 
	</fieldset>
</body>
</html>