
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

		<link rel="alternate" hreflang="ko" href="http://band.us/ko">
		
		<link rel="stylesheet" type="text/css" href="http://s.cmstatic.net/webclient/dres/20160602183753/css/bandComponent.css?_=20160602183753">
		<link rel="stylesheet" type="text/css" href="http://s.cmstatic.net/webclient/dres/20160602183753/css/band.css?_=20160602183753">
</head>

<script type="text/javascript" src="js/httpRequest.js"></script>
<script type="text/javascript">
	var idx=null;
	var count=0;

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
<style>
<!-- -->
a, a:focus, a:hover {
    color: #666;
    text-decoration: none;
}
#topBar {
    position: fixed;
    z-index: 1000;
    top: 46px;
    left: 0;
    width: 100%;
    min-width: 1024px;
    height: 52px;
    background: #FFF;
    border-bottom: 1px solid #D6D6D6;
    text-align: center;
}

#topBar .inner {
    position: relative;
    max-width: 1024px;
    margin: 0 auto;
}

#topBar a[data-status=active] {
    color: #11c473;
}
#topBar a[data-icon=search02] {
    padding-left: 50px;
}
#topBar a[data-icon=more-basic] {
    padding-left: 47px;
}
#topBar a+a {
    margin: 0 0 0 80px;
}

#topBar a.appDownload {
    overflow: hidden;
    position: absolute;
    height: 30px;
    top: 10px;
    right: 0;
    padding: 0 10px;
    border: 1px solid #D2D2D2;
    font-size: 13px;
    color: #666;
    letter-spacing: -.05em;
    border-radius: 2px;
    line-height: 30px;
}
#topBar a {
    display: inline-block;
    position: relative;
    height: 52px;
    padding: 12px 22px 0 51px;
    font-size: 15px;
    color: #777;
    line-height: 28px;
}
#topBar a:before {
    position: absolute;
    left: 20px;
    color: #838383;
    font-size: 17px;
    vertical-align: top;
}
#topBar a[data-status=active]:after {
    display: block;
    position: absolute;
    left: 0;
    right: 0;
    bottom: 0;
    height: 3px;
    background: #30C884;
    content: '';
}
#topBar a[data-icon=search02]:before {
    font-size: 20px;
    top: 15px;
}
#topBar a[data-icon=home-on]:before, #topBar a[data-icon=home-off]:before {
    font-size: 21px;
    top: 14px;
}
#topBar a[data-status=active]:before {
    color: #30C884;
}
#topBar a[data-icon=more-basic]:before {
    font-size: 16px;
    top: 17px;
}

#topBar a.appDownload:after {
    margin: 5px 0 0 5px;
    font-size: 18px;
    color: #33CE6D;
    vertical-align: top;
}

<!-- -->
.sMyHomePage>header {
    margin: 0 0 15px;
}
.sMyHomePage>header:after, .sMyHomePage>header:before {
    display: table;
    content: ' ';
}
.sMyHomePage>header>h1 {
    float: left;
    margin: 0 0 0 2px;
    font-size: 15px;
    color: #666;
    line-height: 1;
}
.sMyHomePage>header>h1 em {
    margin-left: 6px;
    color: #30c884;
}
.sMyHomePage>header .sort {
    float: right;
    position: relative;
    top: -3px;
    margin: 0 6px 0 0;
}
.sMyHomePage>header .sort>button {
    position: relative;
    float: left;
    padding-right: 19px;
    text-align: left;
    vertical-align: top;
    font-size: 12px;
}
.lyWrap[data-hide=true] {
    display: none!important;
}
.lyWrap {
    display: table;
    position: fixed;
    table-layout: fixed;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    width: 100%;
    height: 100%;
    z-index: 3000;
}
.sMyHomePage>header .sort .bar {
    display: block;
    float: left;
    position: relative;
    top: 4px;
    width: 1px;
    height: 11px;
    margin: 0 15px;
    background: #DBDBDD;
    vertical-align: top;
}
.sMyHomePage>header .sort>button:before {
    position: absolute;
    right: 0;
    top: 5px;
    color: #888;
    font-size: 11px;
}
.icon-a-uselect-down:after, .icon-uselect-down:before, [data-icon-a=uselect-down]:after, [data-icon=uselect-down]:before {
    content: "\e9b7";
}
[class*=" icon-"]:before, [class*=" icon-a-"]:after, [class^=icon-]:before, [class^=icon-a-]:after, [data-icon-a]:after, [data-icon]:before {
    display: inline-block;
    text-decoration: none;
    font-family: basic_icon!important;
    font-style: normal!important;
    font-weight: 400!important;
    font-variant: normal!important;
    text-transform: none!important;
    text-rendering: auto;
    speak: none;
    line-height: 1;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
}


<!-- -->
.bandList li {
    float: left;
    display: inline-block;
    vertical-align: top;
    font-size: 0;
}
.uCover {
    overflow: hidden;
    position: relative;
    display: inline-block;
    width: 190px;
    font-size: 13px;
    vertical-align: top;
    border: 1px solid #d6d6d8;
    border-radius: 2px;
    border-bottom-width: 2px;
    border-bottom-color: #dddddf;
    background: #fff;
    margin-right: 20px;
}
.uCover .cover {
    position: relative;
    text-align: center;
    font-size: 0;
}
.cover:before {
    content: '';
    display: block;
    position: absolute;
    bottom: 0;
    left: 0;
    width: 100%;
    height: 12px;
    background: url(../images/common/bg_belt.png) repeat-x;
}

.bandList li+li {
    margin: 0 0 22px 18px;
}
.bandName {
    border-bottom: 1px solid #d6d6d8;
    border-radius: 0 0 2px 2px;
    box-shadow: 0 1px 0 #d6d5d8;
}
.bandName .bandWrap {
    display: table-cell;
    width: 100%;
    padding: 0 10px;
    color: #555;
    text-align: center;
    vertical-align: middle;
}
.uriText {
    overflow: hidden;
    display: block;
    display: -webkit-box;
    max-height: 42px;
    font-size: 15px;
    text-overflow: ellipsis;
    line-height: 1.4;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
    word-wrap: break-word;
}

.uCover .bandName {
    display: table;
    table-layout: fixed;
    position: relative;
    left: 0;
    top: 0;
    width: 100%;
    height: 64px;
    color: #383838;
    box-shadow: 0 1px 0 #d6d6d8;
}
.uCover[data-type=type4], .uCover[data-type=type5], .uCover[data-type=type6] {
    border: 3px dotted #BEBFC2;
    background: 0 0;
}

.uCover .cover .coverImg {
    width: 100%;
    border-radius: 1px 1px 0 0;
}

.uCover[data-type=type4] .cover .iconImg:before, .uCover[data-type=type5] .cover .iconImg:before, .uCover[data-type=type6] .cover .iconImg:before {
    display: inline-block;
    width: 98px;
    height: 98px;
    line-height: 98px;
    border-radius: 50%;
    font-size: 40px;
    color: #a2a4a7;
    background: rgba(162,164,167,.1);
}
.icon-a-make:after, .icon-make:before, [data-icon-a=make]:after, [data-icon=make]:before {
    content: "\e96c";
}
[class*=" icon-"]:before, [class*=" icon-a-"]:after, [class^=icon-]:before, [class^=icon-a-]:after, [data-icon-a]:after, [data-icon]:before {
    display: inline-block;
    text-decoration: none;
    font-family: basic_icon!important;
    font-style: normal!important;
    font-weight: 400!important;
    font-variant: normal!important;
    text-transform: none!important;
    text-rendering: auto;
    speak: none;
    line-height: 1;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
}
.uCover[data-type=type4] .bandName .bandWrap, .uCover[data-type=type5] .bandName .bandWrap, .uCover[data-type=type6] .bandName .bandWrap {
    padding-top: 17px;
    vertical-align: top;
}
  
</style>
<body  style="background-color: #F6F6F6;">
	<%@include file="../header.jsp"%>

<!--  -->
	<div id="topBar" data-uiselector="gnbMenu">
		<div class="inner">
			<a href="#" data-uiselector="btnMyBands" data-icon="home-on"
				data-status="active" style="text-decoration: none;">파티 홈</a> <a href="#" style="text-decoration: none;"
				data-uiselector="btnDiscover" data-icon="search02">파티 찾기</a> <a
				href="#" data-uiselector="btnMore" data-icon="more-basic" style="text-decoration: none;">더보기</a>
			<a href="#" data-icon-a="download2"
				class="appDownload" style="text-decoration: none;">모바일 버전 다운로드</a>
		</div>
	</div>
	<br><br><br><br>
	<!--  -->
	
	<section class="sMyHomePage" style="width: 70%;margin: 0px auto;">
		<header style="margin-top: 50px;padding-bottom: 15px;">
			<h1>
				내 파티<em class="count" id="count" style="color: #FF1291">0</em> 
			</h1>
			<div class="sort">
				<button type="button" data-icon="uselect-down"
					data-uiselector="btnBandOrder">파티 순서</button>
				<section class="lyWrap" data-hide="true"
					data-uiselector="regionBandOrderLayer"></section>
				<span class="bar"></span>
				<button type="button" data-icon="uselect-down"
					data-uiselector="btnHiddenBand">파티 관리</button>
				<section class="lyWrap" data-hide="true"
					data-uiselector="regionHiddenBandLayer"></section>
			</div>
		</header>
		<div data-uiselector="regionBandList">
			<ul data-viewname="DBandCollectionView" class="bandList">
				
		
					<c:if test="${not empty poollist[0] }">
					<script>
					count=count+1;
					document.getElementById("count").innerText=count;
					</script>
					<li data-viewname="DBandCollectionItemView" data-skin="skin5"><div
						class="uCover " data-type="type2">
						<a href="comm.do?poolname=${poollist[0].poolname }" class="bandUri" style="text-decoration: none;"><div class="cover"
								data-skinfactor="beforeBg">
								<img class="coverImg"
									src="http://coresos.phinf.naver.net/a/2gegeb_c/18aUd015f6anox25rtzm_5ksoqj.jpg?type=cover_a264"
									alt="">
							</div>
							<div class="bandName">
								<div class="bandWrap">
									<span class="uriText">${poollist[0].poolname }</span>
								</div>
							</div>
						</a>
						</div>
					</li>
				 </c:if>	
				<c:if test="${not empty poollist[1] }">	
				<script>
					count=count+1;
					document.getElementById("count").innerText=count;
				</script>
					<li data-viewname="DBandCollectionItemView" data-skin="skin4"><div
						class="uCover " data-type="type2">
						<a href="comm.do?poolname=${poollist[1].poolname }&color=2" class="bandUri" style="text-decoration: none;"><div class="cover"
								data-skinfactor="beforeBg">
								<img class="coverImg"
									src="http://coresos.phinf.naver.net/a/2gegeb_c/18aUd015f6anox25rtzm_5ksoqj.jpg?type=cover_a264"
									alt="">
							</div>
							<div class="bandName">
								<div class="bandWrap">
									<span class="uriText">${poollist[1].poolname }</span>
								</div>
							</div>
						</a>
						</div>
					</li>
				</c:if>
				
				<c:if test="${not empty poollist[2] }">	
				<script>
					count=count+1;
					document.getElementById("count").innerText=count;
				</script>
				
					<li data-viewname="DBandCollectionItemView" data-skin="skin3"><div
						class="uCover " data-type="type2" style="margin-right: 0px;">
						<a href="comm.do?poolname=${poollist[2].poolname }&color=3" class="bandUri" style="text-decoration: none;"><div class="cover"
								data-skinfactor="beforeBg">
								<img class="coverImg"
									src="http://coresos.phinf.naver.net/a/2gegeb_c/18aUd015f6anox25rtzm_5ksoqj.jpg?type=cover_a264"
									alt="">
							</div>
							<div class="bandName">
								<div class="bandWrap">
									<span class="uriText">${poollist[2].poolname }</span>
								</div>
							</div>
						</a>
						</div>
					</li>
				</c:if>
				
				<li data-viewname="DBandCollectionItemView"><div class="uCover"
						data-type="type4">
						<a href="#" class="bandUri" style="text-decoration: none;"><div class="cover">
								<img class="coverImg"
									src="http://s.cmstatic.net/webclient/dres/20160602183753/images/template/empty_cover_img.png"
									alt="">
								<div class="iconImg" data-icon="make"></div>
							</div>
							<div class="bandName">
								<div class="bandWrap">
									<span class="uriText">파티만들기</span>
								</div>
							</div></a>
					</div></li>
			</ul>
		</div>
	</section>

</body>
</html>