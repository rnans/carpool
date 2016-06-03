<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<script>
function car_num_chk(car_num) 
{ 
    var v= car_num; 
    var result = document.getElementById('result'); 
    var carNum=document.getElementsByName('carnum');

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
        } 
    } 
    else { 
        result.innerText ="차량 형식에 맞습니다."; 
        var check=document.getElementById("carCheck");
        check.value="true";
    } 
    
} 
</script>
</head>
<body>
<fieldset>
<legend>차량수정</legend>
<form  name="carUpdate" action="carUpdate.do" method="post">
<div>
<input type="hidden" name="idx" value="${idxList.idx }">
드라이버:<input type="text" name=driver value="${idxList.driver }" readonly="readonly">
<br>
<br>
차 번호:<input type="text" name="carnum" value="${idxList.carnum }" id="car" maxlength="9" required placeholder="공백없이">
				<input type=button value="형식 확인" onclick="car_num_chk(document.getElementById('car').value)">  
				
				  <div id=result></div> 
				<br> 
				차종:<input type="text" name="cartype" value="${idxList.cartype }">
			</div>
			<h3>차량 사진</h3>
			<div id="getImage"><div id="fImage"><img style="width:200px; height:200px;" src="http://localhost:8080/final02/img/${idxList.carphoto}"></div>
			</div><div>
				<input name="upload" type="file" size="50"  onclick="delphoto()" onchange="previewImage(this,'getImage',200,200);"> 
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
				<input type="hidden" id="carCheck" name="check" value="false">
	<input type="button" value="취소">
	<input type="submit" value="수정">
	</p>
	</div>

	</form>
	</fieldset>
</body>
</html>