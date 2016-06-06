<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" type="text/css" href="CSS/comm.css">
<link rel="stylesheet" href="./bootstrap/css/font-awesome.min.css">

<!DOCTYPE ">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta charset="utf-8">
        <!-- meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0"/ -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title></title>
        <!-- Bootstrap -->
        <link href="./bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요한) -->
        <script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">	
        <link rel="stylesheet" type="text/css" href="http://s.cmstatic.net/webclient/dres/20160602183753/css/bandComponent.css?_=20160602183753">
		<link rel="stylesheet" type="text/css" href="http://s.cmstatic.net/webclient/dres/20160602183753/css/band.css?_=20160602183753">
</head>

<script type="text/javascript" src="js/httpRequest.js"></script>
<script type="text/javascript">
	var idx=null;

	function bbsDel(){
		this.idx=idx;
		var params='idx='+idx;	
		sendRequest('bbsdel.do', params, null, 'GET')
		location.reload();
	}
	
	function reDel2(){
		this.idx=idx;
		var params='idx='+idx;	
		sendRequest('reDel_ok.do', params, null, 'GET')
		location.reload();
	}
	

	
</script>
<body  style="background-color: #F6F6F6;">
	<%@include file="../header.jsp"%>



<!-- 밴드 -->
<style>
@import url('//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css');
.accordion-toggle:after {
    font-family: 'FontAwesome';
    content: "\f078";    
    float: right;
    padding-right: 28px;
}
.accordion-opened .accordion-toggle:after {    
    content: "\f077";    
}
.cComment:first-child {
    border-top: 1px solid #e5e5e5;
}
.cComment {
    position: relative;
    min-height: 67px;
    padding: 10px 15px 13px 71px;
    background: #FDFDFD;}
.cComment .writeInfo .nameWrap {
    width: 75%;
    display: block;
    font-size: 0;
    text-align: left;
    border: none;
    background: 0 0;
    word-wrap: normal;
}
.cComment .thum {
    overflow: hidden;
    position: absolute;
    left: 19px;
    top: 12px;
    width: 40px;
    height: 40px;
    border-radius: 50%;
}
a, a:focus, a:hover {
    color: #666;
    text-decoration: none;
}
.cComment .writeInfo .nameWrap .name {
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    display: inline-block;
    max-width: 40%;
    vertical-align: middle;
    color: #333;
    font-size: 13px;
    font-weight: 700;
    text-align: left;
}
.cComment .writeInfo .nameWrap .nickname {
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    display: inline-block;
    max-width: 55%;
    margin-left: 5px;
    vertical-align: middle;
    color: #aaa;
    font-size: 12px;
}
.cComment .thum img {
    width: 100%;
    border-radius: 50%;
}
.commentBody .txt {
     display: block; 
     max-height: 100%; 
     word-wrap: break-word;
     text-overflow: clip; 
   white-space: pre-wrap;
    color: #666;
    overflow: hidden;
    display: block;
    display: -webkit-box;
    max-height: 36.4px;
    font-size: 13px;
    text-overflow: ellipsis;
    line-height: 1.4;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
}
.cComment .commentBody .func {
    position: relative;
    vertical-align: top;
    font-size: 0;
}
.cComment .commentBody .func .likeCount {
    position: relative;
    margin-right: 7px;
    padding-right: 1px;
    border: 0;
    background: 0 0;
    text-align: left;
    color: #777;
    font-size: 12px;
    vertical-align: middle;
    line-height: 21px;
    height: 21px;
}
.textTime {
    color: #aaa;
    font-size: 12px;
}
.cComment .commentBody .func .likeText {
    border: 0;
    background: 0 0;
    color: #777;
    font-size: 12px;
    vertical-align: middle;
    height: 21px;
}
.cComment .feedback {
    position: absolute;
    right: 20px;
    top: 10px;
}
.cComment .feedback .time {
    font-size: 12px;
    color: #aaa;
}
.cComment .feedback .commentEdit {
    position: absolute;
    right: -10px;
    top: 3px;
    width: 20px;
    height: 20px;
    border: 0;
    text-indent: -9999px;
    background: 0 0;
    color: transparent;
    text-align: left;
}
.cComment .feedback .lyMenu {
    right: -24px;
    top: 28px;
    z-index: 200;
}
.lyMenu li a {
    display: block;
    height: 37px;
    line-height: 37px;
    font-size: 13px;
    text-align: center;
    color: #494949;
    padding: 0 15px;
    white-space: nowrap;
}
.cCommentWrite {
    position: relative;
    border-top: 1px solid #EEE;
    background: #FDFDFD;
}
.cCommentWrite .writeMain {
    position: relative;
    padding-top: 13px;
    min-height: 58px;
}
.cCommentWrite .writeBtn {
    position: absolute;
    left: 0;
    top: 0;
    width: 85px;
}
<!-- 업로드 버튼 -->
.cCommentWrite .btnUpload {
    left: 10px;
    font-size: 19px;
}
.cCommentWrite .btnUpload input {
    position: absolute;
    right: 5px;
    top: 0;
    width: 200%;
    height: 100%;
    font-size: 50px;
    cursor: pointer;
    -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=$opacity)"!important;
    filter: alpha(opacity=0)!important;
    opacity: 0!important;
}

.cCommentWrite .thum {
    left: 43px;
    overflow: hidden;
    position: absolute;
    top: 8px;
    width: 40px;
    height: 40px;
    border-radius: 50%;
    
}
.cCommentWrite .thum img {
    width: 100%;
    border-radius: 50%;
}
.cCommentWrite .writeWrap {
    padding-left: 72px;
    padding-right: 81px;
}
.cCommentWrite .mentionsWrap {
    position: relative;
    font-size: 0;
    padding-bottom: 13px;
}
.cCommentWrite .writeWrap .uInputComment {
    position: static;
    border-radius: 2px 0 0 2px;
}
.uInputComment {
    min-height: 32px;
    padding: 0;
}
.uInputComment {
    position: relative;
    display: inline-block;
    width: 100%;
    border: 1px solid;
    border-color: #ccc;
    border-radius: 2px;
    background: #fff;
}
.cCommentWrite .mentionsWrap .mentions-input {
    position: relative;
    max-height: 200px;
    overflow: hidden;
    overflow-y: auto;
    -webkit-overflow-scrolling: touch;
}
.cCommentWrite .mentionsWrap .mentions, .cCommentWrite .mentionsWrap textarea {
    overflow: hidden;
    padding: 6px 10px 0;
    border: 0;
    line-height: 1.54;
    font-size: 13px;
    vertical-align: top;
    text-align: left;
    word-wrap: break-word;
    white-space: pre-wrap;
}
.cCommentWrite .mentionsWrap .mentions-input textarea {
    position: absolute;
}
.cCommentWrite .mentionsWrap textarea {
    position: relative;
    top: 0;
    left: 0;
    width: 100%;
    margin-bottom: -1px;
    min-height: 32px;
    background: 0 0;
    resize: none;
}

.cCommentWrite .writeSubmit {
    position: absolute;
    right: 12px;
    top: 13px;
    bottom: 13px;
    height: auto;
    border-radius: 0 2px 2px 0;
    font-size: 14px;
}

.writeSubmit button{
    background: #3cd370;
}

.ubutton{
border:0px;
	    min-width: 70px;
	    font-size: 13px;
    color: #fff;
    padding-left: 10px;
    padding-right: 10px;
    vertical-align: middle;
    line-height: 29px;
    background: #3cd370;
}
<!--upload preview-->
.cCommentWrite .uploadPreview {
    z-index: 200;
    position: absolute;
    right: -5px;
    top: -176px;
    font-size: 0;
}
.cCommentWrite .uploadPreview .imgWrap {
    width: 200px;
    height: 175px;
    padding: 5px;
    text-align: center;
    background: #6e6e75;
    border-radius: 3px;
    box-shadow: 0 2px 5px rgba(0,0,0,.2);
}
.cCommentWrite .uploadPreview .imgWrap img.loading {
    margin: 66px 0 0;
}
.cCommentWrite .uploadPreview .closePreview {
    position: absolute;
    right: -8px;
    top: -6px;
    width: 24px;
    height: 24px;
    font-size: 25px;
}
[data-skin=skin5] [data-skinFactor~=tBorder], [data-skin=skin5] [data-skinFactor~=border], [data-skin=skin5] [data-skinFactor~=beforeBorder]:before, [data-skin=skin5] [data-skinFactor~=afterBorder]:after {
    border-color: #3cd370!important;
}
[data-skin=skin5] [data-skinFactor~=color], [data-skin=skin5] [data-skinFactor~=beforeColor]:before, [data-skin=skin5] [data-skinFactor~=afterColor]:after, [data-skin=skin5] [data-skinFactor~=bColor], [data-skin=skin5] [data-skinFactor~=bBeforeColor]:before, [data-skin=skin5] [data-skinFactor~=bAfterColor]:after {
    color: #3cd370!important;
}
</style>

	<div id="lnb" data-skin="skin5">
		<div data-viewname="DLnbMenuView">
			<ul class="_joinedLnb">
				<li><a href="comm.do" data-skinfactor="tBorder color"
					class="_fullArticleLnbBtn _eachLnbMenu on">전체글</a></li>
				<li><a href="gallery.do"
					data-skinfactor="tBorder color"
					class="_albumLnbBtn _eachLnbMenu _unclickableMenu">사진첩</a></li>
				<li><a href="calendar.do"
					data-skinfactor="tBorder color"
					class="_calendarLnbBtn _eachLnbMenu _unclickableMenu">일정</a></li>
				<li><a href="commMember.do"
					data-skinfactor="tBorder color"
					class="_memberLnbBtn _eachLnbMenu _unclickableMenu">멤버</a></li>
			</ul>
		</div>
	</div>
<br><br><br>
	<div style="width: 50%; margin: 0px auto; margin-top: 50px;" >
		<h2 class="menu_title"
			style="position: relative; z-index: 0; margin-bottom: 16px; text-align: center;"> </h2>

		<div class="searchWrap" style="background-color: #fff;">
			<form autocomplete="off" action="">
				<h2 class="gSrOnly">검색 입력 폼</h2>
				<div class="uInputSearch">
					<label class="gSrOnly" for="input_search">이름, 글내용, 해시태그로 검색</label>
					<input type="text" id="input_search"
						placeholder="이름, 글내용, 해시태그로 검색" maxlength="200" name="">

					<button type="button" class="searchbutton" style="right: 15px; background-color: #fff;color: #fff;">
					<i class="fa fa-search" style="color: #BDBDBD;padding-top: 0px;font-size: 22px;" aria-hidden="true"></i></button>
				</div>
			</form>
		</div>

<div class="writeWrap" style="margin-bottom: 15px;">
			<form name="write" action="commWrite.do">
				<div data-viewname="DPostWriteLayoutView" class="cPostWrite">
					<h3 class="gSrOnly">글쓰기</h3>
					<div class="writeWrap" data-uiselector="mentionListParent">
						<div class="mentions-input _prevent_toggle"
							style="overflow-y: hidden !important">
							<div class="mentions" style="height: 75px;">
								<div></div>
							</div>
							<textarea cols="30" rows="10"
								style="height: 75px; overflow: hidden;"
								class="postWrite _use_keyup_event" maxlength="10000"
								 name="content" id="content" placeholder="멤버들에게 전할 소식을 남겨주세요."
								data-mentions-input="true"></textarea>
							<div
								style="position: absolute; display: none; word-wrap: break-word; white-space: pre-wrap; border: 0px none rgb(51, 51, 51); font-weight: 400; width: 541px; font-family: Arial, 'Noto Sans KR', 맑은고딕, 'Malgun Gothic', 돋움, Dotum, 'Helvetica Neue', Helvetica, AppleSDGothicNeo, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', NotoColorEmoji, 'Segoe UI Symbol', 'Android Emoji', EmojiSymbols; line-height: 21.56px; font-size: 14px; padding: 16px 20px 0px;">&nbsp;</div>
						</div>
						<div data-uiselector="snippetRegion"></div>
						<div class="cMentionsList " style="display: none;">
							<ul style="display: none;"></ul>
						</div>
					</div>
					<div class="buttonArea">
						<ul>
							<li data-uiselector="attachItem"><label>
									<span style="padding-top: 4px"
									class="glyphicon glyphicon-picture" aria-hidden="true"> <input
										type="file" multiple="" title=" " accept="image/*"
										name="attachment"
										style='margin-left: -10px; width: 74px; height: 20px; filter: alpha(opacity = 0); opacity: 0; -moz-opacity: 0; cursor: pointer;'>
								</span> <span class="gSrOnly">사진</span>
							</label></li>
							<li data-uiselector="attachItem"><label>
									<span style="padding-top: 4px"
									class="glyphicon glyphicon-facetime-video" aria-hidden="true">
										<input type="file" multiple="" title=" " accept="*/*"
										name="attachment"
										style='margin-left: -10px; width: 74px; height: 20px; filter: alpha(opacity = 0); opacity: 0; -moz-opacity: 0; cursor: pointer;'>
								</span> <span class="gSrOnly">동영상</span>
							</label></li>
							<li data-uiselector="attachItem"><label>
									<span style="padding-top: 4px"
									class="glyphicon glyphicon-floppy-disk" aria-hidden="true">
										<input type="file" multiple="" title=" " accept="*/*"
										name="attachment"
										style='margin-left: -10px; width: 74px; height: 20px; filter: alpha(opacity = 0); opacity: 0; -moz-opacity: 0; cursor: pointer;'>
								</span> <span class="gSrOnly">파일</span>
							</label></li>
						</ul>
						<input type="hidden" name="id" value="${sid}">
						<div class="buttonSubmit">
							<button type="reset" class="uButton uButtonDefault"
								style="background: #a1a1a9; min-width: 70px; line-height: 32px; margin: 0 3px; font-size: 13px; color: #fff;">취소</button>
							<button type="submit" class="uButton uButtonPoint" 
								style="background: #3cd370; min-width: 70px; line-height: 32px; margin: 0 3px; font-size: 13px; color: #fff">게시</button>
						</div>

					</div>

				</div>
			</form>
		</div>

		<div style="width: 100%">
			<div class="noticeWrap" style="display: block;">
				<h2 class="tit">공지사항</h2>
				<ul class="notice">
					<li><a href="#" data-index="0"> 공지사항 </a>
						<div></div></li>
				</ul>
			</div>
		</div>
	
		<c:if test="${empty list}">
			<td colspan="4" align="center">등록된 게시글이 없습니다.</td>
		</c:if>

		<c:forEach var="bbs" items="${list}">
		<script>	var recount=null; </script>
			<div data-viewname="DPostLayoutView" class="postout">
				<div class="cPost " data-uiselector="postMainWrap">
					<div class="postMain" data-uiselector="postRegion">

						<a href="#" data-uiselector="Img"> <img class="profileImg"
							src="http://s.cmstatic.net/webclient/dres/20160419171121/images/template/profile_60x60.gif"
							alt="남구문"></a>
						<div class="profileText">
							<div class="textName" style="height: 45px; padding-top: 5px;"> <strong class="name onlyName">
									<br>&nbsp;&nbsp;${bbs.id }</strong>
							</div>
							<div class="textTime">&nbsp;&nbsp;${bbs.writedate }</div>
						</div>
					
						<div class="feedback"
							style="position: absolute; right: 20px; top: 10px;">
							<div class="">
								<span data-toggle="dropdown"
									style="vertical-align: bottom; padding-right: 10px;"> <i
									class="fa fa-ellipsis-v fa-2x" style="color: #bbb;"
									aria-hidden="true"></i>
								</span>
								<ul class="dropdown-menu" role="menu">
									<li><a href="#" data-uiselector="modifyButton">공지사항 등록</a></li>
									<li class="divider"></li>
									<li><a href="#" data-uiselector="modifyButton">글 수정</a></li>
									<li>
									<a onclick="javascript:idx='${bbs.idx}';" data-title="Delete" data-toggle="modal" data-target="#delete">
											글 삭제</a></li>
								</ul>
							</div>

						</div>

						<div class="postBody">
						<div class="postText">
							<p class="txtBody" data-uiselector="txtBody" style="padding-left: 80px;">${bbs.content }</p>
						</div>
					<div class="reply">
                    <!-- 댓글 시작-->
							<div class="accordion" id="accordion2">
								<div class="accordion-heading">
									<a class="accordion-toggle" data-toggle="collapse"
										href='.${bbs.idx }'> <span style="padding-left: 20px;">댓글</span><em class="count" id="re${bbs.idx}" style="color: #FF1291">0</em> </a>
								</div>
								<div class="${bbs.idx} accordion-body collapse">
			<!-- 나타나는 부분 -->
		<div class="accordion-inner">

		<!-- 밴드 -->
		
			<div class="_commentRegion">
				<div data-viewname="DPostCommentMainLayoutView">
					<div data-uiselector="commentListRegion">
					<c:forEach var="re" items="${list2}">
					<c:if test="${bbs.idx==re.bbsidx}">
					<script>
					recount=recount+1;
					document.getElementById("re${bbs.idx}").innerText=recount;
					</script>

						<div data-viewname="DCommentListCollectionView"
							class="commentList">
							<div data-viewname="DCommentLayoutView" class="cComment">
								<div class="writeInfo">
									<span class="nameWrap"><label class="name">${re.name }</label>
										</span> 
										<a href="#" class="thum" data-uiselector="authorProfile">
										<img src="http://s.cmstatic.net/webclient/dres/20160602183753/images/template/profile_60x60.gif"
										alt="남구문"></a>
								</div>
								<div class="commentBody" style="padding-top: 5px;">
									<p class="txt">${re.content }</p>
									
								</div>
								<div class="feedback"
									style="position: absolute; right: 20px; top: 10px;">
									<div class=""><span class="textTime" style="padding-right: 20px;"> ${re.writedate } </span>
										<span data-toggle="dropdown"
											style="vertical-align: bottom; padding-right: 10px;">
											<i class="fa fa-ellipsis-v fa-2x"
											style="color: #bbb;" aria-hidden="true"></i>
										</span>
										<ul class="dropdown-menu" role="menu">
											<li><a href="#" data-uiselector="modifyButton">댓글
													수정</a></li>
											<li class="divider"></li>
											<li>
											<a onclick="javascript:idx='${re.idx}';" data-title="Delete" data-toggle="modal" data-target="#delete2">
											댓글 삭제</a></li>

										</ul>
									</div>

								</div>
							</div>
						</div>
	
						</c:if>	
					</c:forEach>	
					</div>
					<div class="cCommentWrite"
						data-uiselector="commentInputRegion">
						<div data-viewname="DMessageInputLayoutView">
							<div class="writeMain _writeMain">
								
								<form id="re" action="reWrite.do" > <!-- 댓글 -->
								<div class="writeBtn">
									<label>
									<span style="padding-top: 13px;font-weight:lighter; padding-left:20px; font-size: 30px;color: #bbb;  "
									class="glyphicon glyphicon-comment" aria-hidden="true">
									 <input type="file" multiple="" title=" " accept="image/*" 	name="attachment"
										style='margin-left: -10px; width: 74px; height: 50px; filter: alpha(opacity = 0); opacity: 0; -moz-opacity: 0; cursor: pointer;'>
								</span></label>

								</div>
								<div class="writeWrap">
								
									<div class="mentionsWrap">
										<div class="uInputComment"
											data-uiselector="mentionListParent">
											<label class="gSrOnly" for="write_comment_view1659">댓글을
												남겨주세요.</label>
											<div class="mentions-input _prevent_toggle"
												style="overflow-y: hidden !important">
												<div class="mentions" style="height: 33px;">
													<div></div>
												</div>
												<textarea cols="20" rows="1"
													class="commentWrite _use_keyup_event"
													id="write_comment_view1659"
													name="content"
													placeholder="댓글을 남겨주세요."
													style="display: inline-block; overflow: hidden; height: 34px;"
													data-uiselector="messageTextArea"
													data-mentions-input="true"></textarea>
												<div
													style="position: absolute; display: none; word-wrap: break-word; white-space: pre-wrap; border: 0px none rgb(51, 51, 51); font-weight: 400; width: 383px; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', NotoColorEmoji, 'Segoe UI Symbol', 'Android Emoji', EmojiSymbols; line-height: 20.02px; font-size: 13px; padding: 6px 10px 0px;">&nbsp;</div>
											</div>
											<div class="cMentionsList " style="display: none;">
												<ul style="display: none;"></ul>
											</div>
										</div>
									</div>
								</div>
								<input type="hidden" name="bbsidx" value="${bbs.idx }">
								<button type="submit"
									class="uButton writeSubmit uButtonDefault"
								    style="border:0;background-color:#3cd370; ">보내기</button>
									</form> <!-- 댓글 폼 -->
							</div>
							<div class="uploadPreview" style="display: none;"
								data-uiselector="previewArea">
								<div class="imgWrap">
									<img src="" alt="" width="165" height="165"
										class="_prevent_context"
										data-uiselector="previewImage"><img
										class="loading"
										src="http://s.cmstatic.net/webclient/dres/20160602183753/images/common/loading4.gif"
										width="32" height="32" data-uiselector="loadingImage">
								</div>
								<button class="closePreview" type="button"
									data-icon="pc-delete"
									data-uiselector="closePreviewButton">
									<span class="gSrOnly">Close</span>
								</button>
							</div>
							<div data-uiselector="stickerSelectRegion"
								class="stickerSelectRegion" style="display: none;"></div>
						</div>
					</div>
				</div>
			</div>
<!-- 밴드 끗 -->


										</div><!--  나타나는 부분끗 -->
								</div>

							</div>
							<!-- 댓글 끗 -->
						</div>
					</div>
					      </div>              
				</div></div>
	</c:forEach>
			</div>


<!-- modal -->
	<div class="modal fade" id="delete" tabindex="-1" role="dialog"
		aria-labelledby="edit" aria-hidden="true">
		<div class="modal-dialog" style="position:absolute; width: 350px;padding-top: 150px;">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
					</button>
					<h4 class="modal-title custom_align" id="Heading">삭제</h4>
				</div>
				<div class="modal-body">

					<div class="alert alert-danger">
						<span class="glyphicon glyphicon-warning-sign"></span> ㅋㅋㅋ진짜 지울거냐	??
					</div>

				</div>
				<div class="modal-footer ">
					<button type="button" class="btn btn-success" onclick="javascript:bbsDel();" data-dismiss="modal">
						<span class="glyphicon glyphicon-ok-sign"></span> Yes
					</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">
						<span class="glyphicon glyphicon-remove"></span> No
					</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	
	
<!-- modal2 del -->
	<div class="modal fade" id="delete2" tabindex="-1" role="dialog"
		aria-labelledby="edit" aria-hidden="true">
		<div class="modal-dialog" style="position:absolute; width: 350px;padding-top: 150px;">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
					</button>
					<h4 class="modal-title custom_align" id="Heading">삭제</h4>
				</div>
				<div class="modal-body">

					<div class="alert alert-danger">
						<span class="glyphicon glyphicon-warning-sign"></span> ㅋㅋㅋ진짜 지울거냐	??
					</div>

				</div>
				<div class="modal-footer ">
					<button type="button" class="btn btn-success" onclick="javascript:reDel2();" data-dismiss="modal">
						<span class="glyphicon glyphicon-ok-sign"></span> Yes
					</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">
						<span class="glyphicon glyphicon-remove"></span> No
					</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	
		<hr>
		footer

	<!-- 댓글 js -->
	<script>
    $(document).on('show','.accordion', function (e) {
        //$('.accordion-heading i').toggleClass(' ');
        console.log(e.target);
        $(e.target).prev('.accordion-heading').addClass('accordion-opened');
   });
   
   $(document).on('hide','.accordion', function (e) {
       console.log(e.target);
       $(this).find('.accordion-heading').not($(e.target)).removeClass('accordion-opened');
       //$('.accordion-heading i').toggleClass('fa-chevron-right fa-chevron-down');
   });
	</script>


</body>
</html>