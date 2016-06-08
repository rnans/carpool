<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="./bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="./bootstrap/css/font-awesome.min.css">
<script type="text/javascript" src="/final02/js/httpRequest.js"></script>
<script>
function addClose(){
	window.location.href = 'carList.do';
}
</script>
<style>

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
<%@include file="../header.jsp"%>

	
	 <div class="container-fluid">
                <div class="row-fluid" >
                     <div class="col-md-offset-4 col-md-4" id="box" style="height:600px; background-color: #EAEAEA; ">
                      <h2>차량등록</h2>
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
                            <span class="input-group-addon"><i class="fa fa-car fa-3" aria-hidden="true"></i></span>
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

			<h5>차량 사진</h5>
			<div id="getImage"></div>
			<div>
				<input name="upload" type="file" size="30" onchange="previewImage(this,'getImage',200,50);"> 
			</div>
			 
		
			<div id="confirm1"></div>
			
				차량인증을 해야 원활한 서비스를 이용하실 수 있습니다. <input type="button" value="인증하기" onclick="confirm2()">
			
			
			<div id="confirm2">
				<h5>인증 사진</h5>
				<div id="getImage2">
			 
				<input type="file" name="upload2" size="30" onchange="previewImage(this,'getImage2',200,50);"> 
					<div>
				<input type="button" value="나중에 인증" onclick="black()"> 
			
				</div>
			</div>
			</div>

            <div class="form-group">
              <div class="col-md-12">
                    <button type="submit" class="btn btn-warning pull-right" onb>등록 <span class="glyphicon glyphicon-send"></span></button>
                    <button type="button"  class="btn btn-warning pull-right" onclick="addClose()">취소 <span class="glyphicon glyphicon-remove-sign"></span></button>
              		<input type="hidden" id="carCheck" name="check" value="false">
              </div>
            </div>
           </fieldset>
        </form>  
     </div> 
</div>  
</body>
</html>