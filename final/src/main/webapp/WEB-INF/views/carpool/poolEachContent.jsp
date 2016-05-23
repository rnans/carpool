<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카풀 상세 보기</title>
<script>
function showEdit()
{
	var param='?idx='+document.getElementById('idx').value;
	
	location.href='poolEditForm.do'+param;
}
</script>
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
<input type="hidden" id="idx" name="idx" value="${dto.idx}">
<div>프로필 사진 영역</div>
<div>진행 상태 ${dto.status}</div>
<div>출발지 ${dto.startspot }</div>
<div>경유지 ${dto.route }</div>
<div>도착지 ${dto.endspot }</div>
<div>출발 일시 ${dto.starttime }</div>
<div>목적 ${dto.aim }</div>
<div>인원 ${dto.mannum }</div>
<div>비용 ${dto.pay }</div>
<div>성별 ${dto.gender }</div>
<div>흡연 ${dto.smoking }</div>
<div>지도 API 영역</div>
<div>평점 게시판 영역
<%@ include file="poolRateList.jsp" %>
</div>
<div><input type="button" value="찜하기"><input type="button" value="예약하기"></div>
<div><input type="button" value="목록보기"><input type="button" value="수정하기" onclick="showEdit()"><input type="button" value="삭제하기"></div>
</div>
</article>
</section>
</body>
</html>