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
			<legend>차량 정보</legend>
			<div id="div1">
			차종:<input type="text" name="model" value="랜드로바"> 
			<br>
			차 번호:<input type="text" name="carNum" value="양123">
			<br>
			차구:<input type="text" name="carAddr" value="서울">
			<br>
			인증된 차량 입니다.
			<br>
			</div>
			<div id="div2">
			<img src='이미지 경로명' width="100" height="100"/>
			<br>
			<input type="radio"  name="carImage">
			<input type="radio" name="carImage">
			<input type="radio" name="carImage">
			<input type="radio" name="carImage">
			<br>	
			<input type="file">
			</div>
		</fieldset>
		<br>
		<input type="button" value="이전"> 
			<input type="submit" value="다음"> 
	</fieldset>
</body>
</html>