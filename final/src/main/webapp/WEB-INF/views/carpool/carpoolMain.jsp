<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카폴 서비스 메인 페이지</title>
</head>
<body>
<section>
<article>
<div id="search">
<h1>검색 영역</h1>
<form name="search" action="search.do">
출발지 <input type="text" name="startSpot"><br>
도착지 <input type="text" name="endSpot"><br>
<input type="submit" value="검색"><input type="button" value="상세 검색"><input type="button" value="실시간 매칭"><br>
<div id="categorySearch">
상세 검색 영역
지역 <input type="button" value="서울"><input type="button" value="인천"><input type="button" value="부산"><br>
인원 <input type="button" value="1명"><input type="button" value="2명"><input type="button" value="3명"><br>
성별 <input type="button" value="남자만"><input type="button" value="여자만"><br>
흡연여부 <input type="button" value="흡연 가능"><input type="button" value="흡연 불가"><br>
</div>
</form> 
</div>
</article>
<div id="recommand">
추천 검색 영역
</div>
<div id="tab">
<a href="#">단기</a><a href="#">정기</a>
</div>
<div id="list">
리스트 영역
</div>
</section>
</body>
</html>