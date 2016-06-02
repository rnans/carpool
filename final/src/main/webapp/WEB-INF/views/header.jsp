<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<style>
	#rig2{
		text-align: right;
	}
	#rig2 a{
		color: black;
	}
</style>

<link href="/final02/CSS/cssReset.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="/final02/CSS/dialog-sally.css" />
<link rel="stylesheet" type="text/css" href="/final02/CSS/dialog.css" />

		
<link href="/final02/CSS/component.css" rel="stylesheet" type="text/css" />
<link href="/final02/CSS/default.css" rel="stylesheet" type="text/css" />
<script src="/final02/js/cbpTooltipMenu.js"></script>
<script src="/final02/js/cbpTooltipMenu.min.js"></script>
<script src="/final02/js/modernizr.custom.js"></script>
<script src="https://code.jquery.com/jquery-2.2.3.js"></script>

<script>
</script>

<header>
	<c:if test="${!empty sessionScope.sid}">
		<div id="rig1">
			${sessionScope.sid}님 로그인 | <a href="logout.do">로그아웃</a>
		</div>
	</c:if>
	<c:if test="${empty sessionScope.sid }">
		<div id="rig2">
		<c:import url="/loginForm.do"></c:import> | <a href="memberJoin.do">회원가입</a>
		</div>
	</c:if>
		
	<ul>
		<c:if test="${sessionScope.grade eq '관리자'}">
			
				<li><a href="memberInfo.do">관리자페이지</a></li>
		
		</c:if>
<ul id="cbp-tm-menu" class="cbp-tm-menu">
	<li onclick="location.href='index.do'">
		<a href="#">Home</a>
	</li>

	<li>
		<a href="myPage.do">마이페이지</a>
	</li>
	<li onclick="location.href='poolMain.do'">
	
		<a href="#"><img src="/final02/icons/car.png">카풀</a>
		<ul class="cbp-tm-submenu">
			<li><a href="poolMain.do" class="cbp-tm-icon-archive">메인</a></li>
			<li><a href="poolAdd.do" class="cbp-tm-icon-archive">등록하기</a></li>
			<li><a href="poolMemberList.do" class="cbp-tm-icon-cog">탈래요</a></li>
			<li><a href="poolMasterList.do" class="cbp-tm-icon-location">타세요</a></li>
			<li><a href="shortPoolList.do" class="cbp-tm-icon-users">단기카풀</a></li>
			<li><a href="longPoolList.do" class="cbp-tm-icon-earth">정기카풀</a></li>
			<li><a href="poolStatus.do" class="cbp-tm-icon-location">예약하기</a></li>
		</ul>
	</li>
	<li>
		<a href="carList.do">차량관리</a>
	</li>
	<li>
		<a href="carBookInfo.do">차계부</a>
		<ul class="cbp-tm-submenu">
			<li><a href="cost.do" class="cbp-tm-icon-archive">차계부</a></li>
			<li><a href="cost.do" class="cbp-tm-icon-archive">비용</a></li>
			<li><a href="graph.do" class="cbp-tm-icon-cog">그래프</a></li>
		</ul>
	</li>
	<li>
		<a href="comm.do">커뮤니티</a>
		<ul class="cbp-tm-submenu">
			<li><a href="comm.do" class="cbp-tm-icon-screen">전체글</a></li>
			<li><a href="calendar.do" class="cbp-tm-icon-mail">일정</a></li>
			<li><a href="commMember.do" class="cbp-tm-icon-contract">멤버</a></li>
		</ul>
	</li>
	<li>
		<a href="csCenter.do">고객센터</a>
		<ul class="cbp-tm-submenu">
			<li><a href="csCenter.do" class="cbp-tm-icon-screen">공지사항</a></li>
			<li><a href="qnaList.do" class="cbp-tm-icon-screen">자주묻는질문</a></li>
			<li><a href="oneAndOne.do" class="cbp-tm-icon-mail">1:1문의</a></li>
			<li><a href="useGuideList.do" class="cbp-tm-icon-contract">이용안내</a></li>
		</ul>
	</li>
</ul>

		<script>
			var menu = new cbpTooltipMenu( document.getElementById( 'cbp-tm-menu' ) );
		</script>
			  </ul>
	<!-- --------------------------------------------------------------------------------------------------- -->
		    

</header>
