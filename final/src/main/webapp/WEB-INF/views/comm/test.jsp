<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="CSS/comm.css">
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta charset="utf-8">
        <!-- meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0"/ -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title></title>
        <!-- Bootstrap -->
        <link href="./bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
         <link href="./bootstrap/js/bootstrap.js" rel="stylesheet" type="text/css"/>
         
        
        <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요한) -->
        <script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
		
</head>
<body>
<body style="" data-viewtype="">
 <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
	<div data-uiselector="bodyRegion" class="bodyRegion">
		<div data-viewname="DWebMainLayoutView" id="wrap">
			<header id="header" data-skinfactor="beforeBg" data-skin="skin5">
				<div class="goOutIE">
					<div class="goodByeIE">
						<p>
							<a
								href="http://windows.microsoft.com/ko-kr/internet-explorer/download-ie"
								target="_blank">인터넷 익스플로러 9 이하 버전을 사용하고 계십니다. 보다 원활한 환경에서
								밴드를 사용하시려면 브라우저를 업그레이드하세요. 상반기 이후에는 하위버전 지원이 종료될 예정입니다.</a>
						</p>
					</div>
				</div>
				<div class="inner">
					<h1>
						<a href="/#!/home" data-icon="band-logo">BAND</a>
					</h1>
					<ul class="widget">
						<li class="newPost"><button id="btnShowNews" type="button"
								data-icon="push-on" data-uiselector="btnShowNews">
								<span class="gSrOnly">새소식</span>
								<mark data-uiselector="newsCount" style="display: none;"></mark>
							</button>
							<article class="cRecentList news" data-uiselector="newsRegion"
								style="display: none;"></article></li>
						<li class="newChat"><button id="btnShowChannels"
								type="button" data-icon="chat-on"
								data-uiselector="btnShowChannels">
								<span class="gSrOnly">채팅</span>
								<mark data-uiselector="unreadChatCount" style="display: none;"></mark>
							</button>
							<article class="cRecentList chat" data-uiselector="chatRegion"
								style="display: none;"></article></li>
						<li class="setting"><a href="/#!/setting/profile"><img
								src="http://s.cmstatic.net/webclient/dres/20160524170024/images/template/profile_60x60.gif"
								width="36" height="36" alt="" data-uiselector="globalFaceImage">
								<span class="gSrOnly">내 프로필</span></a></li>
						<li class="logout"><button data-uiselector="btnLogout"
								type="button">로그아웃</button></li>
					</ul>
				</div>
			</header>
			<div id="container" data-uiselector="containerRegion">
				<div data-viewname="DBandLayoutView">
					<div id="lnb" data-skin="skin5">
						<div data-viewname="DLnbMenuView">
							<ul class="_joinedLnb">
								<li><a href="/#!/band/61355066"
									data-skinfactor="tBorder color"
									class="_fullArticleLnbBtn _eachLnbMenu on">전체글</a></li>
								<li><a href="/#!/band/61355066/album"
									data-skinfactor="tBorder color"
									class="_albumLnbBtn _eachLnbMenu _unclickableMenu">사진첩</a></li>
								<li><a href="/#!/band/61355066/calendar"
									data-skinfactor="tBorder color"
									class="_calendarLnbBtn _eachLnbMenu _unclickableMenu">일정</a></li>
								<li><a href="/#!/band/61355066/member"
									data-skinfactor="tBorder color"
									class="_memberLnbBtn _eachLnbMenu _unclickableMenu">멤버</a></li>
							</ul>
						</div>
					</div>
					<aside id="info" data-uiselector="leftSection" data-skin="skin5">
						<div data-uiselector="bandCoverRegion">
							<div data-viewname="DBandCoverItemView">
								<div class="uCover aside" data-type="type2">
									<div class="bandUri">
										<div class="cover" data-skinfactor="beforeBg">
											<a href="/#!/band/61355066"><img class="coverImg"
												src="http://coresos.phinf.naver.net/a/2gegeb_c/18aUd015f6anox25rtzm_5ksoqj.jpg?type=cover_a264"
												alt=""></a>
										</div>
										<div class="bandName">
											<div class="bandWrap">
												<p class="uriText">
													<a href="/#!/band/61355066">123</a>
												</p>
												<p class="desc" data-uiselector="bandDescription"
													style="word-wrap: break-word;">
													<a href="#" class="more _seeMoreDescBtn"
														style="display: none;">&nbsp;더보기</a>
												</p>
												<p class="member -type2">
													멤버 2 <a href="/#!/band/61355066/invite" data-icon="invite"
														data-skinfactor="color">초대</a>
												</p>
											</div>
										</div>
									</div>
								</div>
								<div class="set">
									<a href="/#!/band/61355066/bandSetting" class="config"
										data-icon="setting02" data-uiselector="anchorTag">설정</a>
								</div>
							</div>
						</div>
						<div data-uiselector="summaryRegion">
							<div data-viewname="DBandSummaryItemView">
								<div data-uiselector="bandChannelsRegion" class="widget">
									<div data-viewname="DBandChattingChannelListView">
										<div class="tit noArrow">
											<h2>채팅</h2>
											<button data-uiselector="btnNewChatChannel" type="button"
												class="uButton newChat">새 채팅</button>
										</div>
										<div class="scrollWrap">
											<div class="nano maxHeight heightAuto has-scrollbar"
												style="height: 59px;">
												<div class="nano-content" tabindex="0"
													style="margin-right: -17px;">
													<ul data-uiselector="bandChattingChannelList" class="chat"
														style="display: table;">
														<li data-viewname="DBandChattingChannelItemView"
															class="chat"><a href="#"><span> <img
																	src="http://coresos.phinf.naver.net/a/2gegeb_c/18aUd015f6anox25rtzm_5ksoqj.jpg?type=s150_low"
																	width="38" height="38" data-skinfactor="border">
															</span> <span><strong title="123">123</strong> <span></span></span></a></li>
													</ul>
												</div>
												<div class="nano-pane" style="display: none;">
													<div class="nano-slider"
														style="height: 20px; transform: translate(0px, 0px);"></div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</aside>
					<main id="content" data-uiselector="contentRegion"
						data-skin="skin5">
					<section data-viewname="DBandBoardLayoutView" class="boardList">
						<div class="searchWrap" data-uiselector="postSearchWrap">
							<form data-uiselector="searchForm" autocomplete="off">
								<h2 class="gSrOnly">검색 입력 폼</h2>
								<div class="uInputSearch" data-uiselector="inputSearchWrap">
									<label class="gSrOnly" for="input_search">이름, 글내용,
										해시태그로 검색</label> <input type="text" id="input_search"
										placeholder="이름, 글내용, 해시태그로 검색" maxlength="200"
										autocomplete="off" data-uiselector="searchTxt">
									<a href="">
										 <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
										 
									</a>
								</div>
								<div class="searchHint" data-uiselector="searchHint">
									<h3 class="gSrOnly">검색 옵션 및 힌트</h3>
									<p class="old _focusableItem">
										<a href="#" data-icon="right" data-uiselector="searchOldPosts">예전글
											보기</a>
									</p>
								</div>
							</form>
						</div>
						<div class="writeWrap" data-uiselector="postWriteRegion">
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
											data-uiselector="postTextArea"
											placeholder="멤버들에게 전할 소식을 남겨주세요." data-mentions-input="true"></textarea>
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
										<li data-uiselector="attachItem">
											<button type="button" data-icon="sticker-on"
												data-uiselector="btnAttachSticker">
												<span class="gSrOnly">스티커</span>
											</button>
										</li>
										<li data-uiselector="attachItem"><label
											data-icon="write-camera-on" data-uiselector="btnAttachPhoto"
											class="js-fileapi-wrapper"><span class="gSrOnly">사진</span>
												<input type="file" multiple="" title=" " accept="image/*"
												name="attachment"></label></li>
										<li data-uiselector="attachItem"><label
											data-icon="movie-on2" data-uiselector="btnAttachVideo"
											class="js-fileapi-wrapper"><span class="gSrOnly">동영상</span>
												<input type="file" title=" " accept="video/*"
												name="attachment"></label></li>
										
												
											
									</ul>
									<div class="buttonSubmit">
										<button type="button" data-uiselector="btnCancelPost"
											class="uButton uButtonDefault" data-width="xxSmall"
											data-height="middleSmall" style="display: none;">취소</button>
										<button type="button" data-uiselector="btnSubmitPost"
											class="uButton uButtonPoint" data-width="xxSmall"
											data-height="middleSmall" style="display: none;">게시</button>
									</div>
								</div>
								<div class="cPreview" data-uiselector="attachPreviewRegion"></div>
								<div data-uiselector="selectStickerRegion"></div>
							</div>
						</div>
						<div data-uiselector="bandNoticeRegion">
							<div data-viewname="DBandBoardNoticeView" class="noticeWrap"
								style="display: block;">
								<h2 class="tit">공지사항</h2>
								<ul class="notice">
									<li data-uiselector="noticeListItem" data-icon="calendar-down">
										<a href="#" data-index="0">213</a>
									<div data-uiselector="noticeRegion1"></div>
									</li>
								</ul>
							</div>
						</div>
						<div class="postWrap" data-uiselector="postListRegion">
							<div data-viewname="DPostListView">
								<div data-viewname="DPostLayoutView">
									<div class="cPost " data-uiselector="postMainWrap">
										<div data-uiselector="lyShare" class="lyMenu"
											style="width: 220px; display: none;">
											<ul class="shareMenu">
												<li class="band" data-uiselector="btnShareBand"><a
													data-uiselector="btnShareBand" href="#">다른 밴드로 공유</a></li>
												<li class="band" data-uiselector="btnShareBandOriginPost"><a
													data-uiselector="btnShareBandOriginPost" href="#">다른
														밴드로 공유</a></li>
												<li class="facebook"><a
													data-uiselector="btnShareFacebook" href="#">Facebook</a></li>
												<li class="twitter"><a
													data-uiselector="btnShareTwitter" href="#">Twitter</a></li>
												<li class="googlePlus"><a
													data-uiselector="btnShareGoogle" href="#">Google+</a></li>
												<li class="naverCafe"><a data-uiselector="btnShareCafe"
													href="#">네이버 카페</a></li>
												<li class="urlCopy"><a data-uiselector="btnDetailUrl"
													href="#">URL복사</a></li>
											</ul>
										</div>
										<div class="postMain" data-uiselector="postRegion">
											<div data-viewname="DPostItemView">
												<div class="postWriter">
													<a href="#" data-uiselector="authorImg"><img
														class="profileImg"
														src="http://s.cmstatic.net/webclient/dres/20160524170024/images/template/profile_60x60.gif"
														alt="김수민"></a>
													<div class="profileText">
														<span class="textName"> <strong
															class="name onlyName">김수민</strong>
														</span>
														<div class="textTime">5월 25일</div>
													</div>
												</div>
												<div class="postBody">
													<div class="postText">
														<p class="txtBody" data-uiselector="txtBody">남구문님의 초대로
															김수민님이 가입했습니다.</p>
														<img src="http://s.cmstatic.net/band/sticker/266/PC/16"
															alt="sticker" class="sticker _prevent_context">
													</div>
												</div>
											</div>
										</div>
										<div class="postFunction _openPostDetail"
											data-uiselector="postFunctionWrap">
											<button type="button" class="postToggle"
												data-icon="dselect-up" data-uiselector="postDetailClose"
												style="display: none;">내용 접기</button>
											<button type="button" class="postSet" data-icon="more"
												data-uiselector="btnPostMore">글 옵션</button>
											<div class="lyMenu" style="min-width: 145px; display: none;"
												data-uiselector="postMoreMenu">
												<ul>
													<li><a href="#" data-uiselector="btnUnsetNotice"
														style="display: none;">공지에서 내리기</a> <a href="#"
														data-uiselector="btnSetNotice">공지로 등록</a></li>
													<li><a href="#" data-uiselector="btnCopyPost">다른
															밴드에 올리기</a></li>
													<li><a href="#" data-uiselector="btnReportPost">신고하기</a></li>
													<li><a href="#" data-uiselector="btnDeletePost">글
															삭제</a></li>
													<li><a href="#" data-uiselector="btnDetailUrl">게시글
															URL 보기</a></li>
												</ul>
											</div>
										</div>
										<div class="postCount">
											<button type="button" class="faceComment"
												data-uiselector="btnToggleEmotionComment">
												<span class="face">표정<span class="count"
													data-skinfactor="color" data-uiselector="emotionCountSpan">0</span></span>
												<span class="comment">댓글<span class="count"
													data-skinfactor="color" data-uiselector="commentCountSpan">1</span></span>
												<span class="commentToggle" data-icon="dselect-down"
													data-uiselector="btnToggleEmotionCommentIcon">댓글접기/펼치기</span>
											</button>
										</div>
										<div class="postAdded">
											<a href="#" class="addStatus" data-icon="like-off"
												data-uiselector="btnToggleEmotion">표정짓기</a> <a href="#"
												class="addStatus" data-icon="comment-off"
												data-uiselector="btnOpenCommentAndFocusInput">댓글쓰기</a>
											<div class="emoticonFace"
												data-uiselector="selectEmotionLayer" style="display: none;">
												<div class="emoticonWrap" data-uiselector="emotionWrap">
													<button type="button" data-emotionindex="1"
														data-uiselector="btnEmotion">
														<span class="uIconlike">좋아요</span>
													</button>
													<button type="button" data-emotionindex="2"
														data-uiselector="btnEmotion">
														<span class="uIconsmile">웃겨요</span>
													</button>
													<button type="button" data-emotionindex="3"
														data-uiselector="btnEmotion">
														<span class="uIconbest">최고예요</span>
													</button>
													<button type="button" data-emotionindex="4"
														data-uiselector="btnEmotion">
														<span class="uIconenvious">부러워요</span>
													</button>
													<button type="button" data-emotionindex="5"
														data-uiselector="btnEmotion">
														<span class="uIconsurprise">놀랐어요</span>
													</button>
													<button type="button" data-emotionindex="6"
														data-uiselector="btnEmotion">
														<span class="uIconsad">슬퍼요</span>
													</button>
												</div>
											</div>
											<div data-uiselector="emotionRegion" style="display: none;"></div>
										</div>
										<div data-uiselector="commentRegion">
											<div data-viewname="DPostCommentMainLayoutView">
												<div data-uiselector="commentListRegion">
													<div data-viewname="DCommentListCollectionView"
														class="commentList">
														<div data-viewname="DCommentLayoutView" class="cComment">
															<div class="writeInfo">
																<span class="nameWrap"><button type="button"
																		data-uiselector="authorNameButton" class="name">남구문</button>
																	<p class="nickname "></p></span> <a href="#" class="thum"
																	data-uiselector="authorProfile"><img
																	src="http://s.cmstatic.net/webclient/dres/20160524170024/images/template/profile_60x60.gif"
																	alt="남구문"></a>
															</div>
															<div class="commentBody">
																<p class="txt">123</p>
																<div data-uiselector="audioRegion"></div>
															</div>
															<div class="feedback">
																<span class="time">5월 26일 오후 5:24</span>
															</div>
														</div>
													</div>
												</div>
												<div class="" data-uiselector="commentInputRegion"></div>
											</div>
										</div>
									</div>
								</div>
								<div data-viewname="DPostLayoutView">
									<div class="cPost " data-uiselector="postMainWrap">
										<div data-uiselector="lyShare" class="lyMenu"
											style="width: 220px; display: none;">
											<ul class="shareMenu">
												<li class="band" data-uiselector="btnShareBand"><a
													data-uiselector="btnShareBand" href="#">다른 밴드로 공유</a></li>
												<li class="band" data-uiselector="btnShareBandOriginPost"><a
													data-uiselector="btnShareBandOriginPost" href="#">다른
														밴드로 공유</a></li>
												<li class="facebook"><a
													data-uiselector="btnShareFacebook" href="#">Facebook</a></li>
												<li class="twitter"><a
													data-uiselector="btnShareTwitter" href="#">Twitter</a></li>
												<li class="googlePlus"><a
													data-uiselector="btnShareGoogle" href="#">Google+</a></li>
												<li class="naverCafe"><a data-uiselector="btnShareCafe"
													href="#">네이버 카페</a></li>
												<li class="urlCopy"><a data-uiselector="btnDetailUrl"
													href="#">URL복사</a></li>
											</ul>
										</div>
										<div class="postMain" data-uiselector="postRegion">
											<div data-viewname="DPostItemView">
												<div class="postWriter">
													<a href="#" data-uiselector="authorImg"><img
														class="profileImg"
														src="http://s.cmstatic.net/webclient/dres/20160524170024/images/template/profile_60x60.gif"
														alt="남구문"></a>
													<div class="profileText">
														<span class="textName"> <strong
															class="name onlyName">남구문</strong>
														</span>
														<div class="textTime">5월 23일</div>
													</div>
												</div>
												<div class="postBody">
													<div class="postText">
														<p class="txtBody" data-uiselector="txtBody">[123] 일정을
															만들었습니다.</p>
													</div>
													<div class="postAdd">
														<div class="addItem" data-skinfactor="beforeBg"
															data-icon="calendar" data-uiselector="attachSchedule">
															<div class="addItemInner" data-uiselector="itemSchedule">
																<p class="addStatus">
																	<span class="status" data-skinfactor="color">일정</span>2016.
																	05. 19. (목) 오후 12:00
																</p>
																<p class="addTitle">123</p>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="postFunction _openPostDetail"
											data-uiselector="postFunctionWrap">
											<button type="button" class="postToggle"
												data-icon="dselect-up" data-uiselector="postDetailClose"
												style="display: none;">내용 접기</button>
											<button type="button" class="postSet" data-icon="more"
												data-uiselector="btnPostMore">글 옵션</button>
											<div class="lyMenu" style="min-width: 145px; display: none;"
												data-uiselector="postMoreMenu">
												<ul>
													<li><a href="#" data-uiselector="btnModifyPost">글
															수정</a></li>
													<li><a href="#" data-uiselector="btnUnsetNotice"
														style="display: none;">공지에서 내리기</a> <a href="#"
														data-uiselector="btnSetNotice">공지로 등록</a></li>
													<li><a href="#" data-uiselector="btnCopyPost">다른
															밴드에 올리기</a></li>
													<li><a href="#" data-uiselector="btnDeletePost">글
															삭제</a></li>
													<li><a href="#" data-uiselector="btnDetailUrl">게시글
															URL 보기</a></li>
												</ul>
											</div>
										</div>
										<div class="postCount">
											<button type="button" class="faceComment"
												data-uiselector="btnToggleEmotionComment">
												<span class="face">표정<span class="count"
													data-skinfactor="color" data-uiselector="emotionCountSpan">0</span></span>
												<span class="comment">댓글<span class="count"
													data-skinfactor="color" data-uiselector="commentCountSpan">0</span></span>
												<span class="commentToggle" data-icon="dselect-down"
													data-uiselector="btnToggleEmotionCommentIcon">댓글접기/펼치기</span>
											</button>
										</div>
										<div class="postAdded">
											<a href="#" class="addStatus" data-icon="like-off"
												data-uiselector="btnToggleEmotion">표정짓기</a> <a href="#"
												class="addStatus" data-icon="comment-off"
												data-uiselector="btnOpenCommentAndFocusInput">댓글쓰기</a>
											<div class="emoticonFace"
												data-uiselector="selectEmotionLayer" style="display: none;">
												<div class="emoticonWrap" data-uiselector="emotionWrap">
													<button type="button" data-emotionindex="1"
														data-uiselector="btnEmotion">
														<span class="uIconlike">좋아요</span>
													</button>
													<button type="button" data-emotionindex="2"
														data-uiselector="btnEmotion">
														<span class="uIconsmile">웃겨요</span>
													</button>
													<button type="button" data-emotionindex="3"
														data-uiselector="btnEmotion">
														<span class="uIconbest">최고예요</span>
													</button>
													<button type="button" data-emotionindex="4"
														data-uiselector="btnEmotion">
														<span class="uIconenvious">부러워요</span>
													</button>
													<button type="button" data-emotionindex="5"
														data-uiselector="btnEmotion">
														<span class="uIconsurprise">놀랐어요</span>
													</button>
													<button type="button" data-emotionindex="6"
														data-uiselector="btnEmotion">
														<span class="uIconsad">슬퍼요</span>
													</button>
												</div>
											</div>
											<div data-uiselector="emotionRegion" style="display: none;"></div>
										</div>
										<div data-uiselector="commentRegion">
											<div data-viewname="DPostCommentMainLayoutView">
												<div data-uiselector="commentListRegion">
													<div data-viewname="DCommentListCollectionView"
														class="commentList"></div>
												</div>
												<div class="" data-uiselector="commentInputRegion"></div>
											</div>
										</div>
									</div>
								</div>
								<div data-viewname="DPostLayoutView">
									<div class="cPost " data-uiselector="postMainWrap">
										<div data-uiselector="lyShare" class="lyMenu"
											style="width: 220px; display: none;">
											<ul class="shareMenu">
												<li class="band" data-uiselector="btnShareBand"><a
													data-uiselector="btnShareBand" href="#">다른 밴드로 공유</a></li>
												<li class="band" data-uiselector="btnShareBandOriginPost"><a
													data-uiselector="btnShareBandOriginPost" href="#">다른
														밴드로 공유</a></li>
												<li class="facebook"><a
													data-uiselector="btnShareFacebook" href="#">Facebook</a></li>
												<li class="twitter"><a
													data-uiselector="btnShareTwitter" href="#">Twitter</a></li>
												<li class="googlePlus"><a
													data-uiselector="btnShareGoogle" href="#">Google+</a></li>
												<li class="naverCafe"><a data-uiselector="btnShareCafe"
													href="#">네이버 카페</a></li>
												<li class="urlCopy"><a data-uiselector="btnDetailUrl"
													href="#">URL복사</a></li>
											</ul>
										</div>
										<div class="postMain" data-uiselector="postRegion">
											<div data-viewname="DPostItemView">
												<div class="postWriter">
													<a href="#" data-uiselector="authorImg"><img
														class="profileImg"
														src="http://s.cmstatic.net/webclient/dres/20160524170024/images/template/profile_60x60.gif"
														alt="남구문"></a>
													<div class="profileText">
														<span class="textName"> <strong
															class="name onlyName">남구문</strong>
														</span>
														<div class="textTime">5월 18일</div>
													</div>
												</div>
												<div class="postBody">
													<div class="postText">
														<p class="txtBody" data-uiselector="txtBody">ㅁㅋㅋ</p>
													</div>
												</div>
											</div>
										</div>
										<div class="postFunction _openPostDetail"
											data-uiselector="postFunctionWrap">
											<button type="button" class="postToggle"
												data-icon="dselect-up" data-uiselector="postDetailClose"
												style="display: none;">내용 접기</button>
											<button type="button" class="postSet" data-icon="more"
												data-uiselector="btnPostMore">글 옵션</button>
											<div class="lyMenu" style="min-width: 145px; display: none;"
												data-uiselector="postMoreMenu">
												<ul>
													<li><a href="#" data-uiselector="btnModifyPost">글
															수정</a></li>
													<li><a href="#" data-uiselector="btnUnsetNotice"
														style="display: none;">공지에서 내리기</a> <a href="#"
														data-uiselector="btnSetNotice">공지로 등록</a></li>
													<li><a href="#" data-uiselector="btnCopyPost">다른
															밴드에 올리기</a></li>
													<li><a href="#" data-uiselector="btnDeletePost">글
															삭제</a></li>
													<li><a href="#" data-uiselector="btnDetailUrl">게시글
															URL 보기</a></li>
												</ul>
											</div>
										</div>
										<div class="postCount">
											<button type="button" class="faceComment"
												data-uiselector="btnToggleEmotionComment">
												<span class="face">표정<span class="count"
													data-skinfactor="color" data-uiselector="emotionCountSpan">0</span></span>
												<span class="comment">댓글<span class="count"
													data-skinfactor="color" data-uiselector="commentCountSpan">0</span></span>
												<span class="commentToggle" data-icon="dselect-down"
													data-uiselector="btnToggleEmotionCommentIcon">댓글접기/펼치기</span>
											</button>
										</div>
										<div class="postAdded">
											<a href="#" class="addStatus" data-icon="like-off"
												data-uiselector="btnToggleEmotion">표정짓기</a> <a href="#"
												class="addStatus" data-icon="comment-off"
												data-uiselector="btnOpenCommentAndFocusInput">댓글쓰기</a>
											<div class="emoticonFace"
												data-uiselector="selectEmotionLayer" style="display: none;">
												<div class="emoticonWrap" data-uiselector="emotionWrap">
													<button type="button" data-emotionindex="1"
														data-uiselector="btnEmotion">
														<span class="uIconlike">좋아요</span>
													</button>
													<button type="button" data-emotionindex="2"
														data-uiselector="btnEmotion">
														<span class="uIconsmile">웃겨요</span>
													</button>
													<button type="button" data-emotionindex="3"
														data-uiselector="btnEmotion">
														<span class="uIconbest">최고예요</span>
													</button>
													<button type="button" data-emotionindex="4"
														data-uiselector="btnEmotion">
														<span class="uIconenvious">부러워요</span>
													</button>
													<button type="button" data-emotionindex="5"
														data-uiselector="btnEmotion">
														<span class="uIconsurprise">놀랐어요</span>
													</button>
													<button type="button" data-emotionindex="6"
														data-uiselector="btnEmotion">
														<span class="uIconsad">슬퍼요</span>
													</button>
												</div>
											</div>
											<div data-uiselector="emotionRegion" style="display: none;"></div>
										</div>
										<div data-uiselector="commentRegion">
											<div data-viewname="DPostCommentMainLayoutView">
												<div data-uiselector="commentListRegion">
													<div data-viewname="DCommentListCollectionView"
														class="commentList"></div>
												</div>
												<div class="" data-uiselector="commentInputRegion"></div>
											</div>
										</div>
									</div>
								</div>
								<div data-viewname="DPostLayoutView">
									<div class="cPost " data-uiselector="postMainWrap">
										<div data-uiselector="lyShare" class="lyMenu"
											style="width: 220px; display: none;">
											<ul class="shareMenu">
												<li class="band" data-uiselector="btnShareBand"><a
													data-uiselector="btnShareBand" href="#">다른 밴드로 공유</a></li>
												<li class="band" data-uiselector="btnShareBandOriginPost"><a
													data-uiselector="btnShareBandOriginPost" href="#">다른
														밴드로 공유</a></li>
												<li class="facebook"><a
													data-uiselector="btnShareFacebook" href="#">Facebook</a></li>
												<li class="twitter"><a
													data-uiselector="btnShareTwitter" href="#">Twitter</a></li>
												<li class="googlePlus"><a
													data-uiselector="btnShareGoogle" href="#">Google+</a></li>
												<li class="naverCafe"><a data-uiselector="btnShareCafe"
													href="#">네이버 카페</a></li>
												<li class="urlCopy"><a data-uiselector="btnDetailUrl"
													href="#">URL복사</a></li>
											</ul>
										</div>
										<div class="postMain" data-uiselector="postRegion">
											<div data-viewname="DPostItemView">
												<div class="postWriter">
													<a href="#" data-uiselector="authorImg"><img
														class="profileImg"
														src="http://s.cmstatic.net/webclient/dres/20160524170024/images/template/profile_60x60.gif"
														alt="남구문"></a>
													<div class="profileText">
														<span class="textName"> <strong
															class="name onlyName">남구문</strong>
														</span>
														<div class="textTime">5월 11일</div>
													</div>
												</div>
												<div class="postBody">
													<div class="postText">
														<p class="txtBody" data-uiselector="txtBody">213</p>
													</div>
												</div>
											</div>
										</div>
										<div class="postFunction _openPostDetail"
											data-uiselector="postFunctionWrap">
											<button type="button" class="postToggle"
												data-icon="dselect-up" data-uiselector="postDetailClose"
												style="display: none;">내용 접기</button>
											<button type="button" class="postSet" data-icon="more"
												data-uiselector="btnPostMore">글 옵션</button>
											<div class="lyMenu" style="min-width: 145px; display: none;"
												data-uiselector="postMoreMenu">
												<ul>
													<li><a href="#" data-uiselector="btnModifyPost">글
															수정</a></li>
													<li><a href="#" data-uiselector="btnUnsetNotice">공지에서
															내리기</a> <a href="#" data-uiselector="btnSetNotice"
														style="display: none;">공지로 등록</a></li>
													<li><a href="#" data-uiselector="btnCopyPost">다른
															밴드에 올리기</a></li>
													<li><a href="#" data-uiselector="btnDeletePost">글
															삭제</a></li>
													<li><a href="#" data-uiselector="btnDetailUrl">게시글
															URL 보기</a></li>
												</ul>
											</div>
										</div>
										<div class="postCount">
											<button type="button" class="faceComment"
												data-uiselector="btnToggleEmotionComment">
												<span class="face">표정<span class="count"
													data-skinfactor="color" data-uiselector="emotionCountSpan">0</span></span>
												<span class="comment">댓글<span class="count"
													data-skinfactor="color" data-uiselector="commentCountSpan">1</span></span>
												<span class="commentToggle" data-icon="dselect-down"
													data-uiselector="btnToggleEmotionCommentIcon">댓글접기/펼치기</span>
											</button>
										</div>
										<div class="postAdded">
											<a href="#" class="addStatus" data-icon="like-off"
												data-uiselector="btnToggleEmotion">표정짓기</a> <a href="#"
												class="addStatus" data-icon="comment-off"
												data-uiselector="btnOpenCommentAndFocusInput">댓글쓰기</a>
											<div class="emoticonFace"
												data-uiselector="selectEmotionLayer" style="display: none;">
												<div class="emoticonWrap" data-uiselector="emotionWrap">
													<button type="button" data-emotionindex="1"
														data-uiselector="btnEmotion">
														<span class="uIconlike">좋아요</span>
													</button>
													<button type="button" data-emotionindex="2"
														data-uiselector="btnEmotion">
														<span class="uIconsmile">웃겨요</span>
													</button>
													<button type="button" data-emotionindex="3"
														data-uiselector="btnEmotion">
														<span class="uIconbest">최고예요</span>
													</button>
													<button type="button" data-emotionindex="4"
														data-uiselector="btnEmotion">
														<span class="uIconenvious">부러워요</span>
													</button>
													<button type="button" data-emotionindex="5"
														data-uiselector="btnEmotion">
														<span class="uIconsurprise">놀랐어요</span>
													</button>
													<button type="button" data-emotionindex="6"
														data-uiselector="btnEmotion">
														<span class="uIconsad">슬퍼요</span>
													</button>
												</div>
											</div>
											<div data-uiselector="emotionRegion" style="display: none;"></div>
										</div>
										<div data-uiselector="commentRegion">
											<div data-viewname="DPostCommentMainLayoutView">
												<div data-uiselector="commentListRegion">
													<div data-viewname="DCommentListCollectionView"
														class="commentList"></div>
												</div>
												<div class="" data-uiselector="commentInputRegion"></div>
											</div>
										</div>
									</div>
								</div>
								<div data-viewname="DPostLayoutView">
									<div class="cPost " data-uiselector="postMainWrap">
										<div data-uiselector="lyShare" class="lyMenu"
											style="width: 220px; display: none;">
											<ul class="shareMenu">
												<li class="band" data-uiselector="btnShareBand"><a
													data-uiselector="btnShareBand" href="#">다른 밴드로 공유</a></li>
												<li class="band" data-uiselector="btnShareBandOriginPost"><a
													data-uiselector="btnShareBandOriginPost" href="#">다른
														밴드로 공유</a></li>
												<li class="facebook"><a
													data-uiselector="btnShareFacebook" href="#">Facebook</a></li>
												<li class="twitter"><a
													data-uiselector="btnShareTwitter" href="#">Twitter</a></li>
												<li class="googlePlus"><a
													data-uiselector="btnShareGoogle" href="#">Google+</a></li>
												<li class="naverCafe"><a data-uiselector="btnShareCafe"
													href="#">네이버 카페</a></li>
												<li class="urlCopy"><a data-uiselector="btnDetailUrl"
													href="#">URL복사</a></li>
											</ul>
										</div>
										<div class="postMain" data-uiselector="postRegion">
											<div data-viewname="DPostItemView">
												<div class="postWriter">
													<a href="#" data-uiselector="authorImg"><img
														class="profileImg"
														src="http://s.cmstatic.net/webclient/dres/20160524170024/images/template/profile_60x60.gif"
														alt="남구문"></a>
													<div class="profileText">
														<span class="textName"> <strong
															class="name onlyName">남구문</strong>
														</span>
														<div class="textTime">5월 11일</div>
													</div>
												</div>
												<div class="postBody">
													<div class="postText">
														<p class="txtBody" data-uiselector="txtBody">[123] 일정을
															만들었습니다.</p>
													</div>
													<div class="postAdd">
														<div class="addItem" data-skinfactor="beforeBg"
															data-icon="calendar" data-uiselector="attachSchedule">
															<div class="addItemInner" data-uiselector="itemSchedule">
																<p class="addStatus">
																	<span class="status" data-skinfactor="color">일정</span>2016.
																	05. 18. (수) 오후 8:00
																</p>
																<p class="addTitle">123</p>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="postFunction _openPostDetail"
											data-uiselector="postFunctionWrap">
											<button type="button" class="postToggle"
												data-icon="dselect-up" data-uiselector="postDetailClose"
												style="display: none;">내용 접기</button>
											<button type="button" class="postSet" data-icon="more"
												data-uiselector="btnPostMore">글 옵션</button>
											<div class="lyMenu" style="min-width: 145px; display: none;"
												data-uiselector="postMoreMenu">
												<ul>
													<li><a href="#" data-uiselector="btnModifyPost">글
															수정</a></li>
													<li><a href="#" data-uiselector="btnUnsetNotice"
														style="display: none;">공지에서 내리기</a> <a href="#"
														data-uiselector="btnSetNotice">공지로 등록</a></li>
													<li><a href="#" data-uiselector="btnCopyPost">다른
															밴드에 올리기</a></li>
													<li><a href="#" data-uiselector="btnDeletePost">글
															삭제</a></li>
													<li><a href="#" data-uiselector="btnDetailUrl">게시글
															URL 보기</a></li>
												</ul>
											</div>
										</div>
										<div class="postCount">
											<button type="button" class="faceComment"
												data-uiselector="btnToggleEmotionComment">
												<span class="face">표정<span class="count"
													data-skinfactor="color" data-uiselector="emotionCountSpan">0</span></span>
												<span class="comment">댓글<span class="count"
													data-skinfactor="color" data-uiselector="commentCountSpan">0</span></span>
												<span class="commentToggle" data-icon="dselect-down"
													data-uiselector="btnToggleEmotionCommentIcon">댓글접기/펼치기</span>
											</button>
										</div>
										<div class="postAdded">
											<a href="#" class="addStatus" data-icon="like-off"
												data-uiselector="btnToggleEmotion">표정짓기</a> <a href="#"
												class="addStatus" data-icon="comment-off"
												data-uiselector="btnOpenCommentAndFocusInput">댓글쓰기</a>
											<div class="emoticonFace"
												data-uiselector="selectEmotionLayer" style="display: none;">
												<div class="emoticonWrap" data-uiselector="emotionWrap">
													<button type="button" data-emotionindex="1"
														data-uiselector="btnEmotion">
														<span class="uIconlike">좋아요</span>
													</button>
													<button type="button" data-emotionindex="2"
														data-uiselector="btnEmotion">
														<span class="uIconsmile">웃겨요</span>
													</button>
													<button type="button" data-emotionindex="3"
														data-uiselector="btnEmotion">
														<span class="uIconbest">최고예요</span>
													</button>
													<button type="button" data-emotionindex="4"
														data-uiselector="btnEmotion">
														<span class="uIconenvious">부러워요</span>
													</button>
													<button type="button" data-emotionindex="5"
														data-uiselector="btnEmotion">
														<span class="uIconsurprise">놀랐어요</span>
													</button>
													<button type="button" data-emotionindex="6"
														data-uiselector="btnEmotion">
														<span class="uIconsad">슬퍼요</span>
													</button>
												</div>
											</div>
											<div data-uiselector="emotionRegion" style="display: none;"></div>
										</div>
										<div data-uiselector="commentRegion">
											<div data-viewname="DPostCommentMainLayoutView">
												<div data-uiselector="commentListRegion">
													<div data-viewname="DCommentListCollectionView"
														class="commentList"></div>
												</div>
												<div class="" data-uiselector="commentInputRegion"></div>
											</div>
										</div>
									</div>
								</div>
								<div data-viewname="DPostLayoutView">
									<div class="cPost " data-uiselector="postMainWrap">
										<div data-uiselector="lyShare" class="lyMenu"
											style="width: 220px; display: none;">
											<ul class="shareMenu">
												<li class="band" data-uiselector="btnShareBand"><a
													data-uiselector="btnShareBand" href="#">다른 밴드로 공유</a></li>
												<li class="band" data-uiselector="btnShareBandOriginPost"><a
													data-uiselector="btnShareBandOriginPost" href="#">다른
														밴드로 공유</a></li>
												<li class="facebook"><a
													data-uiselector="btnShareFacebook" href="#">Facebook</a></li>
												<li class="twitter"><a
													data-uiselector="btnShareTwitter" href="#">Twitter</a></li>
												<li class="googlePlus"><a
													data-uiselector="btnShareGoogle" href="#">Google+</a></li>
												<li class="naverCafe"><a data-uiselector="btnShareCafe"
													href="#">네이버 카페</a></li>
												<li class="urlCopy"><a data-uiselector="btnDetailUrl"
													href="#">URL복사</a></li>
											</ul>
										</div>
										<div class="postMain" data-uiselector="postRegion">
											<div data-viewname="DPostItemView">
												<div class="postWriter">
													<a href="#" data-uiselector="authorImg"><img
														class="profileImg"
														src="http://s.cmstatic.net/webclient/dres/20160524170024/images/template/profile_60x60.gif"
														alt="남구문"></a>
													<div class="profileText">
														<span class="textName"> <strong
															class="name onlyName">남구문</strong>
														</span>
														<div class="textTime">5월 11일</div>
													</div>
												</div>
												<div class="postBody">
													<div class="postText">
														<p class="txtBody" data-uiselector="txtBody">[시작!] 일정을
															만들었습니다.</p>
													</div>
													<div class="postAdd">
														<div class="addItem" data-skinfactor="beforeBg"
															data-icon="calendar" data-uiselector="attachSchedule">
															<div class="addItemInner" data-uiselector="itemSchedule">
																<p class="addStatus">
																	<span class="status" data-skinfactor="color">일정</span>2016.
																	05. 23. (월) 오후 8:00
																</p>
																<p class="addTitle">시작!</p>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="postFunction _openPostDetail"
											data-uiselector="postFunctionWrap">
											<button type="button" class="postToggle"
												data-icon="dselect-up" data-uiselector="postDetailClose"
												style="display: none;">내용 접기</button>
											<button type="button" class="postSet" data-icon="more"
												data-uiselector="btnPostMore">글 옵션</button>
											<div class="lyMenu" style="min-width: 145px; display: none;"
												data-uiselector="postMoreMenu">
												<ul>
													<li><a href="#" data-uiselector="btnModifyPost">글
															수정</a></li>
													<li><a href="#" data-uiselector="btnUnsetNotice"
														style="display: none;">공지에서 내리기</a> <a href="#"
														data-uiselector="btnSetNotice">공지로 등록</a></li>
													<li><a href="#" data-uiselector="btnCopyPost">다른
															밴드에 올리기</a></li>
													<li><a href="#" data-uiselector="btnDeletePost">글
															삭제</a></li>
													<li><a href="#" data-uiselector="btnDetailUrl">게시글
															URL 보기</a></li>
												</ul>
											</div>
										</div>
										<div class="postCount">
											<button type="button" class="faceComment"
												data-uiselector="btnToggleEmotionComment">
												<span class="face">표정<span class="count"
													data-skinfactor="color" data-uiselector="emotionCountSpan">0</span></span>
												<span class="comment">댓글<span class="count"
													data-skinfactor="color" data-uiselector="commentCountSpan">0</span></span>
												<span class="commentToggle" data-icon="dselect-down"
													data-uiselector="btnToggleEmotionCommentIcon">댓글접기/펼치기</span>
											</button>
										</div>
										<div class="postAdded">
											<a href="#" class="addStatus" data-icon="like-off"
												data-uiselector="btnToggleEmotion">표정짓기</a> <a href="#"
												class="addStatus" data-icon="comment-off"
												data-uiselector="btnOpenCommentAndFocusInput">댓글쓰기</a>
											<div class="emoticonFace"
												data-uiselector="selectEmotionLayer" style="display: none;">
												<div class="emoticonWrap" data-uiselector="emotionWrap">
													<button type="button" data-emotionindex="1"
														data-uiselector="btnEmotion">
														<span class="uIconlike">좋아요</span>
													</button>
													<button type="button" data-emotionindex="2"
														data-uiselector="btnEmotion">
														<span class="uIconsmile">웃겨요</span>
													</button>
													<button type="button" data-emotionindex="3"
														data-uiselector="btnEmotion">
														<span class="uIconbest">최고예요</span>
													</button>
													<button type="button" data-emotionindex="4"
														data-uiselector="btnEmotion">
														<span class="uIconenvious">부러워요</span>
													</button>
													<button type="button" data-emotionindex="5"
														data-uiselector="btnEmotion">
														<span class="uIconsurprise">놀랐어요</span>
													</button>
													<button type="button" data-emotionindex="6"
														data-uiselector="btnEmotion">
														<span class="uIconsad">슬퍼요</span>
													</button>
												</div>
											</div>
											<div data-uiselector="emotionRegion" style="display: none;"></div>
										</div>
										<div data-uiselector="commentRegion">
											<div data-viewname="DPostCommentMainLayoutView">
												<div data-uiselector="commentListRegion">
													<div data-viewname="DCommentListCollectionView"
														class="commentList"></div>
												</div>
												<div class="" data-uiselector="commentInputRegion"></div>
											</div>
										</div>
									</div>
								</div>
								<div data-viewname="DPostLayoutView">
									<div class="cPost " data-uiselector="postMainWrap">
										<div data-uiselector="lyShare" class="lyMenu"
											style="width: 220px; display: none;">
											<ul class="shareMenu">
												<li class="band" data-uiselector="btnShareBand"><a
													data-uiselector="btnShareBand" href="#">다른 밴드로 공유</a></li>
												<li class="band" data-uiselector="btnShareBandOriginPost"><a
													data-uiselector="btnShareBandOriginPost" href="#">다른
														밴드로 공유</a></li>
												<li class="facebook"><a
													data-uiselector="btnShareFacebook" href="#">Facebook</a></li>
												<li class="twitter"><a
													data-uiselector="btnShareTwitter" href="#">Twitter</a></li>
												<li class="googlePlus"><a
													data-uiselector="btnShareGoogle" href="#">Google+</a></li>
												<li class="naverCafe"><a data-uiselector="btnShareCafe"
													href="#">네이버 카페</a></li>
												<li class="urlCopy"><a data-uiselector="btnDetailUrl"
													href="#">URL복사</a></li>
											</ul>
										</div>
										<div class="postMain" data-uiselector="postRegion">
											<div data-viewname="DPostItemView">
												<div class="postWriter">
													<a href="#" data-uiselector="authorImg"><img
														class="profileImg"
														src="http://s.cmstatic.net/webclient/dres/20160524170024/images/template/profile_60x60.gif"
														alt="남구문"></a>
													<div class="profileText">
														<span class="textName"> <strong
															class="name onlyName">남구문</strong>
														</span>
														<div class="textTime">5월 11일</div>
													</div>
												</div>
												<div class="postBody">
													<div class="postText">
														<p class="txtBody" data-uiselector="txtBody">[이날은 8시에]
															일정을 만들었습니다.</p>
													</div>
													<div class="postAdd">
														<div class="addItem" data-skinfactor="beforeBg"
															data-icon="calendar" data-uiselector="attachSchedule">
															<div class="addItemInner" data-uiselector="itemSchedule">
																<p class="addStatus">
																	<span class="status" data-skinfactor="color">일정</span>2016.
																	05. 18. (수) 오후 8:00
																</p>
																<p class="addTitle">이날은 8시에</p>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="postFunction _openPostDetail"
											data-uiselector="postFunctionWrap">
											<button type="button" class="postToggle"
												data-icon="dselect-up" data-uiselector="postDetailClose"
												style="display: none;">내용 접기</button>
											<button type="button" class="postSet" data-icon="more"
												data-uiselector="btnPostMore">글 옵션</button>
											<div class="lyMenu" style="min-width: 145px; display: none;"
												data-uiselector="postMoreMenu">
												<ul>
													<li><a href="#" data-uiselector="btnModifyPost">글
															수정</a></li>
													<li><a href="#" data-uiselector="btnUnsetNotice"
														style="display: none;">공지에서 내리기</a> <a href="#"
														data-uiselector="btnSetNotice">공지로 등록</a></li>
													<li><a href="#" data-uiselector="btnCopyPost">다른
															밴드에 올리기</a></li>
													<li><a href="#" data-uiselector="btnDeletePost">글
															삭제</a></li>
													<li><a href="#" data-uiselector="btnDetailUrl">게시글
															URL 보기</a></li>
												</ul>
											</div>
										</div>
										<div class="postCount">
											<button type="button" class="faceComment"
												data-uiselector="btnToggleEmotionComment">
												<span class="face">표정<span class="count"
													data-skinfactor="color" data-uiselector="emotionCountSpan">0</span></span>
												<span class="comment">댓글<span class="count"
													data-skinfactor="color" data-uiselector="commentCountSpan">0</span></span>
												<span class="commentToggle" data-icon="dselect-down"
													data-uiselector="btnToggleEmotionCommentIcon">댓글접기/펼치기</span>
											</button>
										</div>
										<div class="postAdded">
											<a href="#" class="addStatus" data-icon="like-off"
												data-uiselector="btnToggleEmotion">표정짓기</a> <a href="#"
												class="addStatus" data-icon="comment-off"
												data-uiselector="btnOpenCommentAndFocusInput">댓글쓰기</a>
											<div class="emoticonFace"
												data-uiselector="selectEmotionLayer" style="display: none;">
												<div class="emoticonWrap" data-uiselector="emotionWrap">
													<button type="button" data-emotionindex="1"
														data-uiselector="btnEmotion">
														<span class="uIconlike">좋아요</span>
													</button>
													<button type="button" data-emotionindex="2"
														data-uiselector="btnEmotion">
														<span class="uIconsmile">웃겨요</span>
													</button>
													<button type="button" data-emotionindex="3"
														data-uiselector="btnEmotion">
														<span class="uIconbest">최고예요</span>
													</button>
													<button type="button" data-emotionindex="4"
														data-uiselector="btnEmotion">
														<span class="uIconenvious">부러워요</span>
													</button>
													<button type="button" data-emotionindex="5"
														data-uiselector="btnEmotion">
														<span class="uIconsurprise">놀랐어요</span>
													</button>
													<button type="button" data-emotionindex="6"
														data-uiselector="btnEmotion">
														<span class="uIconsad">슬퍼요</span>
													</button>
												</div>
											</div>
											<div data-uiselector="emotionRegion" style="display: none;"></div>
										</div>
										<div data-uiselector="commentRegion">
											<div data-viewname="DPostCommentMainLayoutView">
												<div data-uiselector="commentListRegion">
													<div data-viewname="DCommentListCollectionView"
														class="commentList"></div>
												</div>
												<div class="" data-uiselector="commentInputRegion"></div>
											</div>
										</div>
									</div>
								</div>
								<div data-viewname="DPostLayoutView">
									<div class="cPost " data-uiselector="postMainWrap">
										<div data-uiselector="lyShare" class="lyMenu"
											style="width: 220px; display: none;">
											<ul class="shareMenu">
												<li class="band" data-uiselector="btnShareBand"><a
													data-uiselector="btnShareBand" href="#">다른 밴드로 공유</a></li>
												<li class="band" data-uiselector="btnShareBandOriginPost"><a
													data-uiselector="btnShareBandOriginPost" href="#">다른
														밴드로 공유</a></li>
												<li class="facebook"><a
													data-uiselector="btnShareFacebook" href="#">Facebook</a></li>
												<li class="twitter"><a
													data-uiselector="btnShareTwitter" href="#">Twitter</a></li>
												<li class="googlePlus"><a
													data-uiselector="btnShareGoogle" href="#">Google+</a></li>
												<li class="naverCafe"><a data-uiselector="btnShareCafe"
													href="#">네이버 카페</a></li>
												<li class="urlCopy"><a data-uiselector="btnDetailUrl"
													href="#">URL복사</a></li>
											</ul>
										</div>
										<div class="postMain" data-uiselector="postRegion">
											<div data-viewname="DPostItemView">
												<div class="postWriter">
													<a href="#" data-uiselector="authorImg"><img
														class="profileImg"
														src="http://s.cmstatic.net/webclient/dres/20160524170024/images/template/profile_60x60.gif"
														alt="남구문"></a>
													<div class="profileText">
														<span class="textName"> <strong
															class="name onlyName">남구문</strong>
														</span>
														<div class="textTime">5월 11일</div>
													</div>
												</div>
												<div class="postBody">
													<div class="postText">
														<p class="txtBody" data-uiselector="txtBody">[123] 일정을
															만들었습니다.</p>
													</div>
													<div class="postAdd">
														<div class="addItem" data-skinfactor="beforeBg"
															data-icon="calendar" data-uiselector="attachSchedule">
															<div class="addItemInner" data-uiselector="itemSchedule">
																<p class="addStatus">
																	<span class="status" data-skinfactor="color">일정</span>2016.
																	05. 12. (목) 오후 8:00
																</p>
																<p class="addTitle">123</p>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="postFunction _openPostDetail"
											data-uiselector="postFunctionWrap">
											<button type="button" class="postToggle"
												data-icon="dselect-up" data-uiselector="postDetailClose"
												style="display: none;">내용 접기</button>
											<button type="button" class="postSet" data-icon="more"
												data-uiselector="btnPostMore">글 옵션</button>
											<div class="lyMenu" style="min-width: 145px; display: none;"
												data-uiselector="postMoreMenu">
												<ul>
													<li><a href="#" data-uiselector="btnModifyPost">글
															수정</a></li>
													<li><a href="#" data-uiselector="btnUnsetNotice"
														style="display: none;">공지에서 내리기</a> <a href="#"
														data-uiselector="btnSetNotice">공지로 등록</a></li>
													<li><a href="#" data-uiselector="btnCopyPost">다른
															밴드에 올리기</a></li>
													<li><a href="#" data-uiselector="btnDeletePost">글
															삭제</a></li>
													<li><a href="#" data-uiselector="btnDetailUrl">게시글
															URL 보기</a></li>
												</ul>
											</div>
										</div>
										<div class="postCount">
											<button type="button" class="faceComment"
												data-uiselector="btnToggleEmotionComment">
												<span class="face">표정<span class="count"
													data-skinfactor="color" data-uiselector="emotionCountSpan">0</span></span>
												<span class="comment">댓글<span class="count"
													data-skinfactor="color" data-uiselector="commentCountSpan">0</span></span>
												<span class="commentToggle" data-icon="dselect-down"
													data-uiselector="btnToggleEmotionCommentIcon">댓글접기/펼치기</span>
											</button>
										</div>
										<div class="postAdded">
											<a href="#" class="addStatus" data-icon="like-off"
												data-uiselector="btnToggleEmotion">표정짓기</a> <a href="#"
												class="addStatus" data-icon="comment-off"
												data-uiselector="btnOpenCommentAndFocusInput">댓글쓰기</a>
											<div class="emoticonFace"
												data-uiselector="selectEmotionLayer" style="display: none;">
												<div class="emoticonWrap" data-uiselector="emotionWrap">
													<button type="button" data-emotionindex="1"
														data-uiselector="btnEmotion">
														<span class="uIconlike">좋아요</span>
													</button>
													<button type="button" data-emotionindex="2"
														data-uiselector="btnEmotion">
														<span class="uIconsmile">웃겨요</span>
													</button>
													<button type="button" data-emotionindex="3"
														data-uiselector="btnEmotion">
														<span class="uIconbest">최고예요</span>
													</button>
													<button type="button" data-emotionindex="4"
														data-uiselector="btnEmotion">
														<span class="uIconenvious">부러워요</span>
													</button>
													<button type="button" data-emotionindex="5"
														data-uiselector="btnEmotion">
														<span class="uIconsurprise">놀랐어요</span>
													</button>
													<button type="button" data-emotionindex="6"
														data-uiselector="btnEmotion">
														<span class="uIconsad">슬퍼요</span>
													</button>
												</div>
											</div>
											<div data-uiselector="emotionRegion" style="display: none;"></div>
										</div>
										<div data-uiselector="commentRegion">
											<div data-viewname="DPostCommentMainLayoutView">
												<div data-uiselector="commentListRegion">
													<div data-viewname="DCommentListCollectionView"
														class="commentList"></div>
												</div>
												<div class="" data-uiselector="commentInputRegion"></div>
											</div>
										</div>
									</div>
								</div>
								<div data-viewname="DPostLayoutView">
									<div class="cPost " data-uiselector="postMainWrap">
										<div data-uiselector="lyShare" class="lyMenu"
											style="width: 220px; display: none;">
											<ul class="shareMenu">
												<li class="band" data-uiselector="btnShareBand"><a
													data-uiselector="btnShareBand" href="#">다른 밴드로 공유</a></li>
												<li class="band" data-uiselector="btnShareBandOriginPost"><a
													data-uiselector="btnShareBandOriginPost" href="#">다른
														밴드로 공유</a></li>
												<li class="facebook"><a
													data-uiselector="btnShareFacebook" href="#">Facebook</a></li>
												<li class="twitter"><a
													data-uiselector="btnShareTwitter" href="#">Twitter</a></li>
												<li class="googlePlus"><a
													data-uiselector="btnShareGoogle" href="#">Google+</a></li>
												<li class="naverCafe"><a data-uiselector="btnShareCafe"
													href="#">네이버 카페</a></li>
												<li class="urlCopy"><a data-uiselector="btnDetailUrl"
													href="#">URL복사</a></li>
											</ul>
										</div>
										<div class="postMain" data-uiselector="postRegion">
											<div data-viewname="DPostItemView">
												<div class="postWriter">
													<a href="#" data-uiselector="authorImg"><img
														class="profileImg"
														src="http://s.cmstatic.net/webclient/dres/20160524170024/images/template/profile_60x60.gif"
														alt="남구문"></a>
													<div class="profileText">
														<span class="textName"> <strong
															class="name onlyName">남구문</strong>
														</span>
														<div class="textTime">5월 11일</div>
													</div>
												</div>
												<div class="postBody">
													<div class="postText">
														<p class="txtBody" data-uiselector="txtBody">
															123 밴드를 시작합니다.<br>
															<br>아래 주소를 복사해 친구들에게 전달하세요.<br>초대주소: <a
																href="http://band.us/n/a9a6r8d8kew9K" target="_blank"
																class="outer_link word_break _outerLink">http://band.us/n/a9a6r8d8kew9K</a>
														</p>
														<img src="http://s.cmstatic.net/band/sticker/197/PC/24"
															alt="sticker" class="sticker _prevent_context">
													</div>
												</div>
											</div>
										</div>
										<div class="postFunction _openPostDetail"
											data-uiselector="postFunctionWrap">
											<button type="button" class="postToggle"
												data-icon="dselect-up" data-uiselector="postDetailClose"
												style="display: none;">내용 접기</button>
											<button type="button" class="postSet" data-icon="more"
												data-uiselector="btnPostMore">글 옵션</button>
											<div class="lyMenu" style="min-width: 145px; display: none;"
												data-uiselector="postMoreMenu">
												<ul>
													<li><a href="#" data-uiselector="btnModifyPost">글
															수정</a></li>
													<li><a href="#" data-uiselector="btnUnsetNotice"
														style="display: none;">공지에서 내리기</a> <a href="#"
														data-uiselector="btnSetNotice">공지로 등록</a></li>
													<li><a href="#" data-uiselector="btnCopyPost">다른
															밴드에 올리기</a></li>
													<li><a href="#" data-uiselector="btnDeletePost">글
															삭제</a></li>
													<li><a href="#" data-uiselector="btnDetailUrl">게시글
															URL 보기</a></li>
												</ul>
											</div>
										</div>
										<div class="postCount">
											<button type="button" class="faceComment"
												data-uiselector="btnToggleEmotionComment">
												<span class="face">표정<span class="count"
													data-skinfactor="color" data-uiselector="emotionCountSpan">0</span></span>
												<span class="comment">댓글<span class="count"
													data-skinfactor="color" data-uiselector="commentCountSpan">0</span></span>
												<span class="commentToggle" data-icon="dselect-down"
													data-uiselector="btnToggleEmotionCommentIcon">댓글접기/펼치기</span>
											</button>
										</div>
										<div class="postAdded">
											<a href="#" class="addStatus" data-icon="like-off"
												data-uiselector="btnToggleEmotion">표정짓기</a> <a href="#"
												class="addStatus" data-icon="comment-off"
												data-uiselector="btnOpenCommentAndFocusInput">댓글쓰기</a>
											<div class="emoticonFace"
												data-uiselector="selectEmotionLayer" style="display: none;">
												<div class="emoticonWrap" data-uiselector="emotionWrap">
													<button type="button" data-emotionindex="1"
														data-uiselector="btnEmotion">
														<span class="uIconlike">좋아요</span>
													</button>
													<button type="button" data-emotionindex="2"
														data-uiselector="btnEmotion">
														<span class="uIconsmile">웃겨요</span>
													</button>
													<button type="button" data-emotionindex="3"
														data-uiselector="btnEmotion">
														<span class="uIconbest">최고예요</span>
													</button>
													<button type="button" data-emotionindex="4"
														data-uiselector="btnEmotion">
														<span class="uIconenvious">부러워요</span>
													</button>
													<button type="button" data-emotionindex="5"
														data-uiselector="btnEmotion">
														<span class="uIconsurprise">놀랐어요</span>
													</button>
													<button type="button" data-emotionindex="6"
														data-uiselector="btnEmotion">
														<span class="uIconsad">슬퍼요</span>
													</button>
												</div>
											</div>
											<div data-uiselector="emotionRegion" style="display: none;"></div>
										</div>
										<div data-uiselector="commentRegion">
											<div data-viewname="DPostCommentMainLayoutView">
												<div data-uiselector="commentListRegion">
													<div data-viewname="DCommentListCollectionView"
														class="commentList"></div>
												</div>
												<div class="" data-uiselector="commentInputRegion"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</section>
					</main>
					<aside id="banner" data-uiselector="bannerRegion">
						<div data-viewname="DBannersView" class="inner">
							<div data-uiselector="bandBannerRegion" class="widget myBand">
								<div data-viewname="DBandBannerView">
									<div class="tit _myBandListTitle" data-skin="skin5">
										<h2>내 밴드</h2>
										<em data-uiselector="labelBandCount" data-skinfactor="color">5</em>
									</div>
									<div class="dummy" data-uiselector="dummy">
										<div></div>
										<div></div>
										<div></div>
										<div></div>
										<div></div>
									</div>
									<div class="scrollWrap">
										<div class="nano has-scrollbar">
											<div class="nano-content" tabindex="0" style="right: -17px;">
												<ul data-uiselector="bandList">
													<li data-viewname="DBandBannerItemView" data-skin="skin5"
														class=""><a href="/#!/band/61355066"><span
															data-skinfactor="beforeBg"><img
																src="http://coresos.phinf.naver.net/a/2gegeb_c/18aUd015f6anox25rtzm_5ksoqj.jpg?type=s150_low"
																width="44" height="44" alt="123"
																data-skinfactor="border"></span> <span><strong
																title="123">123</strong> </span></a></li>
													<li data-viewname="DBandBannerItemView" data-skin="skin4"
														class=""><a href="/#!/band/54740602"><span
															data-skinfactor="beforeBg"><img
																src="http://coresos.phinf.naver.net/a/2gegeb_e/ea5Ud01514dvlq3qyua9r_5ksoqj.jpg?type=s150_low"
																width="44" height="44" alt="Journalism Theory"
																data-skinfactor="border"></span> <span><strong
																title="Journalism Theory">Journalism Theory</strong> </span></a></li>
													<li data-viewname="DBandBannerItemView" data-skin="skin1"
														class=""><a href="/#!/band/8254403"><span
															data-skinfactor="beforeBg"><img
																src="http://coresos.phinf.naver.net/a/2gegeb_f/3afUd0151trt4adnnr0el_5ksoqj.jpg?type=s150_low"
																width="44" height="44" alt="시민사회"
																data-skinfactor="border"></span> <span><strong
																title="시민사회">시민사회</strong> </span></a></li>
													<li data-viewname="DBandBannerItemView" data-skin="skin7"
														class=""><a href="/#!/band/50774333"><span
															data-skinfactor="beforeBg"><img
																src="http://coresos.phinf.naver.net/a/2gegeb_d/310Ud015lfr9xx5kudg8_5ksoqj.jpg?type=s150_low"
																width="44" height="44" alt="언론실무교육2조"
																data-skinfactor="border"></span> <span><strong
																title="언론실무교육2조">언론실무교육2조</strong> </span></a></li>
													<li data-viewname="DBandBannerItemView" data-skin="skin4"
														class=""><a href="/#!/band/59269549"><span
															data-skinfactor="beforeBg"><img
																src="http://coresos.phinf.naver.net/a/2ge79a_g/484Ud015ep55bvgrljzh_1gs1v8.jpg?type=s150_low"
																width="44" height="44" alt="Hclass오후반"
																data-skinfactor="border"></span> <span><strong
																title="Hclass오후반">Hclass오후반</strong> </span></a></li>
												</ul>
											</div>
											<div class="nano-pane">
												<div class="nano-slider"
													style="height: 201px; transform: translate(0px, 0px);"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div data-uiselector="recommendBandBannerRegion"
								class="widget proposeBand">
								<div data-viewname="DBandBannerRecommendBandsCompositeView">
									<h2 class="tit">
										<a href="#" data-icon="right"
											data-uiselector="btnMoveDiscover">이런 밴드는 어때요</a>
									</h2>
									<div class="dummy" data-uiselector="recommendBandsDummy">
										<div></div>
										<div></div>
										<div></div>
										<div></div>
										<div></div>
										<div></div>
										<div></div>
										<div></div>
										<div></div>
										<div></div>
									</div>
									<div class="scrollWrap">
										<div class="nano has-scrollbar">
											<div class="nano-content" tabindex="0" style="right: -17px;">
												<ul data-uiselector="recommendBands">
													<li data-viewname="DBandBannerRecommendBandsItemView"
														data-skin="skin9"><a href="#"
														data-uiselector="goTargetBand"><span
															data-skinfactor="beforeBg"><img
																src="http://coresos.phinf.naver.net/a/2h2025_3/358Ud015k6jnci9o0fxk_6jiq5q.jpg?type=s150_low"
																width="44" height="44" alt="전동 킥보드와 함께 티타임~"
																data-skinfactor="border"></span> <span><strong
																title="전동 킥보드와 함께 티타임~">전동 킥보드와 함께 티타임~</strong> </span></a></li>
													<li data-viewname="DBandBannerRecommendBandsItemView"
														data-skin="skin7"><a href="#"
														data-uiselector="goTargetBand"><span
															data-skinfactor="beforeBg"><img
																src="http://coresos.phinf.naver.net/a/2h0h2i_2/7jgUd0157k99k3vebvny_2hqhv4.jpg?type=s150_low"
																width="44" height="44" alt="수동변속기 매니아"
																data-skinfactor="border"></span> <span><strong
																title="수동변속기 매니아">수동변속기 매니아</strong> </span></a></li>
													<li data-viewname="DBandBannerRecommendBandsItemView"
														data-skin="skin1"><a href="#"
														data-uiselector="goTargetBand"><span
															data-skinfactor="beforeBg"><img
																src="http://coresos.phinf.naver.net/a/2h1ac9_9/g20Ud0151mvp9ke5nrqv0_nfwvp7.jpg?type=s150_low"
																width="44" height="44" alt="♥딴따라팬밴드♥"
																data-skinfactor="border"></span> <span><strong
																title="♥딴따라팬밴드♥">♥딴따라팬밴드♥</strong> </span></a></li>
													<li data-viewname="DBandBannerRecommendBandsItemView"
														data-skin="skin9"><a href="#"
														data-uiselector="goTargetBand"><span
															data-skinfactor="beforeBg"><img
																src="http://coresos.phinf.naver.net/a/2g9799_g/9fgUd01510v6ydvo6ae3k_ryf70t.jpg?type=s150_low"
																width="44" height="44" alt="제주도 정착 이야기"
																data-skinfactor="border"></span> <span><strong
																title="제주도 정착 이야기">제주도 정착 이야기</strong> </span></a></li>
													<li data-viewname="DBandBannerRecommendBandsItemView"
														data-skin="skin9"><a href="#"
														data-uiselector="goTargetBand"><span
															data-skinfactor="beforeBg"><img
																src="http://coresos.phinf.naver.net/a/2h05ba_4/6b5Ud015qxr9y4zz7sqd_hhpg5v.jpg?type=s150_low"
																width="44" height="44" alt="주짓수 기술 공유밴드"
																data-skinfactor="border"></span> <span><strong
																title="주짓수 기술 공유밴드">주짓수 기술 공유밴드</strong> </span></a></li>
													<li data-viewname="DBandBannerRecommendBandsItemView"
														data-skin="skin5"><a href="#"
														data-uiselector="goTargetBand"><span
															data-skinfactor="beforeBg"><img
																src="http://coresos.phinf.naver.net/a/2ghh82_5/bgaUd0151ivfqt22aabzf_u7fie2.png?type=s150_low"
																width="44" height="44" alt="패.완.운 (패션의 완성은 운동화)"
																data-skinfactor="border"></span> <span><strong
																title="패.완.운 (패션의 완성은 운동화)">패.완.운 (패션의 완성은 운동화)</strong>
														</span></a></li>
													<li data-viewname="DBandBannerRecommendBandsItemView"
														data-skin="skin4"><a href="#"
														data-uiselector="goTargetBand"><span
															data-skinfactor="beforeBg"><img
																src="http://coresos.phinf.naver.net/a/2gegeb_b/7f5Ud0155waqfh7iezh9_5ksoqj.jpg?type=s150_low"
																width="44" height="44" alt="인문학 브런치"
																data-skinfactor="border"></span> <span><strong
																title="인문학 브런치">인문학 브런치</strong> </span></a></li>
													<li data-viewname="DBandBannerRecommendBandsItemView"
														data-skin="skin14"><a href="#"
														data-uiselector="goTargetBand"><span
															data-skinfactor="beforeBg"><img
																src="http://coresos.phinf.naver.net/a_2f8ffh_5/dh8Ud010t36fa0e9zbr1_hmv1i8.jpg?type=s150_low"
																width="44" height="44" alt="토탈,가죽공예를 함께 배워요."
																data-skinfactor="border"></span> <span><strong
																title="토탈,가죽공예를 함께 배워요.">토탈,가죽공예를 함께 배워요.</strong> </span></a></li>
													<li data-viewname="DBandBannerRecommendBandsItemView"
														data-skin="skin8"><a href="#"
														data-uiselector="goTargetBand"><span
															data-skinfactor="beforeBg"><img
																src="http://coresos.phinf.naver.net/a/2h33h7_8/210Ud0151kegp55doox7y_70b861.jpg?type=s150_low"
																width="44" height="44" alt="NO.1 오버워치 - Overwatch BAND"
																data-skinfactor="border"></span> <span><strong
																title="NO.1 오버워치 - Overwatch BAND">NO.1 오버워치 -
																	Overwatch BAND</strong> </span></a></li>
													<li data-viewname="DBandBannerRecommendBandsItemView"
														data-skin="skin6"><a href="#"
														data-uiselector="goTargetBand"><span
															data-skinfactor="beforeBg"><img
																src="http://coresos.phinf.naver.net/a/2ge0c7_9/154Ud0159svt0ag1yttg_lyn5og.jpg?type=s150_low"
																width="44" height="44" alt="소개탁 (  소개로 모인 탁구모임  )"
																data-skinfactor="border"></span> <span><strong
																title="소개탁 (  소개로 모인 탁구모임  )">소개탁 ( 소개로 모인 탁구모임
																	)</strong> </span></a></li>
												</ul>
											</div>
											<div class="nano-pane" style="display: none;">
												<div class="nano-slider"
													style="height: 583px; transform: translate(0px, 0px);"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</aside>
				</div>
			</div>
			<div id="footer">
				<nav>
					<a href="/cs/#!/notice" target="_blank">공지사항</a> <a
						href="https://partners.band.us/partners/ko/main.nhn"
						target="_blank">파트너</a> <a href="https://ad.band.us"
						target="_blank">광고</a> <a href="/policy/terms" target="_blank">이용약관</a>
					<a href="/policy/privacy" target="_blank"><strong>개인정보취급방침</strong></a>
					<a href="/policy/youthpolicy" target="_blank">청소년 보호정책</a> <a
						href="/policy/operating" target="_blank">운영정책</a> <a
						href="/policy/usurpation" target="_blank">권리침해신고안내</a> <a
						href="/cs/#!/help" target="_blank">도움말</a>
				</nav>
			</div>
			<div id="layerContainer" data-skin="skin5"></div>
		</div>
	</div>
	<script type="text/javascript">
    (function init() {
        if (location.href.indexOf('#!') < 0 && location.href.indexOf('@') < 0) {
            location.replace('#!/');
        }

        require(['app_base'],function(){
            require(['application/DApplication'],function(App){
                $(document).on('contextmenu','._prevent_context',function(){
                    return false;
                });
                $(document).on('dragstart','._prevent_context',function(){
                    return false;
                });
                App.start({bandNo: ''});
            });
        });
    })();
</script>

</body></body>
</html>