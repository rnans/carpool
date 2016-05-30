<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="CSS/comm.css">
</head>
<style>
</style>
<body>
<%@include file="../header.jsp"%>
<hr>
<div id="lnb" data-skin="skin5">
	<ul class="_joinedLnb"> 
	<li><span><a href="comm.do" class="_fullArticleLnbBtn _eachLnbMenu">전체글</a></span></li>
	<li><a href="calendar.do" class="_calendarLnbBtn _eachLnbMenu _unclickableMenu on">일정</a></li>
	<li><a href="commMember.do" data-skinfactor="tBorder color" class="_memberLnbBtn _eachLnbMenu _unclickableMenu">멤버</a></li>
	</ul> 
</div>

<section data-viewname="DBandMemberLayoutView" class="memberSection">
<div class="memberDiv">
<h1 class="uSectionTitle">멤버<em class="count">1</em>
<span style=" width: auto; height: 40px; text-align: center; color: #666; font-size: 14px; float: right;" ><button type="button" class="titleAreaBtn"> 멤버 초대하기</button></span></h1>

		<div class="searchWrap" data-status="true">
			<form autocomplete="off" action="">
				<h2 class="gSrOnly">검색 입력 폼</h2>
				<div class="uInputSearch">
					<label class="gSrOnly" for="input_search">이름, 글내용, 해시태그로 검색</label>
					<input type="text" id="input_search"
						placeholder="이름, 글내용, 해시태그로 검색" maxlength="200" name="">

					<button type="button" class="searchbutton">검색</button>
				</div>
			</form>
		</div>

<div class="memberWrap">

<div data-uiselector="memberListWrap">
	<div data-viewname="DMemberListView">
	

<c:if test="${empty memberlist}">

		등록된 커뮤니티가 없습니다.

</c:if>		
<c:if test="!(${empty memberlist})">
	<div class="subTitle"> <strong>멤버</strong></div> 
	</c:if>
	<c:forEach var="member" items="${memberlist}">
	<ul class="cThumbList" data-uiselector="memberList" data-type="type3"> 
	<li><div class="profile">
	<a href="#"><img data-uiselector="profileImg" src="http://s.cmstatic.net/webclient/dres/20160524170024/images/template/profile_60x60.gif" alt="남구문"></a>
	</div>
	
	<div class="nameArea"> 
	<strong class="name">${member.name }</strong>   
	<c:if test="${member.grade==0}"><span class="labelAuth">리더</span> </c:if>   
	<span class="subtxt">${member.phonenum }</span> </div>
	<div class="setting">임시 </div>
	<div class="side"> 
	<button data-uiselector="btnSetting" type="button" class="setting" data-icon="setting02">
	<span class="gSrOnly">설정</span></button></div>
	</li>    
	</ul>
	 </c:forEach>    
	</div>
</div>
</div>

<div class=""><!-- 설정 -->
<h3 class="titleSetting">밴드 정보 관리</h3>
	<ul class="settingList setSmall">
		<li>
			<div class="listWrap"> 
			<span class="name">카풀 이름 및 커버 설정</span>
			</div>
			<div class="side"> 
			<a href="/#!/band/61355066/bandCoverUpdate" class="_btnBandNameCover btnTxt">변경</a>
			</div>
		</li>
		<li>
			<div class="listWrap"> 
			<span class="name">공지 사항 등록</span>
			</div>
			<div class="side"> 
			<a href="/#!/band/61355066/bandCoverUpdate" class="_btnBandNameCover btnTxt">변경</a>
			</div>
		</li>
		<li>
			<div class="listWrap"> 
			<span class="name">기타 등등</span>
			</div>
			<div class="side"> 
			<a href="/#!/band/61355066/bandCoverUpdate" class="_btnBandNameCover btnTxt">변경</a>
			</div>
		</li>
	</ul>
</div> <!-- member div -->
<h3 class="titleSetting">나가기</h3>
	<ul class="settingList setSmall">
		<li>
			<div class="listWrap"> 
			<span class="name">파티 탈퇴하기</span>
			</div>
			<div class="side"> 
			<a href="/#!/band/61355066/bandCoverUpdate" class="_btnBandNameCover btnTxt">변경</a>
			</div>
		</li>
		<li>
			<div class="listWrap"> 
			<span class="name">파티 삭제하기</span>
			</div>
			<div class="side"> 
			<a href="/#!/band/61355066/bandCoverUpdate" class="_btnBandNameCover btnTxt">변경</a>
			</div>
		</li>
	</ul>
</div><!-- 설정 닫기 -->
</section>



</body>
</html>