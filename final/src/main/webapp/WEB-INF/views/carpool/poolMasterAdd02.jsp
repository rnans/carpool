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
		<form name="carInfo" action="poolMasterAdd03.do">
		<fieldset>
			<legend>차량 정보</legend>
			<div id="div1">
			<input type="hidden" name="idx" value="${dto.idx}">

			운전자 이름<input type="text" name="driver" value="${dto.driver }">
			<br>
			차 번호<input type="text" name="carnum" value="${dto.carnum }">
			<br>
			차종<input type="text" name="cartype" value="${dto.cartype }">

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
		<input type="button" value="취소" onclick="location.href='poolMasterAdd01.do'">
			<input type="button" value="수정" onclick="editCarinfo()">  
			<input type="submit" value="다음"> 
			</form>
	</fieldset>
</body>
</html>