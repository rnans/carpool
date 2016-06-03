<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="/final02/CSS/poolCommon.css" />
<link rel="stylesheet" type="text/css" href="/final02/CSS/buttons.css" />
<link rel="stylesheet" type="text/css" href="/final02/CSS/set2.css" />
<link href="/final02/CSS/hover.css" rel="stylesheet" media="all">
<script>
window.onload=function(){

for(var i=0;i<2;i++){	
var div = document.getElementById('div'+i); // 이미지를 감싸는 div
var img = document.getElementById('img'+i) // 이미지
var divAspect = 1 / 2; // div의 가로세로비는 알고 있는 값이다
var imgAspect = img.height / img.width;
 
if (imgAspect <= divAspect) {
    // 이미지가 div보다 납작한 경우 세로를 div에 맞추고 가로는 잘라낸다
    var imgWidthActual = div.offsetHeight / imgAspect;
    var imgWidthToBe = div.offsetHeight / divAspect;
    var marginLeft = -Math.round((imgWidthActual - imgWidthToBe) / 2);
    img.style.cssText = 'width: auto; height: 100%; margin-left: '
                      + marginLeft + 'px;'
} else {
    // 이미지가 div보다 길쭉한 경우 가로를 div에 맞추고 세로를 잘라낸다
    img.style.cssText = 'width: 100%; height: auto; margin-left: 0;';
}
}
}
</script>
</head>
<body>
<%@ include file="../header.jsp" %>
<section id="mainsection">
		<div id="search" class="col-md-12">
			<div class="col-md-12">
				<h1>
					카풀 등록 <small>카풀 유형을 선택해주세요.</small>
				</h1>
			</div>
			<div id="div1" class="col-md-6"
				style="width: 50%; height: 100%; overflow: hidden;">
				<a href="poolMemberAdd.do" style="margin: 25px 25px" class="hvr-back-pulse">탈래요<img id="img1" height="550px" src="/final02/img/poolmember.jpg"></a>
			</div>
			<div id="div2" class="col-md-6"	 style="width: 50%; height: 100%; overflow: hidden;">
				<a href="poolMasterAdd.do" style="margin: 25px 25px" class="hvr-back-pulse">타세요<img id="img2" height="550px" src="/final02/img/driver.jpg"></a>
			</div>
			<br>
		</div>

	</section>
</body>
</html>