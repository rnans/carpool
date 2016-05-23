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
		<form name="carInfo" action="poolMasterAdd03.do">
		<fieldset>
			<legend>차량 정보</legend>
			<div id="div1">
			차종:<input type="text" name="carKind" value="${dto.carKind }" readonly> 
			<br>
			차 번호:<input type="text" name="carNum" value="${dto.carNum }"readonly>
			<br>
			차주:<input type="text" name="carMaster" value="${dto.carMaster }"readonly>
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
		<input type="button" value="취소" onclick="poolMasterAdd01.do">
			<input type="button" value="수정" onclick="poolAdd01Edit.do">  
			<input type="submit" value="다음"> 
			</form>
	</fieldset>
</body>
</html>