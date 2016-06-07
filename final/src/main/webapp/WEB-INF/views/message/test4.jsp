<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<link rel='stylesheet prefetch'
	href='https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css'>
<link rel='stylesheet prefetch'
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300'>

<style rel="stylesheet">
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p,
	blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn,
	em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var,
	b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend,
	table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas,
	details, embed, figure, figcaption, footer, header, hgroup, menu, nav,
	output, ruby, section, summary, time, mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline
}

article, aside, details, figcaption, figure, footer, header, hgroup,
	menu, nav, section {
	display: block
}

body {
	line-height: 1
}

ol, ul {
	list-style: none
}

blockquote, q {
	quotes: none
}

blockquote:before, blockquote:after, q:before, q:after {
	content: '';
	content: none
}

table {
	border-collapse: collapse;
	border-spacing: 0
}

body {
	margin-top: 2rem;
	font: 100% "Open sans", "Trebuchet MS", sans-serif;
}

a {
	text-decoration: none;
}

/**
 * Hidden fallback
 */
[hidden] {
	display: none;
	visibility: hidden;
}

/**
 * Styling navigation
 */
header {
	margin-right: auto;
	margin-left: auto;
	max-width: 22.5rem;
	box-shadow: 0 3px 12px rgba(0, 0, 0, 0.25);
}

/**
 * Styling top level items
 */
.nav a, .nav label {
	display: block;
	padding: .85rem;
	color: #fff;
	background-color: #151515;
	box-shadow: inset 0 -1px #1d1d1d;
	-webkit-transition: all .25s ease-in;
	transition: all .25s ease-in;
}

.nav a:focus, .nav a:hover, .nav label:focus, .nav label:hover {
	color: rgba(255, 255, 255, 0.5);
	background: #030303;
}

.nav label {
	cursor: pointer;
}

/**
 * Styling first level lists items
 */
.group-list a, .group-list label {
	padding-left: 2rem;
	background: #252525;
	box-shadow: inset 0 -1px #373737;
}

.group-list a:focus, .group-list a:hover, .group-list label:focus,
	.group-list label:hover {
	background: #131313;
}

/**
 * Styling second level list items
 */
.sub-group-list a, .sub-group-list label {
	padding-left: 4rem;
	background: #353535;
	box-shadow: inset 0 -1px #474747;
}

.sub-group-list a:focus, .sub-group-list a:hover, .sub-group-list label:focus,
	.sub-group-list label:hover {
	background: #232323;
}

/**
 * Styling third level list items
 */
.sub-sub-group-list a, .sub-sub-group-list label {
	padding-left: 6rem;
	background: #454545;
	box-shadow: inset 0 -1px #575757;
}

.sub-sub-group-list a:focus, .sub-sub-group-list a:hover,
	.sub-sub-group-list label:focus, .sub-sub-group-list label:hover {
	background: #333333;
}

/**
 * Hide nested lists
 */
.group-list, .sub-group-list, .sub-sub-group-list {
	height: 100%;
	max-height: 0;
	overflow: hidden;
	-webkit-transition: max-height .5s ease-in-out;
	transition: max-height .5s ease-in-out;
}

.nav__list input[type=checkbox]:checked+label+ul {
	/* reset the height when checkbox is checked */
	max-height: 1000px;
}

/**
 * Rotating chevron icon
 */
label>span {
	float: right;
	-webkit-transition: -webkit-transform .65s ease;
	transition: transform .65s ease;
}

.nav__list input[type=checkbox]:checked+label>span {
	-webkit-transform: rotate(90deg);
	-ms-transform: rotate(90deg);
	transform: rotate(90deg);
}

/**
 * Styling footer
 */
footer {
	padding-top: 1rem;
	padding-bottom: 1rem;
	background-color: #050505;
}

.soc-media {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-pack: center;
	-webkit-justify-content: center;
	-ms-flex-pack: center;
	justify-content: center;
}

.soc-media li:nth-child(n+2) {
	margin-left: 1rem;
}

.soc-media a {
	font-size: 1.25rem;
	color: rgba(255, 255, 255, 0.65);
	-webkit-transition: color .25s ease-in;
	transition: color .25s ease-in;
}

.soc-media a:focus, .soc-media a:hover {
	color: rgba(255, 255, 255, 0.2);
}
</style>
</head>

<body>


	<header role="banner">
		<nav class="nav" role="navigation">
			<ul class="nav__list">

				<li><input id="group-1" type="checkbox" hidden /> <label
					for="group-1"><span class="fa fa-angle-right"></span>
						관리자페이지</label>

					<ul class="group-list">

						<input id="sub-group-1" type="checkbox" hidden />
						<label for="sub-group-1"><span class="fa fa-angle-right"></span>
							회원관리</label>
						<ul class="sub-group-list">
							<li>
							<li><a href="memberInfo.do">-회원정보관리</a></li>
							<li><a href="memberCarInfo.do">-회원차량관리</a></li>
							<li><a href="memberAlarm.do">-회원알림관리</a></li></li>
			</ul>
			<input id="sub-group-2" type="checkbox" hidden /> <label
				for="sub-group-2"><span class="fa fa-angle-right"></span>
				고객센터관리</label>
			<ul class="sub-group-list">
				<li>
				<li><a href="adminNoticeList.do">-공지사항</a></li>
				<li><a href="adminQnaList.do">-Q&A</a></li>
				<li><a href="adminOneAndOne.do">-1:1안내</a></li>
				<li><a href="adminuseguideList.do">-이용안내</a></li>
				</li>
			</ul>
			<input id="sub-group-3" type="checkbox" hidden /> <label
				for="sub-group-3"><span class="fa fa-angle-right"></span>
				카풀게시물관리</label>
			<ul class="sub-group-list">
				<li>
				<li><a href=" driverPoolList.do">-드라이버</a></li>
				<li><a href="userPoolList.do">-사용자</a></li>
				</li>
			</ul>
			<input id="sub-group-4" type="checkbox" hidden /> <label
				for="sub-group-4"><span class="fa fa-angle-right"></span>
				예약및결제관리</label>
			<ul class="sub-group-list">
				<li>
				<li><a href="driverReserveList.do">-드라이버예약관리</a></li>
				<li><a href="memberReserveList.do">-사용자예약관리</a></li>
				<li><a href="payMentList.do">-결제관리</a></li>
				</li>
			</ul>
			<input id="sub-group-5" type="checkbox" hidden /> <label
				for="sub-group-5"><span class="fa fa-angle-right"></span>
				커뮤니티관리</label>
			<ul class="sub-group-list">
				<li><a href="#">-커뮤니티관리</a></li>
				
         </ul>
       
 
     
  </nav>
</header>
</body>
</html>