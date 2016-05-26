<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE ">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="CSS/comm.css">
</head>

<script type="text/javascript" src="js/httpRequest.js"></script>
<script type="text/javascript">
function show(){	
	var content=document.write.content.value;
	var id=document.write.sid.value;
	var params='content='+content+'&'+'id='+id;
	sendRequest('commWrite.do', params, null, 'GET');
}

</script>
<style>

body{
    box-sizing: border-box;
}
</style>
<body>
<%@include file="../header.jsp"%>
<hr>
<div id="lnb" data-skin="skin5">
<ul class="_joinedLnb"> 
<li><span><a href="comm.do" class="_fullArticleLnbBtn _eachLnbMenu">전체글</a></span></li>
<li><a href="calendar.do" class="_calendarLnbBtn _eachLnbMenu _unclickableMenu on">일정</a></li>
<li><a href="commMember.do" class="_memberLnbBtn _eachLnbMenu _unclickableMenu">멤버</a></li>
</ul> 
</div>

<h2 class="menu_title" style="position: relative; z-index: 100; margin-bottom: 16px; text-align: center;">커뮤니티</h2>

<div class="searchWrap" data-status="true">
	<form autocomplete="off" action="">
	<h2 class="gSrOnly">검색 입력 폼</h2>
	<div class="uInputSearch"> 
	<label class="gSrOnly" for="input_search">이름, 글내용, 해시태그로 검색</label> 
	<input type="text" id="input_search" placeholder="이름, 글내용, 해시태그로 검색" maxlength="200" name=""> 
	
	 <Span style=""><button type="button" class="searchbutton">검색</button></Span>
	</div>
	</form>
</div>

<div class="writeWrap" data-uiselector="postWriteRegion">
<form name="write" action="commWrite.do">
<div data-viewname="DPostWriteLayoutView" class="cPostWrite">
<h3 class="gSrOnly"></h3>
<div class="writeWrap" data-uiselector="mentionListParent"> 
<div class="mentions-input _prevent_toggle" style="overflow-y:hidden !important">
<div class="mentions" style="height: 75px;">
<div></div></div>

<textarea name="content" id="content" cols="30" rows="10" style="height: 75px; overflow: hidden;" 
class="postWrite _use_keyup_event" maxlength="10000" placeholder="멤버들에게 전할 소식을 남겨주세요." 
></textarea>
<input type="hidden" name="id" value="${sid}">

<div class="cMentionsList " style="display: none;">
<ul style="display: none;"></ul></div></div>
<div class="buttonArea">
<!-- 밑에  -->
<ul>
<li data-uiselector="attachItem"> 
<label data-icon="write-camera-on" data-uiselector="btnAttachPhoto" class="js-fileapi-wrapper">
<span class="gSrOnly">사진</span> 
<input type="file" accept="image/*" name="attachment">
</label>
</li>
<li data-uiselector="attachItem"> 
<label data-icon="movie-on2" data-uiselector="btnAttachVideo" class="js-fileapi-wrapper">
<span class="gSrOnly">동영상</span> 
<input type="file" accept="video/*" name="attachment">
</label>
</li>
<li data-uiselector="attachItem"> 
<label data-icon="file-on" data-uiselector="btnAttachFile" class="js-fileapi-wrapper">
<span class="gSrOnly">파일</span>
 <input type="file" multiple="" accept="*/*" name="attachment">
</label>
</li>
</ul>   

   <div class="buttonSubmit"> 
   <input type="reset"  value="취소">
   <input type="submit" value="게시">
   </div>

   </div> <div class="cPreview" data-uiselector="attachPreviewRegion"></div><div data-uiselector="selectStickerRegion"></div></div>
   </div></form></div>

<div data-uiselector="bandNoticeRegion"><div data-viewname="DBandBoardNoticeView" class="noticeWrap" style="display: block;">
<h2 class="tit"> 공지사항 </h2>
<ul class="notice"> 
<li data-uiselector="noticeListItem" data-icon="calendar-down">
<a href="#" data-index="0"> 공지사항 </a>
<div data-uiselector="noticeRegion1"></div></li> 
</ul>
</div>
</div>

<c:if test="${empty list}">
	<td colspan="4" align="center">
		등록된 게시글이 없습니다.
	</td>
</c:if>		
<c:forEach var="bbs" items="${list}"> 
<div data-viewname="DPostLayoutView" class="postout">
<div class="cPost " data-uiselector="postMainWrap">
<div class="postMain" data-uiselector="postRegion">

<div data-viewname="DPostItemView">

<div class="postWriter"> 
<a href="#" data-uiselector="Img">
<img class="profileImg" src="http://s.cmstatic.net/webclient/dres/20160419171121/images/template/profile_60x60.gif" alt="남구문"></a>
<div class="profileText"> <span class="textName"> <strong class="name onlyName">${bbs.id }</strong> </span>
<div class="textTime">${bbs.writedate }</div></div></div> 
<div class="postBody"> <div class="postText"> <p class="txtBody" data-uiselector="txtBody">${bbs.content }</p></div>
</div></div>

</div>

</div></div>
</c:forEach>
<hr>
footer



</body>
</html>