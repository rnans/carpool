<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<section>
<article>
<div id="profile">유저 프로필 영역</div>
</article>
<article>
<div id="viewContent">
<div>프로필 사진 영역</div>
<div>진행 상태 ${dto.status}</div>
<div>출발지 ${dto.startspot }</div>
<div>경유지 ${dto.route }</div>
<div>도착지 ${dto.endspot }</div>
<div>출발 일시 ${dto.starttime }</div>
<c:if test="${dto.termtype eq '정기' }">
<div>종료 일시 ${dto.enddate }</div>
<div>반복 ${dto.days }</div>
</c:if>
<div>목적 ${dto.aim }</div>
<div>인원 ${dto.mannum }</div>
<div>비용 ${dto.pay }</div>
<div>성별 ${dto.gender }</div>
<div>흡연 ${dto.smoking }</div>
<div>지도 API 영역</div>
<div>평점 게시판 영역
</div>
</div>
</article>
<article>

</article>
</section>

</body>
</html>