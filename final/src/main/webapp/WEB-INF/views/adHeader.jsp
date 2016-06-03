<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link rel="stylesheet" type="text/css" href="/final02/CSS/buttons.css" />
    <style>
table a:link {
	color: #666;
	font-weight: bold;
	text-decoration:none;
}
table a:visited {
	color: #999999;
	font-weight:bold;
	text-decoration:none;
}
table a:active,
table a:hover {
	color: #bd5a35;
	text-decoration:underline;
}
table {
	width:1000px;
	height:400px;
	font-family:Arial, Helvetica, sans-serif;
	color:#666;
	font-size:12px;
	text-shadow: 1px 1px 0px #fff;
	background:#eaebec;
	margin:20px;
	border:#ccc 0px solid;
	-moz-border-radius:3px;
	-webkit-border-radius:3px;
	border-radius:3px;
    text-align: center;
	-moz-box-shadow: 0 1px 2px #d1d1d1;
	-webkit-box-shadow: 0 1px 2px #d1d1d1;
	box-shadow: 0 1px 2px #d1d1d1;
}
table th {
	padding:21px 25px 22px 25px;
	border-top:0px solid #fafafa;
	border-bottom:0px solid #e0e0e0;
    border-left:0;
    border-right:0;
    text-align: center;
	background: #ededed;
	background: -webkit-gradient(linear, left top, left bottom, from(#ededed), to(#ebebeb));
	background: -moz-linear-gradient(top,  #ededed,  #ebebeb);
}
table th:first-child {
	text-align: left;
	padding-left:20px;
}
table tr:first-child th:first-child {
	-moz-border-radius-topleft:3px;
	-webkit-border-top-left-radius:3px;
	border-top-left-radius:3px;
}
table tr:first-child th:last-child {
	-moz-border-radius-topright:3px;
	-webkit-border-top-right-radius:3px;
	border-top-right-radius:3px;
}
table tr {
	text-align: center;
	padding-left:20px;
}
table td:first-child {
	
	padding-left:20px;
	border-left: 0;
}
table td {
	padding:10px;
	border-top: 1px solid #ffffff;
	border-bottom:1px solid #e0e0e0;
	border-left: 0;
    border-right: 0;
    text-align: center;
	background: #fafafa;
	background: -webkit-gradient(linear, left top, left bottom, from(#fbfbfb), to(#fafafa));
	background: -moz-linear-gradient(top,  #fbfbfb,  #fafafa);
}
table td.second {
  text-align:right;
	padding:18px;
	border-top: 1px solid #ffffff;
	border-bottom:1px solid #e0e0e0;
	border-left: 1px solid #e0e0e0;

	background: #fafafa;
	background: -webkit-gradient(linear, left top, left bottom, from(#fbfbfb), to(#fafafa));
	background: -moz-linear-gradient(top,  #fbfbfb,  #fafafa);
}
table tr.even td {
	background: #f6f6f6;
	background: -webkit-gradient(linear, left top, left bottom, from(#f8f8f8), to(#f6f6f6));
	background: -moz-linear-gradient(top,  #f8f8f8,  #f6f6f6);
	text-align: center;
}
table tr:last-child td {
	border-bottom:0;
}
table tr:last-child td:first-child {
	-moz-border-radius-bottomleft:3px;
	-webkit-border-bottom-left-radius:3px;
	border-bottom-left-radius:3px;
}
table tr:last-child td:last-child {
	-moz-border-radius-bottomright:3px;
	-webkit-border-bottom-right-radius:3px;
	border-bottom-right-radius:3px;
}
table tr:hover td {
	background: #f2f2f2;
	background: -webkit-gradient(linear, left top, left bottom, from(#f2f2f2), to(#f0f0f0));
	background: -moz-linear-gradient(top,  #f2f2f2,  #f0f0f0);	
}
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600' rel='stylesheet' type='text/css'>
</style>

<header>
	<hr>
	<div>회원관리
		<div><a href="memberInfo.do">-회원정보관리</a></div>
		<div><a href="memberCarInfo.do">-회원차량관리</a></div>
		<div><a href="memberAlarm.do">-회원알림설정관리</a></div>
	</div>
	<div>고객센터관리
		<div><a href="adminNoticeList.do">-공지사항</a></div>
		<div><a href="adminQnaList.do">-Q&A</a></div>
		<div><a href="adminOneAndOne.do">-1:1문의</a></div>
		<div><a href="adminuseguideList.do">-이용안내</a></div>
	</div>
	<div>카풀게시물관리
		<div><a href="driverPoolList.do">-드라이버</a></div>
		<div><a href="userPoolList.do">-사용자</a></div>
	</div>
	<div>예약및결제관리
		<div><a href="allReserveList.do">-예약관리</a></div>
		<div>&nbsp;&nbsp;&nbsp;<a href="allReserveList.do">-진행중인예약</a></div>
		<div>&nbsp;&nbsp;&nbsp;<a href="driverReserveList.do">-드라이버예약</a></div>
		<div>&nbsp;&nbsp;&nbsp;<a href="memberReserveList.do">-사용자예약</a></div>
		<div><a href="payMentList.do">-결제관리</a></div>
	</div>
	<div>차계부관리</div>
	<div>커뮤니티관리</div>
	<hr>
</header>