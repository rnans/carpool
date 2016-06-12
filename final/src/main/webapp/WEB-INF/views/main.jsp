<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="/final02/CSS/poolCommon2.css" />
<link rel="stylesheet" href="/final02/CSS/main.css" type="text/css">
<link rel="stylesheet" type="text/css" href="/final02/CSS/jquery.fullPage.css">
<link href="/final02/CSS/hover.css" rel="stylesheet" media="all">
<script src="/final02/js/jquery.fullPage.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div id="fullpage">
<section class="section" id="section0"> <!-- 백그라운드 이미지 박혀있음 기본꺼는 -->
	<article id="sec0_content" style="background-image: url('http://localhost:9090/final02/img/comm2.jpg') ;">
	<h1 id="mainTitle">편리한 카풀</h1>
	<p id="sub_title">Pool PARTY, 카풀 서비스</p>
	<!-- <div id="third">빨리타
		<br>
		<a href="#"><img src="/final02/img/pMmber.jpg" id="gg"></a>
	
		<img src=""></div>
	
	<div id="third">태워줘
		<br>
		<a href="#"><img src="/final02/img/pMaster.jpg" id="gg"></a>
	
		<img src=""></div> -->
		<div id="third">
			
			<div id="div1" class="col-md-6 select" style="text-align: center;">
				<figure>
                    <img src="/final02/img/pMember.jpg" class="center-block" alt=""/>
                   <a href="poolMemberAdd.do">
                   <figcaption style="background-color: #FF6C6C;">
                      <!-- <h2>탈래요!</h2> -->
                      <p>카풀을 제공하는 운전자를 구해보세요.<br>
                      일반 이용자는 '탈래요' 글을 통해 카풀을 제공하는 운전자를 구하실 수 있습니다.</p>
  
                   </figcaption>
                   </a>
                  </figure>
			</div>
			<div id="div2" class="col-md-6 select center-block" style="text-align: center;">
					<figure>
                    <img src="/final02/img/pMaster.jpg" class="center-block" alt=""/>
                   <a href="poolMasterAdd.do">
                   <figcaption style="background-color: #7ED2FF;">
                      <!-- <h2>타세요!</h2> -->
                      <p>당신의 카풀을 이용할 이용자를 구해보세요.<br>
                      운전자는 '타세요' 글을 통해 카풀을 이용하고자 하는 이용자를 구하실 수 있습니다.</p>
  
                   </figcaption>
                   </a>
                  </figure>
			</div>
			
		</div>

	</article>

</section>
<section class="section" id="section1">
	<article>
		<img class="logo" src="/semi/img/logo.jpg">
		<h2 id="mainTitle2">지옥철, 지옥버스 지긋지긋하시죠?</h2>
		<p id="sub_title2">당신의 소중한 시간을 지켜드립니다.
		<br>즐거운 이동, 저희 카풀파티에서 느껴보세요!</p>
	</article>
</section>
<section class="section" id="section2">
	<article >
		<h2 id="mainTitle3">사용 방법</h2>
		<div id="third">
		<div style="float: left; display: inline-block;width: 33%;">
			STEP 1
			<br>
			<img src="/final02/img/01.png" style="width: 300px;height: 300px;pad">
		
			<img src="">
		</div>
			<div style="float: left;display: inline-block;width: 33%;">
		STEP 2
			<br>
			<img src="/final02/img/02.png" style="width: 300px;height: 300px;">
			<img src="">
	
		</div>
			<div style="float: left;display: inline-block;width: 33%;">
		STEP 3
		<br>
		<img src="/final02/img/03.png" style="width: 300px;height: 300px;">
		<img src="">
	</div><br>
		<div style="width: 100%;display: block;">
		<p id="sub_title3">간단하게 카풀을 찾아 예약하세요!</p>
		</div>
		</div>
	</article>
	<%@ include file="footer.jsp" %>
</section>
</div>
</body>
	<script>
		$(document).ready(function() {
			$('#fullpage').fullpage({
				sectionsColor: ['white', '#0172BD', '#58D3F7'],
				scrollBar: true
			});
		});
	</script>
</html>