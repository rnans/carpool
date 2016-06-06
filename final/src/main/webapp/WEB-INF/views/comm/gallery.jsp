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

<body  style="background-color: #F6F6F6;">
	<%@include file="../header.jsp"%>
	<style>
@import url(https://fonts.googleapis.com/css?family=Quicksand:400,300);
body{
    font-family: 'Quicksand', sans-serif;
}
.gal-container{
	padding: 12px;
}
.gal-item{
	overflow: hidden;
	padding: 3px;
}
.gal-item .box{
	height: 350px;
	overflow: hidden;
}
.box img{
	height: 100%;
	width: 100%;
	object-fit:cover;
	-o-object-fit:cover;
}
.gal-item a:focus{
	outline: none;
}
.gal-item a:after{
	content:"\e003";
	font-family: 'Glyphicons Halflings';
	opacity: 0;
	background-color: rgba(0, 0, 0, 0.75);
	position: absolute;
	right: 3px;
	left: 3px;
	top: 3px;
	bottom: 3px;
	text-align: center;
    line-height: 350px;
    font-size: 30px;
    color: #fff;
    -webkit-transition: all 0.5s ease-in-out 0s;
    -moz-transition: all 0.5s ease-in-out 0s;
    transition: all 0.5s ease-in-out 0s;
}
.gal-item a:hover:after{
	opacity: 1;
}
.modal-open .gal-container .modal{
	background-color: rgba(0,0,0,0.4);
}
.modal-open .gal-item .modal-body{
	padding: 0px;
}
.modal-open .gal-item button.close{
    position: absolute;
    width: 25px;
    height: 25px;
    background-color: #000;
    opacity: 1;
    color: #fff;
    z-index: 999;
    right: -12px;
    top: -12px;
    border-radius: 50%;
    font-size: 15px;
    border: 2px solid #fff;
    line-height: 25px;
    -webkit-box-shadow: 0 0 1px 1px rgba(0,0,0,0.35);
	box-shadow: 0 0 1px 1px rgba(0,0,0,0.35);
}
.modal-open .gal-item button.close:focus{
	outline: none;
}
.modal-open .gal-item button.close span{
	position: absolute;
	top: -3px;
	font-weight: lighter;
	text-shadow:none;
}
.gal-container .modal-dialogue{
	width: 80%;
}
.gal-container .description{
	position: relative;
	height: 40px;
	top: -40px;
	padding: 10px 25px;
	background-color: rgba(0,0,0,0.5);
	color: #fff;
	text-align: left;
}
.gal-container .description h4{
	margin:0px;
	font-size: 15px;
	font-weight: 300;
	line-height: 20px;
}
.gal-container .modal.fade .modal-dialog {
    -webkit-transform: scale(0.1);
    -moz-transform: scale(0.1);
    -ms-transform: scale(0.1);
    transform: scale(0.1);
    top: 100px;
    opacity: 0;
    -webkit-transition: all 0.3s;
    -moz-transition: all 0.3s;
    transition: all 0.3s;
}

.gal-container .modal.fade.in .modal-dialog {
    -webkit-transform: scale(1);
    -moz-transform: scale(1);
    -ms-transform: scale(1);
    transform: scale(1);
    -webkit-transform: translate3d(0, -100px, 0);
    transform: translate3d(0, -100px, 0);
    opacity: 1;
}
@media (min-width: 480px) {
.gal-container .modal-dialog {
    width: 55%;
    margin: 50 auto;
}
}
@media (max-width: 480px) {
    .gal-container .modal-content{
        height:250px;
    }
}
/* Footer Style */
i.red{
    color:#BC0213;
}
.gal-container{
    padding-top :75px;
    padding-bottom:75px;
}
footer{
    font-family: 'Quicksand', sans-serif;
}
footer a,footer a:hover{
    color: #88C425;
}
[data-skin=skin5] [data-skinFactor~=tBorder], [data-skin=skin5] [data-skinFactor~=border], [data-skin=skin5] [data-skinFactor~=beforeBorder]:before, [data-skin=skin5] [data-skinFactor~=afterBorder]:after {
    border-color: #3cd370!important;
}
[data-skin=skin5] [data-skinFactor~=color], [data-skin=skin5] [data-skinFactor~=beforeColor]:before, [data-skin=skin5] [data-skinFactor~=afterColor]:after, [data-skin=skin5] [data-skinFactor~=bColor], [data-skin=skin5] [data-skinFactor~=bBeforeColor]:before, [data-skin=skin5] [data-skinFactor~=bAfterColor]:after {
    color: #3cd370!important;
}
</style>

</style>
	
	
	<div id="lnb" data-skin="skin5">
		<div data-viewname="DLnbMenuView">
			<ul class="_joinedLnb">
				<li><a href="comm.do" data-skinfactor="tBorder color"
					class="_calendarLnbBtn _eachLnbMenu _unclickableMenu">전체글</a></li>
				<li><a href="commMain.do"
					data-skinfactor="tBorder color"
					class="_fullArticleLnbBtn _eachLnbMenu on">사진첩</a></li>
				<li><a href="calendar.do"
					data-skinfactor="tBorder color"
					class="_calendarLnbBtn _eachLnbMenu _unclickableMenu">일정</a></li>
				<li><a href="commMember.do"
					data-skinfactor="tBorder color"
					class="_memberLnbBtn _eachLnbMenu _unclickableMenu">멤버</a></li>
			</ul>
		</div>
	</div>

<div class="container" style="width:50%;margin-top: 80px;">

<h1 class="uSectionTitle" style="vertical-align:  middle;"><span style="vertical-align: middle;"><font style="position:relative; margin-top: 15px;">사진</font></span><em class="count">16</em>
<span style=" width: auto; height: 40px; text-align: center; color: #666; font-size: 14px; float: right;" >

<button type="button" class="uButton uButtonPoint btn-hover" 
	style="background:none ; color: #86E57F; border:1px solid #86E57F;min-width: 70px; line-height: 28px; margin: 0 3px; font-size: 14px;font-weight:bold ; padding-left: 5px; padding-right: 5px;">
	사진 올리기
</button></span></h1>

<section>
  <div class="container gal-container" style="padding-top: 0px;padding-left: 0px;padding-right: 0px;">
    <div class="col-md-8 col-sm-12 co-xs-12 gal-item">
      <div class="box">
        <a href="#" data-toggle="modal" data-target="#1">
          <img src="http://placemi.com/i3xhd/1000x750">
        </a>
        <div class="modal fade" id="1" tabindex="-1" role="dialog">
          <div class="modal-dialog" role="document" style="position: absolute; right:100px; ">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
              <div class="modal-body">
                <img src="http://placemi.com/i3xhd/1000x750">
              </div>
                <div class="col-md-12 description">
                  <h4>This is the first one on my Gallery</h4>
                </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
      <div class="box">
        <a href="#" data-toggle="modal" data-target="#2">
          <img src="http://placemi.com/gut3z/1000x750">
        </a>
        <div class="modal fade" id="2" tabindex="-1" role="dialog">
          <div class="modal-dialog" role="document"  style="position: absolute; left:0px; ">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
              <div class="modal-body">
                <img src="http://placemi.com/gut3z/1000x750">
              </div>
                <div class="col-md-12 description">
                  <h4>This is the second one on my Gallery</h4>
                </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
      <div class="box">
        <a href="#" data-toggle="modal" data-target="#3">
          <img src="http://placemi.com/yggpo/1000x750">
        </a>
        <div class="modal fade" id="3" tabindex="-1" role="dialog">
          <div class="modal-dialog" role="document" style="position: absolute; right:100px;">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
              <div class="modal-body">
                <img src="http://placemi.com/yggpo/1000x750">
              </div>
                <div class="col-md-12 description">
                  <h4>This is the third one on my Gallery</h4>
                </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
      <div class="box">
        <a href="#" data-toggle="modal" data-target="#4">
          <img src="http://placemi.com/49zqo/1000x750">
        </a>
        <div class="modal fade" id="4" tabindex="-1" role="dialog">
          <div class="modal-dialog" role="document"  style="position: absolute; left:0px; ">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
              <div class="modal-body">
                <img src="http://placemi.com/49zqo/1000x750">
              </div>
                <div class="col-md-12 description">
                  <h4>This is the fourth one on my Gallery</h4>
                </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
      <div class="box">
        <a href="#" data-toggle="modal" data-target="#5">
          <img src="http://placemi.com/k2mjk/1000x750">
        </a>
        <div class="modal fade" id="5" tabindex="-1" role="dialog">
          <div class="modal-dialog"  role="document"  style="position: absolute; left:0px; ">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
              <div class="modal-body">
                <img src="http://placemi.com/k2mjk/1000x750">
              </div>
                <div class="col-md-12 description">
                  <h4>This is the fifth one on my Gallery</h4>
                </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
      <div class="box">
        <a href="#" data-toggle="modal" data-target="#6">
          <img src="http://placemi.com/lv0ga/1000x750">
        </a>
        <div class="modal fade" id="6" tabindex="-1" role="dialog">
          <div class="modal-dialog" role="document"  style="left:0px;">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
              <div class="modal-body">
                <img src="http://placemi.com/lv0ga/1000x750">
              </div>
                <div class="col-md-12 description">
                  <h4>This is the sixth one on my Gallery</h4>
                </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
      <div class="box">
        <a href="#" data-toggle="modal" data-target="#7">
          <img src="http://placemi.com/3rezh/1000x750">
        </a>
        <div class="modal fade" id="7" tabindex="-1" role="dialog">
          <div class="modal-dialog" role="document"  style="left:0px;">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
              <div class="modal-body">
                <img src="http://placemi.com/3rezh/1000x750">
              </div>
                <div class="col-md-12 description">
                  <h4>This is the seventh one on my Gallery</h4>
                </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
      <div class="box">
        <a href="#" data-toggle="modal" data-target="#8">
          <img src="http://placemi.com/nfjhz/1000x750">
        </a>
        <div class="modal fade" id="8" tabindex="-1" role="dialog">
          <div class="modal-dialog" role="document"  style="left:0px;">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
              <div class="modal-body">
                <img src="http://placemi.com/nfjhz/1000x750">
              </div>
                <div class="col-md-12 description">
                  <h4>This is the eighth one on my Gallery</h4>
                </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
      <div class="box">
        <a href="#" data-toggle="modal" data-target="#9">
          <img src="http://placemi.com/59h1p/1000x750">
        </a>
        <div class="modal fade" id="9" tabindex="-1" role="dialog">
          <div class="modal-dialog" role="document"  style="left:0px;">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
              <div class="modal-body">
                <img src="http://placemi.com/59h1p/1000x750">
              </div>
                <div class="col-md-12 description">
                  <h4>This is the ninth one on my Gallery</h4>
                </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-8 col-sm-12 co-xs-12 gal-item">
      <div class="box">
        <a href="#" data-toggle="modal" data-target="#10">
          <img src="http://placemi.com/lybbn/1000x750">
        </a>
        <div class="modal fade" id="10" tabindex="-1" role="dialog">
          <div class="modal-dialog" role="document"  style="left:0px;">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
              <div class="modal-body">
                <img src="http://placemi.com/lybbn/1000x750">
              </div>
                <div class="col-md-12 description">
                  <h4>This is the tenth one on my Gallery</h4>
                </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
      <div class="box">
        <a href="#" data-toggle="modal" data-target="#11">
          <img src="http://placemi.com/vnatq/1000x750">
        </a>
        <div class="modal fade" id="11" tabindex="-1" role="dialog">
          <div class="modal-dialog" role="document"  style="left:0px;">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
              <div class="modal-body">
                <img src="http://placemi.com/vnatq/1000x750">
              </div>
                <div class="col-md-12 description">
                  <h4>This is the leventh one on my Gallery</h4>
                </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
      <div class="box">
        <a href="#" data-toggle="modal" data-target="#12">
          <img src="http://placemi.com/wbjov/1000x750">
        </a>
        <div class="modal fade" id="12" tabindex="-1" role="dialog">
          <div class="modal-dialog" role="document"  style="left:0px;">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
              <div class="modal-body">
                <img src="http://placemi.com/wbjov/1000x750">
              </div>
                <div class="col-md-12 description">
                  <h4>This is the 12th one on my Gallery</h4>
                </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
      <div class="box">
        <a href="#" data-toggle="modal" data-target="#13">
          <img src="http://placemi.com/ts4a8/1000x750">
        </a>
        <div class="modal fade" id="13" tabindex="-1" role="dialog">
          <div class="modal-dialog" role="document"  style="left:0px;">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
              <div class="modal-body">
                <img src="http://placemi.com/ts4a8/1000x750">
              </div>
                <div class="col-md-12 description">
                  <h4>This is the 13th one on my Gallery</h4>
                </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
      <div class="box">
        <a href="#" data-toggle="modal" data-target="#14">
          <img src="http://placemi.com/i8yd4/1000x750">
        </a>
        <div class="modal fade" id="14" tabindex="-1" role="dialog">
          <div class="modal-dialog" role="document"  style="left:0px;">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
              <div class="modal-body">
                <img src="http://placemi.com/i8yd4/1000x750">
              </div>
                <div class="col-md-12 description">
                  <h4>This is the 14th one on my Gallery</h4>
                </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
      <div class="box">
        <a href="#" data-toggle="modal" data-target="#15">
          <img src="http://placemi.com/ak6mk/1000x750">
        </a>
        <div class="modal fade" id="15" tabindex="-1" role="dialog">
          <div class="modal-dialog" role="document"  style="left:0px;">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
              <div class="modal-body">
                <img src="http://placemi.com/ak6mk/1000x750">
              </div>
                <div class="col-md-12 description">
                  <h4>This is the 15th one on my Gallery</h4>
                </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
      <div class="box">
        <a href="#" data-toggle="modal" data-target="#16">
          <img src="http://placemi.com/pgco7/1000x750">
        </a>
        <div class="modal fade" id="16" tabindex="-1" role="dialog">
          <div class="modal-dialog" role="document"  style="left:0px;">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
              <div class="modal-body">
                <img src="http://placemi.com/pgco7/1000x750">
              </div>
                <div class="col-md-12 description">
                </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</div>
</body>
</html>