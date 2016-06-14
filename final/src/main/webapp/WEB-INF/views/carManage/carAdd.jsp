<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
<script>
function addClose(){
	window.location.href = 'carList.do';
}
</script>		
	
<style>
.Mycontainer, 
.content-wrap {
	overflow: hidden;
	width: 100%;
	height: 100%;
	position: relative;
	margin-top: 25px ;
}

.Mycontainer {
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
	position:absolute;
	width:100%;
	height:100%;
	background: #f6f6f6;
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
	text-align:left;
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

.related a img {
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
#my{
	color:white;
}


#box{
    border: 1px solid rgb(200, 200, 200);
    box-shadow: rgba(0, 0, 0, 0.1) 0px 5px 5px 2px;
    background: rgba(200, 200, 200, 0.1);
    border-radius: 4px;
    top:50px;
}

h2{
    text-align:center;
    color:#fff;
}

.image-preview-input, .image-preview-input {
    position: relative;
    overflow: hidden;
    margin: 0px;    
    color: #333;
    background-color: #fff;
    border-color: #ccc;    
}
.image-preview-input input[type=file], .image-preview2-input input[type=file]{
	position: absolute;
	top: 0;
	right: 0;
	margin: 0;
	padding: 0;
	font-size: 20px;
	cursor: pointer;
	opacity: 0;
	filter: alpha(opacity=0);
}
.image-preview-input-title, .image-preview2-input-title {
    margin-left:2px;
}


</style>
<script type="text/javascript" src="js/previewmodule.js"></script>
	<script type="text/javascript">
	function getNameFromPath(strFilepath) {
		var objRE = new RegExp(/([^\/\\]+)$/);
		var strName = objRE.exec(strFilepath);
		if (strName == null) {
			return null;
		} else {
			return strName[0];
		}
	}
</script>
<script>
window.onload=function(){

	document.getElementById("confirm2").style.display = "none";

 }
function confirm2(){

	document.getElementById("confirm2").style.display = "block";

 }
 function black(){
	 
	 document.getElementById("confirm2").style.display = "none";
 }
</script>
<c:if test="${!(empty msg)}">
<script>
var msg='${msg}';

window.alert('${msg}');
</script>
</c:if>
<script>
function car_num_chk(car_num) 
{ 
    var v= car_num; 
    var result = document.getElementById('result'); 
    var carNum=document.getElementById('car');
    
    var pattern1 = /\d{2}[가-힣ㄱ-ㅎㅏ-ㅣ\x20]\d{4}/g; // 12저1234 
    var pattern2 = /[가-힣ㄱ-ㅎㅏ-ㅣ\x20]{2}\d{2}[가-힣ㄱ-ㅎㅏ-ㅣ\x20]\d{4}/g; // 서울12치1233 

    if (!pattern1.test(v)) { 
        if (!pattern2.test(v)) { 
            result.innerText="차량 형식에 맞지 않습니다.";
            var car=document.getElementById("car");
            car.value="";
            var check=document.getElementById("carCheck");
            check.value="false";
            
        } 
        else {  
            result.innerText="차량 형식에 맞습니다.";
            var check=document.getElementById("carCheck");
            check.value="true";
            var num=document.getElementById("carnum");
            num.value=carNum.value;
         
          
        } 
    } 
    else { 
        result.innerText ="차량 형식에 맞습니다."; 
        var check=document.getElementById("carCheck");
        check.value="true";
        var num=document.getElementById("carnum");
        num.value=carNum.value;
  
    } 
    
} 

</script>


	</head>
	<body>
	<%@ include file="../header.jsp" %>
		<div class="Mycontainer">
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
					<a href="myPage.do">프로필</a>
					<a href="affiliationList.do">소속카풀</a>
					<a href="pwdUpdateForm.do">비밀번호변경</a>
					<a href="carList.do">차량관리</a>
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
					
   						<div class="all" style="width: 100%; height: 100%;">
                <div class="row-fluid" style="padding-top:80px; width: 30%; margin-left:auto; margin-right: auto;" >
                     <div class="" id="box" style="height:500px; background-color: #EAEAEA; ">
                      <h2 style="color: #000;">차량 등록</h2>
                            <hr>
                              <form class="form-horizontal" action="carAdd.do" method="post" id="contact_form" enctype="multipart/form-data">
                                    <fieldset>
                                        <!-- Form Name -->
                                        
                                        
            <!-- Text input(이름)-->

               <div class="form-group">

                    <div class="col-md-12">
                        <div class="input-group">
                            <input type="hidden" name="id" value="${sid }" >
                                 <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                    <input name="driver" readonly="readonly" value="${dto.driver }" placeholder="Name" class="form-control" type="text">
                        </div>
                    </div>
                 </div>


                                  
                   <!-- Text input(차번호)-->
             <div class="form-group">
                  <div class="col-md-12">
                       <div class="input-group" style="width: 200px; float: left;">
                            <span class="input-group-addon"><i class="fa fa-list-ol fa-3" aria-hidden="true"></i></span>
                            	<input type="hidden" id="carnum" name="carnum" value="">
                                 <input type="text" value="${dto.carnum}" id="car" maxlength="9" required placeholder="예)12가1234" name="car" class="form-control">
                       <div style="float: none;"><input type="button" value="형식 확인" style="right: 300px;" onclick="car_num_chk(document.getElementById('car').value)"></div>
                 		<div id=result></div> 
                 		</div> 
                  </div>
             </div>

              <!-- Text input(차종)-->

            <div class="form-group">
                 <div class="col-md-12">
                       <div class="input-group">
                               <span class="input-group-addon"><i class="fa fa-car fa-3" aria-hidden="true"></i></span>
                               <input name="cartype" value="${dto.cartype }" placeholder="예)티코" class="form-control" type="text">
                       </div>
                 </div>
            </div>
<br>
			  <div class="input-group image-preview">
                <input type="text" class="form-control image-preview-filename" disabled="disabled"> <!-- don't give a name === doesn't send on POST/GET -->
                <span class="input-group-btn">
                    <!-- image-preview-clear button -->
                    <button type="button" class="btn btn-default image-preview-clear" style="display:none;">
                        <span class="glyphicon glyphicon-remove"></span> 취소
                    </button>
                    <!-- image-preview-input -->
                    <div class="btn btn-default image-preview-input">
                        <span class="glyphicon glyphicon-picture"></span>
                        <span class="image-preview-input-title">차 사진</span>
                        <input type="file" name="upload"/> <!-- rename it -->
                    </div>
                </span>
            </div><!-- /input-group image-preview [TO HERE]--> 		
			
			
			 
		
			<div id="confirm1" style="min-height:50px; margin-top: 10px;margin-bottom: 10px;">
			
				<font style="padding-top:20px; font-size: 13px;"> &nbsp;&nbsp;차량인증을 해야 원활한 서비스를 이용하실 수 있습니다.</font>
				<button type="button" class="uButton uButtonPoint" onclick="confirm2()"
								style="border:0; background: #3cd370; min-width: 70px; line-height: 32px; float:right; right:10px; font-size: 13px; color: #fff">인증하기</button>

			</div>
			<div id="confirm2">
				 <div class="input-group image-preview2">
                <input type="text" class="form-control image-preview2-filename" disabled="disabled"> <!-- don't give a name === doesn't send on POST/GET -->
                <span class="input-group-btn">
                    <!-- image-preview-clear button -->
                    <button type="button" class="btn btn-default image-preview2-clear" style="display:none;">
                        <span class="glyphicon glyphicon-remove"></span> 취소
                    </button>
                    <!-- image-preview-input -->
                    <div class="btn btn-default image-preview2-input">
                        <span class="glyphicon glyphicon-picture"></span>
                        <span class="image-preview2-input-title">인증 사진</span>
                        <input type="file" name="upload2"/> <!-- rename it -->
                       
                        
                    </div>
                </span>
            </div><!-- /input-group image-preview [TO HERE]--> 		

			</div>

            <div class="form-group" style="padding: 10px 10px 10px 10px; text-align: center;">
              
              <div style="width: 200px;height: 100%; margin: 0px auto;">
               	<div style=" margin: 0px auto; text-align: center;">
                    <button type="submit" class="btn btn-warning">등록 <span class="glyphicon glyphicon-send"></span></button>
                    <button type="button"  class="btn btn-warning" onclick="addClose()">취소 <span class="glyphicon glyphicon-remove-sign"></span></button>
              		<input type="hidden" id="carCheck" name="check" value="false">
    			</div>
    			</div>
            </div>
           </fieldset>
        </form>  
     </div> 
</div>  
</div>
<script>
$(document).on('click', '#close-preview', function(){ 
    $('.image-preview').popover('hide');
    // Hover befor close the preview
    $('.image-preview').hover(
        function () {
           $('.image-preview').popover('show');
        }, 
         function () {
           $('.image-preview').popover('hide');
        }
    );    
});


$(function() {
    // Create the close button
    var closebtn = $('<button/>', {
        type:"button",
        text: 'x',
        id: 'close-preview',
        style: 'font-size: initial;',
    });
    closebtn.attr("class","close pull-right");
    // Set the popover default content
    $('.image-preview').popover({
        trigger:'manual',
        html:true,
        title: "<strong>Preview</strong>"+$(closebtn)[0].outerHTML,
        content: "There's no image",
        placement:'bottom'
    });
    // Clear event
    $('.image-preview-clear').click(function(){
        $('.image-preview').attr("data-content","").popover('hide');
        $('.image-preview-filename').val("");
        $('.image-preview-clear').hide();
        $('.image-preview-input input:file').val("");
        $(".image-preview-input-title").text("Browse"); 
    }); 
    // Create the preview image
    $(".image-preview-input input:file").change(function (){     
        var img = $('<img/>', {
            id: 'dynamic',
            width:250,
            height:200
        });      
        var file = this.files[0];
        var reader = new FileReader();
        // Set preview image into the popover data-content
        reader.onload = function (e) {
            $(".image-preview-input-title").text("다른걸로^^");
            $(".image-preview-clear").show();
            $(".image-preview-filename").val(file.name);            
            img.attr('src', e.target.result);
            $(".image-preview").attr("data-content",$(img)[0].outerHTML).popover("show");
        }        
        reader.readAsDataURL(file);
    });  
});

$(document).on('click', '#close-preview2', function(){ 
    $('.image-preview2').popover('hide');
    // Hover befor close the preview
    $('.image-preview2').hover(
        function () {
           $('.image-preview2').popover('show');
        }, 
         function () {
           $('.image-preview2').popover('hide');
        }
    );    
});

$(function() {
    // Create the close button
    var closebtn = $('<button/>', {
        type:"button",
        text: 'x',
        id: 'close-preview2',
        style: 'font-size: initial;',
    });
    closebtn.attr("class","close pull-right");
    // Set the popover default content
    $('.image-preview2').popover({
        trigger:'manual',
        html:true,
        title: "<strong>Preview</strong>"+$(closebtn)[0].outerHTML,
        content: "There's no image",
        placement:'bottom'
    });
    // Clear event
    $('.image-preview2-clear').click(function(){
        $('.image-preview2').attr("data-content","").popover('hide');
        $('.image-preview2-filename').val("");
        $('.image-preview2-clear').hide();
        $('.image-preview2-input input:file').val("");
        $(".image-preview2-input-title").text("Browse"); 
    }); 
    // Create the preview image
    $(".image-preview2-input input:file").change(function (){     
        var img = $('<img/>', {
            id: 'dynamic',
            width:250,
            height:200
        });      
        var file = this.files[0];
        var reader = new FileReader();
        // Set preview image into the popover data-content
        reader.onload = function (e) {
            $(".image-preview2-input-title").text("바꾸기");
            $(".image-preview2-clear").show();
            $(".image-preview2-filename").val(file.name);
            img.attr('src', e.target.result);
            $(".image-preview2").attr("data-content",$(img)[0].outerHTML).popover("show");
        }
        reader.readAsDataURL(file);
    });
});
   </script>   
					
						
				</div>			
					<nav class="codrops-demos">		
					</nav>
				
					<!-- Related demos -->
					<section class="related">
					
					</section>
				</div>
			</div><!-- /content-wrap -->
		</div><!-- /container -->
		<script src="js/classie.js"></script>
		<script src="js/main.js"></script>
		

<!-- For the demo ad only -->   


			
			
</body>
</html>