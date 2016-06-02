<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="search">
<h1>검색 영역</h1>
								<form name="search" action="search.do">
								출발지<input type="text" placeholder="출발지를 입력하세요."  id="ss" name="startspot"><br>
								<input type="hidden" id="sc" name="startcoordi">
								목적지<input type="text" placeholder="목적지를 입력하세요."  id="es" name="endspot"><br>
								<input type="hidden" id="ec" name="endcoordi">
								<input type="submit" value="검색"><input type="button" onclick="showCate()" value="상세 검색"><input type="button" value="실시간 자동 매칭"><br>
								<div id="categorySearch">
								상세 검색 영역
								지역 <input type="button" value="서울"><input type="button" value="인천"><input type="button" value="부산"><br>
								인원 <input type="button" value="1명"><input type="button" value="2명"><input type="button" value="3명 이상"><br>
								성별 <input type="button" value="남성만"><input type="button" value="여성만"><br>
								흡연여부 <input type="button" value="흡연 가능"><input type="button" value="흡연 불가"><br>
								</div>
								</form> 
								</div>



</body>
</html>