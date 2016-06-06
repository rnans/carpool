<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
    
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="CSS/comm.css">
<link rel="stylesheet" href="./bootstrap/css/font-awesome.min.css">
</head>
<style>
</style>
<body  style="background-color: #F6F6F6;">
<%@include file="../header.jsp"%>

	<div id="lnb" data-skin="skin5">
		<div data-viewname="DLnbMenuView">
			<ul class="_joinedLnb">
				<li><a href="comm.do" data-skinfactor="tBorder color"
					class="_albumLnbBtn _eachLnbMenu _unclickableMenu">전체글</a></li>
				<li><a href="gallery.do"
					data-skinfactor="tBorder color"
					class="_albumLnbBtn _eachLnbMenu _unclickableMenu">사진첩</a></li>
				<li><a href="calendar.do"
					data-skinfactor="tBorder color"
					class="_albumLnbBtn _eachLnbMenu _unclickableMenu">일정</a></li>
				<li><a href="commMember.do"
					data-skinfactor="tBorder color"
					class="_fullArticleLnbBtn _eachLnbMenu on">멤버</a></li>
			</ul>
		</div>
	</div>

<br><BR><Br><Br>

<section data-viewname="DBandMemberLayoutView" class="memberSection">
<div class="memberDiv" style="width: 50%; margin: 0px auto;">
<h1 class="uSectionTitle" style="vertical-align:  middle;"><span>멤버</span><em class="count">1</em>
<span style=" width: auto; height: 40px; text-align: center; color: #666; font-size: 14px; float: right;" >

<button type="button" class="uButton uButtonPoint btn-hover" 
	style="background:none ; color: #3cd370; border:1px solid #3cd370;min-width: 70px; line-height: 28px; margin: 0 3px; font-size: 14px;font-weight:bold ; padding-left: 5px; padding-right: 5px;">
	멤버 초대하기
</button></span></h1>

	<div class="searchWrap" style="background-color: #fff;">
			<form autocomplete="off" action="">
				<h2 class="gSrOnly">검색 입력 폼</h2>
				<div class="uInputSearch">
					<label class="gSrOnly" for="input_search">이름, 글내용, 해시태그로 검색</label>
					<input type="text" id="input_search"
						placeholder="이름, 글내용, 해시태그로 검색" maxlength="200" name="">

					<button type="button" class="searchbutton" style=" background-color: #fff;color: #fff;">
					<i class="fa fa-search" style="color: #BDBDBD;padding-top: 0px;font-size: 22px;" aria-hidden="true"></i></button>
				</div>
			</form>
		</div>

<div class="memberWrap" style="margin-bottom: 20px;">

<div data-uiselector="memberListWrap">
	<div data-viewname="DMemberListView" style="background-color: #fff;border : 1px solid #D5D5D5;border-bottom: 0px;">
	

<c:if test="${empty memberlist}">

		등록된 커뮤니티가 없습니다.

</c:if>		
<c:if test="!(${empty memberlist})">
	<div class="subTitle"> <strong>멤버</strong></div> 
	</c:if>
	<c:forEach var="member" items="${memberlist}">
	<ul class="cThumbList" style="margin-bottom: 0px;"> 
	<li><div class="profile">
	<a href="#"><img data-uiselector="profileImg" src="http://s.cmstatic.net/webclient/dres/20160524170024/images/template/profile_60x60.gif" alt="남구문"></a>
	</div>
	
	<div class="nameArea"> 
	<strong class="name">${member.name }</strong>   
	
	<c:if test="${member.grade==0}"><span class="labelAuth" style="background-color: #3cd370;">리더</span> </c:if>   
	<c:if test="${member.sex==null||member.sex=='남성' }"><i class="fa fa-mars" style="color: skyblue;" aria-hidden="true"></i></c:if>
	<c:if test="${member.sex=='여성' }"><i class="fa fa-venus" style="color: pink;" aria-hidden="true"></i></c:if>
	<span class="subtxt">${member.phonenum }</span> </div>
	<div class="setting"></div>
	<div class="side"> 
<c:if test="${member.id==sid}"> <a href="#"><i class="fa fa-cog fa-2x" style="color: #BDBDBD;" aria-hidden="true"></i></a> </c:if>
<c:if test="${member.id!=sid}"> <a href="#"> <i class="fa fa-comment-o fa-2x" style="color: #3cd370;"  aria-hidden="true"></i></a></c:if>
     </div>
	</li>    
	</ul>
	 </c:forEach>    
	</div>
</div>
</div>	
<div style="border : 1px solid #DDD;background-color: #fff; margin-bottom: 20px;" ><!-- 설정 -->
<h3 class="titleSetting" style=" margin-bottom: 0px; margin-top: 0px;">밴드 정보 관리</h3>
	<ul class="settingList setSmall">
		<li>
			<div class="listWrap"> 
			<span class="name">카풀 이름 및 커버 설정</span>
			</div>
			<div class="side"> 
			<a href="#" class="_btnBandNameCover btnTxt">변경</a>
			</div>
		</li>
		<li>
			<div class="listWrap"> 
			<span class="name">공지 사항 등록</span>
			</div>
			<div class="side"> 
			<a href="#" class="_btnBandNameCover btnTxt">변경</a>
			</div>
		</li>
		<li>
			<div class="listWrap"> 
			<span class="name">기타 등등</span>
			</div>
			<div class="side"> 
			<a href="#" class="_btnBandNameCover btnTxt">변경</a>
			</div>
		</li>
	</ul>
</div> <!-- member div -->


<div style="background-color: #fff; margin-bottom: 100px; border : 1px solid #DDD; "> 
<h3 class="titleSetting" style=" margin-bottom: 0px; margin-top: 0px;">나가기</h3>

	<ul class="settingList setSmall">
		<li>
			<div class="listWrap"> 
			<span class="name">파티 탈퇴하기</span>
			</div>
			<div class="side"> 
			<a href="#" class="_btnBandNameCover btnTxt">변경</a>
			</div>
		</li>
		<li>
			<div class="listWrap"> 
			<span class="name">파티 삭제하기</span>
			</div>
			<div class="side"> 
			<a href="#" class="_btnBandNameCover btnTxt">변경</a>
			</div>
		</li>
	</ul>
	</div>
</div><!-- 설정 닫기 -->
</section>



</body>
</html>