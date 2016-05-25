<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
#lnb {
    z-index: 1900;
    width: 100%;
    min-width: 1024px;
    height: 36px;
    left: 0;
    top: 46px;
    background: pink;
    text-align: center;
}
#lnb ul {
    overflow: hidden;
    display: inline-block;
    height: 100%;
}

button, dd, dl, dt, fieldset, ol, p, ul {
    margin: 0;
    padding: 0;
   
}
#lnb li {
    float: left;
    position: relative;
    min-width: 112px;
    text-align: center;
    list-style: none;
}
#lnb a, #daytd a {
    display: block;
    width: 100%;
    height: 100%;
    padding: 0 5px;
    line-height: 36px;
    font-size: 14px;
}

A:link {color: #1f3174; text-decoration: none}
A:active {color: #1f3174; text-decoration: none}
A:visited {color: #1f3174; text-decoration: none}
A:hover {color: #3366cc; text-decoration: underline}


.uSectionTitle {
    font-size: 16px;
    line-height: 16px;
    color: #222;
    padding-bottom: 15px;
    text-align: left;
}
.uSectionTitle .count {
    margin-left: 5px;
    vertical-align: top;
    font-size: 16px;
    color: pink;
}

.uSectionTitle+.titleAreaBtn {
    position: absolute;
    right: 0;
    top: -7px;
    height: 30px;
    padding: 0 10px;
    border: 1px solid;
    border-radius: 2px;
    line-height: 28px;
    text-align: right;	
}

.memberSection .uInputSearch {
    margin-bottom: 12px;
}
.uInputSearch {
    position: relative;
    display: inline-block;
    width: 90%;
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
    color: #FFF;
    background: #3BD370;
    width: 45px;
    height: 36px;
    top: -1px;
    right: -1px;
    border-radius: 0 2px 2px 0;
    text-align: center;
    color: #666;
    line-height: 34px;
    font-size: 14px;
}
.memberSection .subTitle {
    height: 30px;
    margin-bottom: -1px;
    line-height: 28px;
    text-indent: 22px;
    border: 1px solid #E5E5E5;
    border-left-color: #D5D5D5;
    border-right-color: #D5D5D5;
    border-bottom-color: #eee;
    background: #FDFDFD;
    color: #333;
}

.memberSection .cThumbList {
    /* margin-bottom: -1px; */
    border: 1px solid #D5D5D5;
}

.cThumbList li {
    display: table;
    table-layout: fixed;
    width: 100%;
    height: 93px;
}
.cThumbList .profile {
    position: relative;
    width: 102px;
    font-size: 0;
    text-align: center;
}
.cThumbList .nameArea, .cThumbList .profile, .cThumbList .side {
    display: table-cell;
    vertical-align: middle;
}
.cThumbList .nameArea .name:first-child {
    display: inline-block;
    margin-right: 6px;
}
.cThumbList .nameArea .name {
    font-size: 14px;
    color: #333;
    display: block;
    overflow: hidden;
    max-width: 100%;
    white-space: nowrap;
    word-break: normal;
    word-wrap: normal;
    text-overflow: ellipsis;
}
.cThumbList .nameArea .labelAuth {
    display: inline-block;
    overflow: hidden;
    height: 17px;
    padding: 0 10px;
    line-height: 16px;
    color: #fff;
    background: #ccc;
    border-radius: 18px;
    vertical-align: top;
}
.cThumbList .nameArea .subtxt {
    display: block;
    font-size: 13px;
    color: #aaa;
}
.cThumbList .side {
    width: 120px;
    text-align: right;
}

.cThumbList .side .setting {
    width: 20px;
    height: 20px;
    font-size: 20px;
    color: #ccc;
}
.icon-a-setting02:after, .icon-setting02:before, [data-icon-a=setting02]:after, [data-icon=setting02]:before {
    content: "\e996";
}

</style>
<body>
<%@include file="../header.jsp"%>
<hr>
<div id="lnb" data-skin="skin5">
	<ul class="_joinedLnb"> 
	<li><span><a href="comm.do" class="_fullArticleLnbBtn _eachLnbMenu">전체글</a></span></li>
	<li><a href="calendar.do" class="_calendarLnbBtn _eachLnbMenu _unclickableMenu on">일정</a></li>
	<li><a href="commMember.do" data-skinfactor="tBorder color" class="_memberLnbBtn _eachLnbMenu _unclickableMenu">멤버</a></li>
	</ul> 
</div>

<section data-viewname="DBandMemberLayoutView" class="memberSection">
<div class="memberDiv">
<h1 class="uSectionTitle">멤버<em class="count">1</em>
<span style=" width: auto; height: 40px; text-align: center; color: #666; font-size: 14px; float: right;" ><button type="button" class="titleAreaBtn"> 멤버 초대하기</button></span></h1>

<div data-uiselector="memberSearchWrap">
	<div data-viewname="DMemberSearchView">
	<form data-uiselector="searchForm">	
	<div class="uInputSearch" data-bordercolor="ddd"> 
	<input data-uiselector="txtSearch" type="text" id="input_search" placeholder="멤버 검색"> 
	<button data-uiselector="searchBtn" type="button" data-icon="search">
	<span class="gSrOnly">검색</span>
	</button>
	</div>
	</form></div>
</div>

<div class="memberWrap">

<div data-uiselector="memberListWrap">
	<div data-viewname="DMemberListView">
	
	<div class="subTitle"> <strong>멤버</strong></div> 
	<ul class="cThumbList" data-uiselector="memberList" data-type="type3"> 
	<li data-user_no="26077250" data-user_name="남구문"><div class="profile">
	<a href="#"><img data-uiselector="profileImg" src="http://s.cmstatic.net/webclient/dres/20160524170024/images/template/profile_60x60.gif" alt="남구문"></a>
	</div>
	
	<div class="nameArea"> 
	<strong class="name">남구문</strong>   
	<span class="labelAuth">리더</span>    
	<span class="subtxt">010-4712-5977</span> </div>
	<div class="side"> 
	<button data-uiselector="btnSetting" type="button" class="setting" data-icon="setting02">
	<span class="gSrOnly">설정</span></button></div>
	</li>    
	</ul>    
	</div>
</div>
</div>
</div> 

</section>



</body>
</html>