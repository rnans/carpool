<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html >
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>가장 편리한 카풀 서비스, 풀파티!</title>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
		<meta name="viewport" content="width=device-width, initial-scale=1"> 
		<title>Off-Canvas Menu Effects - Top Side</title>
		<meta name="description" content="Modern effects and styles for off-canvas navigation with CSS transitions and SVG animations using Snap.svg" />
		<meta name="keywords" content="sidebar, off-canvas, menu, navigation, effect, inspiration, css transition, SVG, morphing, animation" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" type="text/css" href="css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.2.0/css/font-awesome.min.css" />
		<link rel="stylesheet" type="text/css" href="css/menu_topside.css" />
		<link rel="stylesheet" href="./bootstrap/css/font-awesome.min.css">
  		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		
	
<style>
.upicontainer, 
.content-wrap {
	overflow: hidden;
	width: 100%;
	height: 100%;
	position: relative;
	margin-top: 25px ;
}

.upicontainer {
	background: #373a47;
	position:  absolute;
}

.menu-wrap a {
	color: #b8b7ad;
}

.menu-wrap a:hover,
.menu-wrap a:focus {
	color: #c94e50;
}

.content-wrap {
	overflow-y: scroll;
	-webkit-overflow-scrolling: touch;
	-webkit-transition: -webkit-transform 0.3s;
	transition: transform 0.3s;
}

.content {
	position: relative;
	background: #F6F6F6;
}

/* Overlay */
.content::before {
	position: relative;
	
	left: 0;
	z-index: 10;
	width: 100%;
	height: 100%;
	background: rgba(0,0,0,0.3);
	content: '';
	opacity: 0;
	-webkit-transform: translate3d(100%,0,0);
	transform: translate3d(100%,0,0);
	-webkit-transition: opacity 0.3s, -webkit-transform 0s 0.3s;
	transition: opacity 0.3s, transform 0s 0.3s;
}

/* Menu Button */
.menu-button {
	position: absolute;
	z-index: 1000;
	margin: 2em;
	padding: 0;
	width: 2.5em;
	height: 2.25em;
	border: none;
	text-indent: 2.5em;
	font-size: 1.5em;
	color: transparent;
	background: transparent;
	-webkit-transition: -webkit-transform 0.3s;
	transition: transform 0.3s;
		
}

.menu-button::before {
	position: absolute;
	
	top: 0.5em;
	right: 0.5em;
	bottom: 0.5em;
	left: 0.5em;
	background: linear-gradient(#373a47 20%, transparent 20%, transparent 40%, #373a47 40%, #373a47 60%, transparent 60%, transparent 80%, #373a47 80%);
	content: '';
}

.menu-button:hover {
	opacity: 0.6;
}
/* Menu */
.menu-wrap {
	position: absolute; 
	font-weight: 700;
	opacity: 0;
	-webkit-transition: opacity 1s;
	transition: opacity 1s;
}

.menu-top {
	line-height: 58px;
}

.menu-top .profile {
	display: inline-block;
	position:relative;
	margin-top:25px;
	padding: 8px 10px;
	line-height: 42px;
	width: 60px;
	height: 60px;
}

.menu-top .profile,
.menu-side {
	width: 300px;
}

.menu-top .profile img {
	float: left;
	margin-right: 1em;
}

.icon-list {
	display: inline-block;
	font-size: 1.25em;
}

.icon-list a {
	margin: 0 1em 0 0;
	padding: 0;
}

@media screen and (max-width: 32em) {
	.icon-list {
		padding-left: 1em;
	}
}

.menu-side a {
	display: block;
	padding: 1.2em;
	border-bottom: 1px solid rgba(0,0,0,0.1);
}

.menu-side a:first-child {
	border-top: 1px solid rgba(0,0,0,0.1);
}

/* Shown menu */
.show-menu .menu-wrap {
	opacity: 1;
}

.show-menu .content-wrap,
.show-menu .menu-button {
	-webkit-transform: translate3d(300px,60px,0);
	transform: translate3d(300px,60px,0);
}

.show-menu .content::before {
	opacity: 1;
	-webkit-transition: opacity 0.3s;
	transition: opacity 0.3s;
	-webkit-transform: translate3d(0,0,0);
	transform: translate3d(0,0,0);
}


/***/
@import url(http://fonts.googleapis.com/css?family=Raleway:200,400,700,800);
@font-face {
	font-weight: normal;
	font-style: normal;
	font-family: 'codropsicons';
	src:url('../fonts/codropsicons/codropsicons.eot');
	src:url('../fonts/codropsicons/codropsicons.eot?#iefix') format('embedded-opentype'),
		url('../fonts/codropsicons/codropsicons.woff') format('woff'),
		url('../fonts/codropsicons/codropsicons.ttf') format('truetype'),
		url('../fonts/codropsicons/codropsicons.svg#codropsicons') format('svg');
}

*, *:after, *:before { -webkit-box-sizing: border-box; box-sizing: border-box; }
.clearfix:before, .clearfix:after { content: ''; display: table; }
.clearfix:after { clear: both; }

body {
	background: #b4bad2;
	color: #fffce1;
	font-weight: 400;
	font-size: 1em;
	font-family: 'Raleway', Arial, sans-serif;
}

a {
	color: #4e4a46;
	text-decoration: none;
	outline: none;
}

a:hover, a:focus {
	color: #c94e50;
	outline: none;
}

button:focus {
	outline: none;
}

section {
	padding: 1em;
	text-align: center;
}

/* Header */
.codrops-header {
	margin:;
	padding: 3em 2em;
	text-align:;
}

.codrops-header h1 {
	margin: 0 auto;
	font-weight: 800;
	font-size: 3.75em;
	line-height: 1;
}

.codrops-header h1 span {
	display: block;
	font-size: 50%;
	font-weight: 400;
	padding-top: 0.325em;
}

.codrops-links {
	text-transform: uppercase;
	font-weight: 700;
	font-size: 0.69em;
	line-height: 2.2;
	padding: 1.61em 5em;
}

.codrops-links a {
	display: inline-block;
	padding: 0 1em;
	text-decoration: none;
	letter-spacing: 1px;
}

.codrops-icon:before {
	margin: 0 4px;
	text-transform: none;
	font-weight: normal;
	font-style: normal;
	font-variant: normal;
	font-family: 'codropsicons';
	line-height: 1;
	speak: none;
	-webkit-font-smoothing: antialiased;
}

.codrops-icon-drop:before {
	content: "\e001";
}

.codrops-icon-prev:before {
	content: "\e004";
}

/* Demo Buttons Style */
.codrops-demos {
	font-size: 1em;
	max-width: 1200px;
	margin: 3em auto 5em;
	padding: 2em 10em 0;
}

.codrops-demos > a {
	display: inline-block;
	margin: 0.75em;
	padding: 1.35em 1.1em;
	width: 15em;
	background: #fffce1;
	outline: none;
	text-decoration: none;
	text-transform: uppercase;
	letter-spacing: 1px;
	font-weight: 800;
	border-radius: 20px/50px;
}

.codrops-demos > a.current-demo {
	background: #c94e50;
	color: #fffce1;
}

/* Related demos */
.related {
	margin-top: 5em;
	padding: 0 3em 5em;
}

.related p {
	font-size: 1.5em;
	font-weight: 700;
}

.related > a {
	display: inline-block;
	text-align: center;
	margin: 20px 10px;
	padding: 25px;
	border-radius: 35px/200px;
	background: #fffce1;
	max-width: 100%;
}

. a img {
	max-width: 100%;
	opacity: 0.8;
	border-radius: 20px/100px;
}

.related a:hover img,
.related a:active img {
	opacity: 1;
}

.related a h3 {
	margin: 0;
	padding: 0.5em 0.75em 0.3em;
	max-width: 300px;
	text-align: left;
}

body #cdawrap {
	top: auto;
	bottom: 35px;
	right: 35px;
	background: #b4bad2;
	border: 1px solid rgba(131,135,151,0.6);
}

.demo-wave body #cdawrap {
	top: 35px;
	right: 35px;
	bottom: auto;
}

@media screen and (max-width: 40em) {
	body {
		font-size: 80%;
	}
	.codrops-header h1 {
		font-size: 2.5em;
	}
	.codrops-demos {
		max-width: 900px;
		padding: 2em 2em 0;
	}
	.related > a {
		margin: 20px 0;
	}
}

@media screen and (max-width: 25em) {

	.codrops-icon {
		font-size: 250%;
	}

	.codrops-icon span {
		display: none;
	}

}


article,aside,details,figcaption,figure,footer,header,hgroup,main,nav,section,summary{display:block;}audio,canvas,video{display:inline-block;}audio:not([controls]){display:none;height:0;}[hidden]{display:none;}html{font-family:sans-serif;-ms-text-size-adjust:100%;-webkit-text-size-adjust:100%;}body{margin:0;}a:focus{outline:thin dotted;}a:active,a:hover{outline:0;}h1{font-size:2em;margin:0.67em 0;}abbr[title]{border-bottom:1px dotted;}b,strong{font-weight:bold;}dfn{font-style:italic;}hr{-moz-box-sizing:content-box;box-sizing:content-box;height:0;}mark{background:#ff0;color:#000;}code,kbd,pre,samp{font-family:monospace,serif;font-size:1em;}pre{white-space:pre-wrap;}q{quotes:"\201C" "\201D" "\2018" "\2019";}small{font-size:80%;}sub,sup{font-size:75%;line-height:0;position:relative;vertical-align:baseline;}sup{top:-0.5em;}sub{bottom:-0.25em;}img{border:0;}svg:not(:root){overflow:hidden;}figure{margin:0;}fieldset{border:1px solid #c0c0c0;margin:0 2px;padding:0.35em 0.625em 0.75em;}legend{border:0;padding:0;}button,input,select,textarea{font-family:inherit;font-size:100%;margin:0;}button,input{line-height:normal;}button,select{text-transform:none;}button,html input[type="button"],input[type="reset"],input[type="submit"]{-webkit-appearance:button;cursor:pointer;}button[disabled],html input[disabled]{cursor:default;}input[type="checkbox"],input[type="radio"]{box-sizing:border-box;padding:0;}input[type="search"]{-webkit-appearance:textfield;-moz-box-sizing:content-box;-webkit-box-sizing:content-box;box-sizing:content-box;}input[type="search"]::-webkit-search-cancel-button,input[type="search"]::-webkit-search-decoration{-webkit-appearance:none;}button::-moz-focus-inner,input::-moz-focus-inner{border:0;padding:0;}textarea{overflow:auto;vertical-align:top;}table{border-collapse:collapse;border-spacing:0;}

#cdawrap {
	text-align: center; 
	width: 178px; 
	height: auto;
	right: 15px; 
	top: 35px;  
	position: fixed; 
	background: rgba(255,255,255,0.8);
	border: 1px solid rgba(0,0,0,0.05);
	z-index: 1000000;
	font-family: 'Avenir Next', Avenir, 'Helvetica Neue', Helvetica, Arial, sans-serif;
	padding: 24px 24px 10px 24px;
	font-size: 12px;
	font-weight: 700;
}

#cdawrap .carbon-img {
	display: block;
	text-align: center;
	border: none;
}

#cdawrap .carbon-text {
	color: #4f5152;
	padding: 10px 0 15px 0;
	display: block;
	line-height: 1.2;
	text-decoration: none;
}

#cdawrap a.carbon-poweredby {
	display: block;
	text-transform: uppercase;
	font-size: 65%;
	letter-spacing: 1px;
	color: #cc301e;
	font-weight: 700;
	text-decoration: none;
}

#cdawrap a.carbon-poweredby:hover,
#cdawrap a.carbon-poweredby:focus {
	color: #333;
}

#cda-remove {
	width: 24px;
	height: 24px;
	position: absolute;
	top: 0;
	right: 0;
	line-height: 1;
	text-align: center;
	cursor: pointer;
	font-size: 12px;
	line-height: 24px;
	color: #777;
}

#cda-remove:hover {
	background: rgba(0,0,0,0.1);
}

#cda-remove:before {
	content: '\00D7';
	display: inline-block;
}

@media screen and (max-width: 800px){ 
	body #cdawrap {
		width: 100%; 
		height: auto; 
		right: 0px; 
		top: auto !important; 
		bottom: 0px !important;
		left: 0px !important;
		background: #fff !important;
		padding: 15px 50px 10px 10px;
		text-align: left;
		font-size: 11px;
	}

	body #cdawrap::before {
		content: 'Advertisement';
		position: absolute;
		top: 0;
		left: 0;
		color: #999;
		font-size: 9px;
		padding: 10px;
	}

	body #cdawrap .carbon-text {
		color: #4f5152 !important;
		padding: 10px 0 !important;
	}

	body #cdawrap .carbon-img {
		display: none;
	}

	body #cda-remove {
		width: 30px;
		height: 30px;
		font-size: 16px;
		line-height: 30px;
		background: #E1E1E1;
	}
}

@media screen and (max-width: 460px){ 
	body #cdawrap { display: none; }
}
//
//
.center-block {
  display: block;
  margin-left: 0px auto;
  margin-right: 0px auto;
  
}

// Usage as a mixin
.element {
  .center-block();
}
#my{
 	color:white;
}


</style>


<script>
var _gaq = _gaq || [];
_gaq.push(['_setAccount', 'UA-7243260-2']);
_gaq.push(['_trackPageview']);
(function() {
var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
})();
</script>

	</head>
	
	<body>
	<%@ include file="../header.jsp" %>
		<div class="upicontainer">
			<div class="menu-wrap">
				<nav class="menu-top">
					<div class="profile"><img style="width:50px;height:50px;" src="http://localhost:8080/final02/img/${dto2[0].filename}" alt="프로필사진"/><span id="my">${sessionScope.sname} 님 마이페이지</span></div>
					<div class="icon-list">
						<a href="wishPoolList.do"><i class="fa fa-star-o"></i></a>
						<a href="notiSetting.do?id=${sessionScope.sid }"><i class="fa fa-fw fa-bell-o"></i></a>
						<a href="messageList.do"><i class="fa fa-fw fa-envelope-o"></i></a>
						<a href="#"><i class="fa fa-fw fa-comment-o"></i></a>
					</div>
				</nav>
				<nav class="menu-side">
					<a href="myPage.do">마이페이지</a>
					<a href="affiliationList.do">소속카풀</a>
					<a href="pwdUpdateForm.do">비밀번호변경</a>
					<a href="userPayInfo.do">등록된카드</a>
					<a href="wishPoolList.do">즐겨찾기(카풀)</a>
					<a href="useList.do">이용내역</a>
					<a href="reservationList.do">등록글</a>
					<a href="rateView.do">평가글</a>
					<a href="memberleave.do">회원탈퇴</a>
				</nav>
			</div>
			<button class="menu-button" id="open-button">Open Menu</button>
			<div class="content-wrap">
				<div class="content">
				
				<div data-uiselector="bandNoticeRegion" style="width: 70%;margin: 0px auto;padding-top: 30px;min-height: 650px;">
					<div data-viewname="DBandBoardNoticeView" class="noticeWrap" 
						style="display: block;  margin-bottom: 15px;
    border: 1px solid #D5D5D5;
    border-radius: 2px;
    background: #FFF;">
					
						<h2 class="tit" style="
    position: relative;
    height: 43px;
    padding: 0 0 0 20px;
    line-height: 43px;
    background: #FDFDFD;
    border-bottom: 1px solid #E5E5E5;
    border-radius: 4px 4px 0 0;
    font-size: 18px;
    font-weight: 700;
    color: #333;
    text-decoration: none!important;
    margin-top: 0px;
   
">카드 정보</h2>
				
				
				<!--  -->

						
						<div class="codrops-links">

			<form name="myprofile">
				<table style="" class="table table-striped">
					<thead class="tb">
						<tr style="background-color:#D1B2FF;">
							<th style="text-align: center; font-size: 13px;">번호</th>
							<th style="text-align: center; font-size: 13px;">카드아이디</th>
							<th style="text-align: center; font-size: 13px;">카드종류</th>
							<th style="text-align: center; font-size: 13px;">카드번호</th>
							<th style="text-align: center; font-size: 13px;">유효기간</th>
							<th style="text-align: center; font-size: 13px;">개인/법인</th>
							<th style="text-align: center; font-size: 13px;">수정/삭제</th>
						</tr>	
					</thead>
				<tfoot>
					
				</tfoot>
					<tbody style="text-align: center;">
						<c:if test="${empty dto}">
				<tr>
					<td colspan="7"><Font style="font-size: 18px;">등록된 결제정보가 없습니다.</Font></td>
				</tr>
			</c:if>
			<c:forEach var="dto" items="${dto }">
				<tr>
					<td style="font-size: 13px;">${dto.idx }</td>
					<td style="font-size: 13px;">${dto.cardid }</td>
					<td style="font-size: 13px;">${dto.cardtype1 }</td>
					<td style="font-size: 13px;">${dto.cardnum }</td>
					<td style="font-size: 13px;">${dto.cardterm }</td>
					<td style="font-size: 13px;">${dto.cardtype2 }</td>
					<td>
					<a href="cardUpdate.do?idx=${dto.idx}"><button  class="btn btn-default btn-xs" type="button" value="수정">수정</button></a>
					<a href="cardDel.do?idx=${dto.idx}"><button  class="btn btn-default btn-xs" type="button" value="삭제">삭제</button></a>
					</td>
				</tr>
			</c:forEach>
						<tr>
							<td colspan="7" align="right"><a href="userPayAddPage.do"><button class="btn btn-default" type="button" value="등록">등록</button></a></td>
						</tr>
					</tbody>
				</table>

			</form>
				</div>		
						
						
						
						
					
					<!--  -->
					<!-- Related demos -->
					<section class="related">
					
					</section>
				</div>
			</div><!-- /content-wrap -->
		</div><!-- /container -->
		</div>
		</div>
		<script src="js/classie.js"></script>
		<script src="js/main.js"></script>
		

<!-- For the demo ad only -->   


	
			
</body>
</html>