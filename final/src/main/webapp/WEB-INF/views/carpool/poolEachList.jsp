<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카풀 상세 보기</title>
</head>
<body>
<%@ include file="../header.jsp" %>
<section>
<article>
<div id="profile">유저 프로필 영역</div>
</article>
<article>
<div>
<h1>(타세요 / 태워주세요 태그) 카폴 상세 보기</h1>
<div>프로필 사진 영역</div>
<div>진행 상태</div>
<div>출발지</div>
<div>경유지</div>
<div>도착지</div>
<div>출발 일시</div>
<div>목적</div>
<div>인원</div>
<div>비용</div>
<div>성별</div>
<div>흡연</div>
<div>지도 API 영역</div>
<div>평점 게시판 영역
<%@ include file="poolRateList.jsp" %>
</div>
<div><input type="button" value="찜하기"><input type="button" value="예약하기"></div>
<div><input type="button" value="목록보기"><input type="button" value="수정하기"><input type="button" value="삭제하기"></div>
</div>
</article>
</section>
</body>
</html>