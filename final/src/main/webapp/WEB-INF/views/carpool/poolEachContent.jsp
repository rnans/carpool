<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
function runDel()
{
	var param='?idx='+document.getElementById('idx').value;
	
	location.href='poolDel.do'+param;
}
var userid=null;
function message(){

	var param="?userid="+userid;
	window.open('messageSend.do'+param,'messagesend','width=480 height=320');
}
function request()
{
	var poolType='${dto.pooltype}';
	var param='';
	
	window.alert(poolType);
	
	if(poolType=='타세요')
	{
		var param='?idx='+document.getElementById('idx').value;
		window.open('reqToMasterPage.do'+param,'reqListPopup','width=480 height=320');
	}	
	else if(poolType=='탈래요')
	{
		var param='?idx='+document.getElementById('idx').value+'&memberid='+'${sessionScope.sid}';
		window.open('reqToMemberPage.do'+param,'reqListPopup2','width=480 height=320');
	}

	
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
<div id="viewContent">
<h1>(타세요 / 태워주세요 태그) 카폴 상세 보기</h1>
<input type="hidden" id="idx" name="idx" value="${dto.idx}">
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
<%@ include file="poolRateList.jsp" %>
</div>
<div><input type="button" value="찜하기"><input type="button" value="예약하기" onclick="request()"></div>
<div><input type="button" value="목록보기"><input type="button" value="수정하기" onclick="showEdit()"><input type="button" value="삭제하기" onclick="runDel()"></div>
</div>
<div><input type="button" value="쪽지보내기" onclick="javascript:userid='${dto.userid}';message();"></div>
  <a href="messageShow.do?sid=${sid }">목록</a>
</article>
<article>
<form name="reply" action="rateWrite.do">
<select name="rate">
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
</select>
<textarea name="content">

</textarea>
<input type="button" onclick="rateWrite();" value="평가하기">
<input type="button" onclick="rateModify()" value="수정">
<input type="button" onclick="rateDelete()" value="삭제">
</form>
</article>
<article>
<%@include file="poolRateList.jsp" %>
</article>
</section>
</body>
</html>