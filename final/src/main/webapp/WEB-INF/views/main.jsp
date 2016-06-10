<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/final02/CSS/main.css" type="text/css">
<link rel="stylesheet" type="text/css" href="/final02/CSS/jquery.fullPage.css">
<script src="/final02/js/jquery.fullPage.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div id="fullpage">
<section class="section" id="section0"  > <!-- 백그라운드 이미지 박혀있음 기본꺼는 -->
	<div id="sec0_back">
	<article id="sec0_content">
	<h1 id="mainTitle">편리한 카풀</h1>
	<p id="sub_title">Pool PARTY, 카풀 서비스</p>
	<div id="third">탈게요
		<br>
		<a href="#"><img src="/final02/img/pMmber.jpg" id="gg"></a>
	
		<img src=""></div>
	
	<div id="third">타세요
		<br>
		<a href="#"><img src="/final02/img/pMaster.jpg" id="gg"></a>
	
		<img src=""></div>
	
	
	
	
	
	<!-- 타세요 탈게요 넣을부분? start-->
	<!-- <form name="main_find"action="find.jsp">
		<input type="text" placeholder="지역명을 입력하세요">
		<input type="submit" value="검색">
	</form> -->
	<!-- 타세요 탈게요 넣을부분 end -->
	</article>
	</div>
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
	<article>
		<h2 id="mainTitle3">사용 방법</h2>
		<div id="third">STEP 1
		<br>
		<img src="/semi/img/t1.png">
	
		<img src=""></div>
		<div id="third">STEP 2
		<br>
		<img src="/semi/img/t2.png">
		
		</div>
		<div id="third">STEP 3
		<br>
		<img src="/semi/img/t3.png">
		
		</div>
		<p id="sub_title3">간단하게 카풀을 찾아 예약하세요!</p>
	</article>
	<%@ include file="footer.jsp" %>
</section>
</div>
</body>
	<script>
		$(document).ready(function() {
			$('#fullpage').fullpage({
				sectionsColor: ['#5A5A5A', '#0172BD', '#58D3F7'],
				scrollBar: true
			});
		});
	</script>
</html>