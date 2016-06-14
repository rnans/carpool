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
<script type="text/javascript">
window.onload=function(){
	var params="poolname=${poolname}&color=${color}&carimg=${carimg}";
	sendRequest('memberList.do', params, showResult, 'GET');
}

	
	function showResult(){
	if(XHR.readyState==4){
		if(XHR.status==200){
			var result = XHR.responseText;
			commside.innerHTML=result;
		}
	}
}
	
	var uid=null;
	function msgOpen(){	
		
		window.open('messageWrite.do?uid='+uid,'','width=400, height=270')
	}
</script>
</head>
<style>
</style>
<body  style="background-color: #F6F6F6; padding-top: 110px;">
<%@include file="../header.jsp"%>

	<div id="lnb" data-skin="skin5" style="z-index: 50;"> 
		<div data-viewname="DLnbMenuView">
			<ul class="_joinedLnb">
				<li><a href="comm.do?poolname=${poolname}&color=${color}&carimg=${carimg}" data-skinfactor="tBorder color"
					class="_albumLnbBtn _eachLnbMenu _unclickableMenu">전체글</a></li>
				<li><a href="gallery.do?poolname=${poolname}&color=${color}&carimg=${carimg}"
					data-skinfactor="tBorder color"
					class="_albumLnbBtn _eachLnbMenu _unclickableMenu">사진첩</a></li>
				<li><a href="calendar.do?poolname=${poolname}&color=${color}&carimg=${carimg}"
					data-skinfactor="tBorder color"
					class="_albumLnbBtn _eachLnbMenu _unclickableMenu">일정</a></li>
				<li><a href="commMember.do?poolname=${poolname}&color=${color}&carimg=${carimg}"
					data-skinfactor="tBorder color"
					class="_fullArticleLnbBtn _eachLnbMenu on">멤버</a></li>
			</ul>
		</div>
	</div>
	   
	
	 <div id="commside">
  </div>


<section class="memberSection"  style="width: 40%; margin: 0px auto;">
<div class="memberDiv" style="z-index: 100">

	<div class="searchWrap" style="background-color: #fff;border: 0;">
			<form autocomplete="off" action="">
				<h2 class="gSrOnly">검색 입력 폼</h2>
				<div class="uInputSearch"   style="display: block; ">
					<label class="gSrOnly" for="input_search">이름, 글내용, 해시태그로 검색</label>
					<input type="text" id="input_search"
						placeholder="이름, 글내용, 해시태그로 검색" maxlength="200" name="">

					<button type="button" class="searchbutton" style="display:inline-block; color: #fff;float: right;">
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
	<ul class="cThumbList" style="margin-bottom: 0px; border: 0;border-bottom: 1px solid #D5D5D5; "> 
	<li><div class="profile">
	<a href="#"><img data-uiselector="profileImg" src="http://s.cmstatic.net/webclient/dres/20160524170024/images/template/profile_60x60.gif" alt="남구문"></a>
	</div>
	
	<div class="nameArea"> 
	<strong class="name">${member.name }</strong>   
	
	<c:if test="${member.grade==0}"><span class="labelAuth" data-skin="skin5"  data-skinfactor="bg">리더</span> </c:if>   
	<c:if test="${member.sex==null||member.sex=='남성' }"><i class="fa fa-mars" style="color: skyblue;" aria-hidden="true"></i></c:if>
	<c:if test="${member.sex=='여성' }"><i class="fa fa-venus" style="color: pink;" aria-hidden="true"></i></c:if>
	<span class="subtxt">${member.phonenum }</span> </div>
	<div class="setting"></div>
	<div class="side"> 
<c:if test="${member.id==sid}"> <a href="#"><i class="fa fa-cog fa-2x"  style="color: #8C8C8C;" aria-hidden="true"></i></a> </c:if>
<c:if test="${member.id!=sid}"> <a href="#"> <i class="fa fa-comment-o fa-2x" style="color: #8C8C8C;"  aria-hidden="true"></i></a></c:if>
     </div>
	</li>    
	</ul>
	 </c:forEach>    
	</div>
</div>
</div>	
<div style="border : 1px solid #DDD;background-color: #fff; margin-bottom: 20px;" ><!-- 설정 -->
<h3 class="titleSetting" style=" margin-bottom: 0px; margin-top: 0px;">파티 정보 관리</h3>
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