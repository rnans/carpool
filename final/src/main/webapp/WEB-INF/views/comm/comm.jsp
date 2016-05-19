<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE ">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
<!--  -->
.searchWrap {
    position: relative;
    z-index: 100;
    margin-bottom: 16px;
}
.gSrOnly {
    overflow: hidden!important;
    position: absolute!important;
    top: 0!important;
    left: 0!important;
    width: 1px!important;
    height: 1px!important;
    font-size: 0!important;
    line-height: 0!important;
}
.uInputSearch {
    position: relative;
    display: inline-block;
    width: 100%;
    height: 36px;
    padding: 0 45px 0 15px;
    border: 1px solid #DDD;
    border-radius: 2px;
    background: #FDFDFD;
}
.uInputSearch input {
    width: 100%;
    height: 100%;
    border: 0;
    line-height: 36px;
    padding: 0;
    background: 0 0;
}

.uInputSearch button{
    width: 45px;
    height: 30px;
    text-align: center;
    color: #666;
    line-height: 30px;
    font-size: 14px;     
}
<!--  -->
.cPostWrite {
    position: relative;
    padding-bottom: 52px;
    border: 1px solid #D5D5D5;
    border-radius: 2px;
    background: #FFF;
}
.writeWrap {
    margin-bottom: 15px;  
    border-bottom: 1px solid #D5D5D5; 
}

.cPostWrite .writeWrap {
    min-height: 73px;
}

ol, ul {
    list-style: none;
}

.cPostWrite .buttonArea ul {
    float: left;
    margin: 0 0 0 9px;
}

.cPostWrite .buttonArea li {
    position: relative;
    float: left;
    font-size: 20px;
    color: #B5B5B8;
}

.cPostWrite .mentions, .cPostWrite textarea {
    overflow: hidden;
    padding: 16px 20px 0;
    border: 1px;
    line-height: 1.54;
    font-size: 14px;
    vertical-align: top;
    word-wrap: break-word;
    white-space: pre-wrap;       
}

div {
    display: block;
}
.cPostWrite .buttonArea .buttonSubmit {
    float: right;
    margin: 10px 7px 0 0;
    text-align: right;
    font-size: 0;
}

.cPostWrite .mentions-input textarea {
    position: absolute;
}

.cPostWrite textarea {
    position: relative;
    top: 0;
    left: 0;
    width: 100%;
    margin-bottom: -1px;
    min-height: 75px;
    background: 0 0;
    resize: none;
}

input, textarea {
    color: #333;
    border-radius: 0;
    outline: 0;
}

<!---->

.noticeWrap {
    margin-bottom: 15px;
    border: 1px solid #D5D5D5;
    border-radius: 2px;
    background: #FFF;
}
.noticeWrap .tit {
    position: relative;
    height: 43px;
    padding: 0 0 0 20px;
    line-height: 43px;
    background: #FDFDFD;
    border-bottom: 1px solid #E5E5E5;
    border-radius: 4px 4px 0 0;
    font-size: 14px;
    font-weight: 700;
    color: #333;
    text-decoration: none!important;
}
.noticeWrap .notice>li {
    position: relative;
    font-size: 14px;
}
.noticeWrap .notice>li>a {
    display: block;
    overflow: hidden;
    max-width: 100%;
    white-space: nowrap;
    word-break: normal;
    word-wrap: normal;
    text-overflow: ellipsis;
    position: relative;
    height: 52px;
    padding: 0 43px 0 20px;
    border-bottom: 1px solid #eee;
    line-height: 50px;
    color: #333;
}

<!---->
.postWrap .cPost {
    margin-bottom: 15px;
}
.cPost {
    position: relative;
    background: #fff;
    border: 1px solid #D5D5D5;
    border-radius: 2px;
}
.cPost .postFunction .postSet {
    overflow: hidden;
    position: relative;
    text-indent: -400px;
    border: 0;
    width: 20px;
    height: 20px;
    background: 0 0;
}

</style>
</head>
<body>

헤더
<hr>
<a href="comm.do">comm</a>
<a href="sche.do">일정</a>
<a href="commAd.do">관리</a>

<h2 class="menu_title">커뮤니티</h2>

<div class="searchWrap" data-uiselector="postSearchWrap" data-status="true">
	<form data-uiselector="searchForm" autocomplete="off">
	<h2 class="gSrOnly">검색 입력 폼</h2>
	<div class="uInputSearch" data-uiselector="inputSearchWrap"> 
	<label class="gSrOnly" for="input_search">이름, 글내용, 해시태그로 검색</label> 
	<input type="text" id="input_search" placeholder="이름, 글내용, 해시태그로 검색" maxlength="200" autocomplete="off" data-uiselector="searchTxt"> 
	
	 <button type="button">검색</button>
	</div>
	</form>
</div>

<div class="writeWrap" data-uiselector="postWriteRegion">
<div data-viewname="DPostWriteLayoutView" class="cPostWrite">
<h3 class="gSrOnly"></h3>
<div class="writeWrap" data-uiselector="mentionListParent"> 
<div class="mentions-input _prevent_toggle" style="overflow-y:hidden !important">
<div class="mentions" style="height: 75px;">
<div></div></div>
<textarea cols="30" rows="10" style="height: 75px; overflow: hidden;" 
class="postWrite _use_keyup_event" maxlength="10000" 
data-uiselector="postTextArea" placeholder="멤버들에게 전할 소식을 남겨주세요." 
data-mentions-input="true"></textarea>
<div style="position: absolute; display: none; word-wrap: break-word; 
white-space: pre-wrap; border: 0px none rgb(51, 51, 51); font-weight: 400; 
width: 518px; font-family: Arial, 'Noto Sans KR', 맑은고딕, 'Malgun Gothic', 돋움, Dotum, 'Helvetica Neue', Helvetica, 
AppleSDGothicNeo, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', NotoColorEmoji, 'Segoe UI Symbol', 'Android Emoji', EmojiSymbols; 
line-height: 21.56px; font-size: 14px; padding: 16px 20px 0px;">&nbsp;</div></div>
<div data-uiselector="snippetRegion"></div>
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
   <button type="button" data-uiselector="btnCancelPost" class="uButton uButtonDefault" data-width="xxSmall" 
   data-height="middleSmall" style="display: inline-block;">취소</button> 
   <button type="button" data-uiselector="btnSubmitPost" class="uButton uButtonPoint" data-width="xxSmall" 
   data-height="middleSmall" style="display: inline-block;">게시</button>
   </div>

   </div> <div class="cPreview" data-uiselector="attachPreviewRegion"></div><div data-uiselector="selectStickerRegion"></div></div></div>

<div data-uiselector="bandNoticeRegion"><div data-viewname="DBandBoardNoticeView" class="noticeWrap" style="display: block;">
<h2 class="tit"> 공지사항 </h2>
<ul class="notice"> 
<li data-uiselector="noticeListItem" data-icon="calendar-down">
 <a href="#" data-index="0">공지사항1</a>
 <div data-uiselector="noticeRegion1"></div></li> 
</ul>
 </div>
 </div>

<div data-viewname="DPostLayoutView"><div class="cPost " data-uiselector="postMainWrap"><div data-uiselector="lyShare" class="lyMenu" style="width:220px;display:none;"><ul class="shareMenu"><li class="band" data-uiselector="btnShareBand"><a data-uiselector="btnShareBand" href="#">다른 밴드로 공유</a></li><li class="band" data-uiselector="btnShareBandOriginPost"><a data-uiselector="btnShareBandOriginPost" href="#">다른 밴드로 공유</a></li><li class="facebook"><a data-uiselector="btnShareFacebook" href="#">Facebook</a></li><li class="twitter"><a data-uiselector="btnShareTwitter" href="#">Twitter</a></li><li class="googlePlus"><a data-uiselector="btnShareGoogle" href="#">Google+</a></li> <li class="naverCafe"><a data-uiselector="btnShareCafe" href="#">네이버 카페</a></li> <li class="urlCopy"><a data-uiselector="btnDetailUrl" href="#">URL복사</a></li></ul></div><div class="postMain" data-uiselector="postRegion"><div data-viewname="DPostItemView"><div class="postWriter"> <a href="#" data-uiselector="authorImg"><img class="profileImg" src="http://s.cmstatic.net/webclient/dres/20160419171121/images/template/profile_60x60.gif" alt="남구문"></a><div class="profileText"> <span class="textName"> <strong class="name onlyName">남구문</strong> </span><div class="textTime"> 5월 11일</div></div></div> <div class="postBody"><div class="postText">  <p class="txtBody" data-uiselector="txtBody">213</p>    </div>       </div></div></div> <div class="postFunction _openPostDetail" data-uiselector="postFunctionWrap">  <button type="button" class="postToggle" data-icon="dselect-up" data-uiselector="postDetailClose" style="display:none;">내용 접기</button>  <button type="button" class="postSet" data-icon="more" data-uiselector="btnPostMore">글 옵션</button><div class="lyMenu" style="min-width:145px;display:none;" data-uiselector="postMoreMenu"><ul> <li><a href="#" data-uiselector="btnModifyPost">글 수정</a></li>  <li> <a href="#" data-uiselector="btnUnsetNotice">공지에서 내리기</a> <a href="#" data-uiselector="btnSetNotice" style="display:none;">공지로 등록</a></li>  <li><a href="#" data-uiselector="btnCopyPost">다른 밴드에 올리기</a></li>   <li><a href="#" data-uiselector="btnDeletePost">글 삭제</a></li> <li><a href="#" data-uiselector="btnDetailUrl">게시글 URL 보기</a></li></ul></div></div> <div class="postCount"> <button type="button" class="faceComment" data-uiselector="btnToggleEmotionComment"> <span class="face">표정<span class="count" data-skinfactor="color" data-uiselector="emotionCountSpan">0</span></span> <span class="comment">댓글<span class="count" data-skinfactor="color" data-uiselector="commentCountSpan">1</span></span> <span class="commentToggle" data-icon="dselect-down" data-uiselector="btnToggleEmotionCommentIcon">댓글접기/펼치기</span></button> </div><div class="postAdded"> <a href="#" class="addStatus" data-icon="like-off" data-uiselector="btnToggleEmotion">표정짓기</a> <a href="#" class="addStatus" data-icon="comment-off" data-uiselector="btnOpenCommentAndFocusInput">댓글쓰기</a><div class="emoticonFace" data-uiselector="selectEmotionLayer" style="display:none;"><div class="emoticonWrap" data-uiselector="emotionWrap"> <button type="button" data-emotionindex="1" data-uiselector="btnEmotion"><span class="uIconlike">좋아요</span></button> <button type="button" data-emotionindex="2" data-uiselector="btnEmotion"><span class="uIconsmile">웃겨요</span></button> <button type="button" data-emotionindex="3" data-uiselector="btnEmotion"><span class="uIconbest">최고예요</span></button> <button type="button" data-emotionindex="4" data-uiselector="btnEmotion"><span class="uIconenvious">부러워요</span></button> <button type="button" data-emotionindex="5" data-uiselector="btnEmotion"><span class="uIconsurprise">놀랐어요</span></button> <button type="button" data-emotionindex="6" data-uiselector="btnEmotion"><span class="uIconsad">슬퍼요</span></button></div></div> <div data-uiselector="emotionRegion" style="display: none;"></div></div><div data-uiselector="commentRegion"><div data-viewname="DPostCommentMainLayoutView"><div data-uiselector="commentListRegion"><div data-viewname="DCommentListCollectionView" class="commentList"></div></div><div class="" data-uiselector="commentInputRegion"></div></div></div></div></div>

<hr>
footer



</body>
</html>