<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link rel="stylesheet" type="text/css" href="/final02/CSS/buttons.css" />
       <link rel="stylesheet" href="/final02/bootstrap/css/sb-admin.css">
<link rel="stylesheet" href="/final02/bootstrap/css/font-awesome.min.css">
<link href="/final02/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
    <style>

.navbar-nav {
    float: left;
    margin: 0;
}
.side-nav>li>a {
    color: #9d9d9d;
}
.side-nav>li{
   width: 100%;
}
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
	text-align: center;
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
	
	padding-left:10px;
	border-left: 0;
    text-align: center;
}
table td {
	padding:8px;
	border-top: 1px solid #ffffff;
	border-bottom:1px solid #e0e0e0;
	border-left: 0;
    border-right: 0;
    margin : 0px auto;
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
#sidebar
{
	position: absolute;
	top: -50px;
	
	
} 
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600' rel='stylesheet' type='text/css'>


</style>
<div style="position: fixed;display:block;  height: 100%; ">
<ul id="sidebar" class="nav navbar-nav side-nav"
	style="position: absolute; left: 0px; " >
	<li class="active" ><a href="memberInfo.do"><i
			class="fa fa-fw fa-dashboard"></i> 관리자페이지</a></li>
	<li><a href="javascript:;" data-toggle="collapse"
		data-target="#demo1"><i class="fa fa-fw fa-arrows-v"></i> 회원관리 <i
			class="fa fa-fw fa-caret-down"></i></a>
		<ul id="demo1" class="collapse">

			<li><a href="memberInfo.do">-회원정보관리</a></li>
			<li><a href="memberCarInfo.do">-회원차량관리</a></li>
			<li><a href="memberAlarm.do">-회원알림관리</a></li>
		</ul></li>
	<li><a href="javascript:;" data-toggle="collapse"
		data-target="#demo2"><i class="fa fa-fw fa-arrows-v"></i> 고객센터관리 <i
			class="fa fa-fw fa-caret-down"></i></a>
		<ul id="demo2" class="collapse">

			<li><a href="adminNoticeList.do">-공지사항</a></li>
			<li><a href="adminQnaList.do">-Q&A</a></li>
			<li><a href="adminOneAndOne.do">-1:1문의</a></li>
			<li><a href="adminuseguideList.do">-이용안내</a></li>

		</ul></li>
	<li><a href="javascript:;" data-toggle="collapse"
		data-target="#demo3"><i class="fa fa-fw fa-arrows-v"></i> 카풀게시물관리
			<i class="fa fa-fw fa-caret-down"></i></a>
		<ul id="demo3" class="collapse">
			<li><a href=" driverPoolList.do">-드라이버</a></li>
			<li><a href="userPoolList.do">-사용자</a></li>
		</ul></li>
	<li><a href="javascript:;" data-toggle="collapse"
		data-target="#demo4"><i class="fa fa-fw fa-arrows-v"></i> 예약및결제관리
			<i class="fa fa-fw fa-caret-down"></i></a>
		<ul id="demo4" class="collapse">
			<li><a href="driverReserveList.do">-드라이버예약관리</a></li>
			<li><a href="memberReserveList.do">-사용자예약관리</a></li>
			<li><a href="payMentList.do">-결제관리</a></li>
		</ul></li>
	<li><a href="javascript:;" data-toggle="collapse"
		data-target="#demo5"><i class="fa fa-fw fa-arrows-v"></i> 커뮤니티관리 <i
			class="fa fa-fw fa-caret-down"></i></a>
		<ul id="demo5" class="collapse">
			<li><a href="memberCommList.do">-커뮤니티관리</a></li>
		</ul></li>
</ul>
</div>
<!-- 
	<header role="banner" 	>
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
       
 
     
  </nav> -->

