<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" type="text/css" href="CSS/comm.css">
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
</head>

<script type="text/javascript" src="js/httpRequest.js"></script>
<script type="text/javascript">
	var idx=null;
	function bbsdel(){
		var params="idx="+idx
		window.open('bbsdelgo.do?'+params,'','width=350, height=150')
	}
</script>
<style>
               
</style>
<body>
	<%@include file="../header.jsp"%>
	
	<hr>

	<div id="lnb" data-skin="skin5">
		<ul class="_joinedLnb">
			<li><span><a href="comm.do"
					class="_fullArticleLnbBtn _eachLnbMenu">전체글</a></span></li>
			<li><a href="calendar.do"
				class="_calendarLnbBtn _eachLnbMenu _unclickableMenu on">일정</a></li>
			<li><a href="commMember.do"
				class="_memberLnbBtn _eachLnbMenu _unclickableMenu">멤버</a></li>
		</ul>
	</div>


	<div style="width: 65%; margin: 0px auto;">
		<h2 class="menu_title"
			style="position: relative; z-index: 100; margin-bottom: 16px; text-align: center;">커뮤니티</h2>

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
							<li data-uiselector="attachItem"><label data-icon="file-on"
								data-uiselector="btnAttachFile" class="js-fileapi-wrapper">
									<span style="padding-top: 4px"
									class="glyphicon glyphicon-search" aria-hidden="true"> <input
										type="file" multiple="" title=" " accept="image/*"
										name="attachment"
										style='margin-left: -10px; width: 74px; height: 20px; filter: alpha(opacity = 0); opacity: 0; -moz-opacity: 0; cursor: pointer;'>
								</span> <span class="gSrOnly">사진</span>
							</label></li>
							<li data-uiselector="attachItem"><label data-icon="file-on"
								data-uiselector="btnAttachFile" class="js-fileapi-wrapper">
									<span style="padding-top: 4px"
									class="glyphicon glyphicon-facetime-video" aria-hidden="true">
										<input type="file" multiple="" title=" " accept="*/*"
										name="attachment"
										style='margin-left: -10px; width: 74px; height: 20px; filter: alpha(opacity = 0); opacity: 0; -moz-opacity: 0; cursor: pointer;'>
								</span> <span class="gSrOnly">동영상</span>
							</label></li>
							<li data-uiselector="attachItem"><label data-icon="file-on"
								data-uiselector="btnAttachFile" class="js-fileapi-wrapper">
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
			<div data-viewname="DPostLayoutView" class="postout">
				<div class="cPost " data-uiselector="postMainWrap">
					<div class="postMain" data-uiselector="postRegion">

						<a href="#" data-uiselector="Img"> <img class="profileImg"
							src="http://s.cmstatic.net/webclient/dres/20160419171121/images/template/profile_60x60.gif"
							alt="남구문"></a>
						<div class="profileText">
							<div class="textName" style="height: 45px; padding-top: 5px;"> <strong class="name onlyName">
									<br>${bbs.id }</strong>
							</div>
							<div class="textTime">${bbs.writedate }</div>
						</div>
					
					<div class="postBody">
						<div class="postText">
							<p class="txtBody" data-uiselector="txtBody" style="padding-left: 10px;">${bbs.content }</p>
						<input type="button" class="updatebutton" value="삭제" onclick="javascript:idx=${bbs.idx};bbsdel();"> 
						<input type="button" class="updatebutton" value="수정">
						<input type="button" class="updatebutton" value="댓글">

						</div>
					
                    <table class="table table-condensed">
                        <tr>
                            <td>
                                <span class="form-inline" role="form">
                                    <p>
                                        <div class="form-group">
                                            <input type="text" id="commentParentName" name="commentParentName" class="form-control col-lg-2" data-rule-required="true" placeholder="이름" maxlength="10">
                                        </div>
                                        <div class="form-group">
                                            <input type="password" id="commentParentPassword" name="commentParentPassword" class="form-control col-lg-2" data-rule-required="true" placeholder="패스워드" maxlength="10">
                                        </div>
                                        <div class="form-group">
                                            <button type="button" id="commentParentSubmit" name="commentParentSubmit" class="btn btn-default">확인</button>
                                        </div>
                                    </p>
                                        <textarea id="commentParentText" class="form-control col-lg-12" style="width:100%" rows="2"></textarea>
                                </span>
                            </td>
                        </tr>
                    </table>

					</div>
					      </div>              
				</div></div>
	</c:forEach>
			</div>

	
		<hr>
		footer
	</div>


</body>
</html>