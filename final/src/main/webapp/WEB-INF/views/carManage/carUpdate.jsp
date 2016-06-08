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
#carLeft{
	float:left;
	width: 200px;
	height: 150px;
	margin-top: 5px;
	margin-left:0px;
	}

#carRight{
	float:right;
	width: 200px;
	height: 150px;
	margin-top: 5px;
	margin-left:20px;
	
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
	document.getElementById("confirm1").style.display = "none"; 


}
 function fileReset(form)
 {
	 var preview = document.getElementById("getImage2");
	 var prevImg = document.getElementById("prev_" + "getImage2"); //������ �̸����Ⱑ �ִٸ� ����
	 var file2=document.getElementById("file2");
 
	 /* document.getElementById("confirm2").style.display = "none"; */
	 form.value = '';
	 document.selection.clear();
	 /* document.getElementById("confirm1").style.display = "block";  */
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


 <div class="container-fluid">
                <div class="row-fluid" >
                     <div class="col-md-offset-4 col-md-4" id="box" style="height:550px; background-color: #EAEAEA; ">
                      <h2>차량수정</h2>
                            <hr>
                              <form class="form-horizontal" action="carUpdate.do" method="post" id="contact_form" enctype="multipart/form-data">
                                    <fieldset>
                                        <!-- Form Name -->
                                        
                                        
            <!-- Text input(이름)-->

               <div class="form-group">

                    <div class="col-md-12">
                        <div class="input-group">
                        <input type="hidden" name="idx" value="${idxList.idx }">
                            <input type="hidden" name="id" value="${sid }" >
                                 <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                    <input name="driver" readonly="readonly" value="${idxList.driver }" placeholder="Name" class="form-control" type="text">
                        </div>
                    </div>
                 </div>


                                  
                   <!-- Text input(차번호)-->
             <div class="form-group">
                  <div class="col-md-12">
                       <div class="input-group" style="width: 200px; float: left;">
                            <span class="input-group-addon"><i class="fa fa-car fa-3" aria-hidden="true"></i></span>
                                 <input type="text" value="${idxList.carnum}" id="car" maxlength="9" required placeholder="예)12가1234" name="carnum" class="form-control" readonly="readonly">
                 		</div> 
                  </div>
             </div>

              <!-- Text input(차종)-->

            <div class="form-group">
                 <div class="col-md-12">
                       <div class="input-group">
                               <span class="input-group-addon"><i class="fa fa-car fa-3" aria-hidden="true"></i></span>
                               <input name="cartype" value="${idxList.cartype }" placeholder="예)티코" class="form-control" type="text">
                       </div>
                 </div>
            </div>
	<table>
	<tr>
	<td>
	<div id="carLeft">
			<h5>차량 사진</h5>
			<div id="getImage"><div id="fImage"><img style="width:100px; height:100px;" src="http://localhost:8080/final02/img/${idxList.carphoto}"></div>
			</div>
			<input type="hidden" name="carphoto" value="${idxList.carphoto}">
			<div>
				<input name="upload" type="file" size="30" onchange="previewImage(this,'getImage',100,100);"> 
					<br>
			</div>
			 </div>
		</td>
		<td>
		<div id="carRight">
			<div id="confirm1">
			
				차량인증을 해야 원활한 서비스를 이용하실 수 있습니다. <input type="button" value="인증하기" onclick="confirm2()">
			</div>
			
			<div id="confirm2">
				<h5>인증 사진</h5>
				<div id="getImage2"></div>
			 
				<input type="file" id="file2" name="upload2" size="30" onchange="previewImage(this,'getImage2',100,100);"> 
					<div>
				<input type="button" value="나중에 인증" onclick="fileReset(this.form);"> 
			
				</div>
			
			</div>
		
</div>
</td>
</tr>
</table>
            <div class="form-group" style="margin-top: 50px; margin-right: 2px;">
              <div id="2button" >
          
                    <button type="submit"  class="btn btn-warning pull-right">수정 <span class="glyphicon glyphicon-send"></span></button>
                    <button type="button"  class="btn btn-warning pull-right" onclick="addClose()">취소 <span class="glyphicon glyphicon-remove-sign"></span></button>
              </div>
            </div>
           </fieldset>
        </form>  
     </div> 
</div>  
</body>
</html>