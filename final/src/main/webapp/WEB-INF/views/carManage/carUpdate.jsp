<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/previewmodule.js"></script>
<link href="./bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="./bootstrap/css/font-awesome.min.css">
<script type="text/javascript" src="/final02/js/httpRequest.js"></script>
<script>
function addClose(){
	window.location.href = 'carList.do';
}
</script>
<style>
body{
    background-color: gray;
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
</style>
<script type="text/javascript" src="js/previewmodule.js"></script>
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

</head>
<body>
<%@include file="../header.jsp"%>
<fieldset>
<legend>차량수정</legend>
<form  name="carUpdate" action="carUpdate.do" method="post" enctype="multipart/form-data">
<div>
<input type="hidden" name="idx" value="${idxList.idx }">
드라이버:<input type="text" name=driver value="${idxList.driver }" readonly="readonly">
<br>
<br>
<input type="hidden" name="fcarnum" value="${idxList.carnum }">
차 번호:<input type="text" name="carnum" value="${idxList.carnum }" id="car" maxlength="9" required placeholder="공백없이" readonly="readonly"> 
				<br> 
				차종:<input type="text" name="cartype" value="${idxList.cartype }">
			</div>
			<h3>차량 사진</h3>
			
			<div id="getImage"><div id="fImage"><img style="width:200px; height:200px;" src="http://localhost:8080/final02/img/${idxList.carphoto}"></div>
			</div>
			<input type="hidden" name="carphoto" value="${idxList.carphoto}">
			<div>
				<input name="upload" type="file" size="50" onchange="previewImage(this,'getImage',200,200);"> 
					<br>
			</div>
			<!-- <img src='이미지 경로명' width="100" height="100"/>
<br>
<input type="file"> -->
			<div id="confirm1">
			<br>
				차량인증을 해야 원활한 서비스를 이용하실 수 있습니다. <input type="button" value="인증하기" onclick="confirm2()">
			</div>
			
			<div id="confirm2">
				<h3>인증 사진</h3>
				<div id="getImage2"></div>
				<br> 
				<input type="file" name="upload2" size="50" onchange="previewImage(this,'getImage2',200,200);"> 
				<br>
					<div>
				<input type="button" value="나중에 인증" onclick="black()"> 
				<br>
				</div>
			</div>

			<div>
			<p>
	<input type="button" value="취소">
	<input type="submit" value="수정">
	</p>
	</div>

	</form>
	</fieldset>
</body>
</html>