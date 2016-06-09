<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
  #custom-search-form {
        margin:0;
        margin-top: 5px;
        padding: 0;
    }
 
    #custom-search-form .search-query {
        padding-right: 3px;
        padding-right: 4px \9;
        padding-left: 3px;
        padding-left: 4px \9;
        /* IE7-8 doesn't have border-radius, so don't indent the padding */
 
        margin-bottom: 0;
        -webkit-border-radius: 3px;
        -moz-border-radius: 3px;
        border-radius: 3px;
    }
 
    #custom-search-form button {
        border: 0;
        background: none;
        /** belows styles are working good */
        padding: 2px 5px;
        margin-top: 2px;
        position: relative;
        left: -28px;
        /* IE7-8 doesn't have border-radius, so don't indent the padding */
        margin-bottom: 0;
        -webkit-border-radius: 3px;
        -moz-border-radius: 3px;
        border-radius: 3px;
    }
 
    .search-query:focus + button {
        z-index: 3;   
    }

.custab{
    border: 1px solid #ccc;
    padding: 5px;
    margin: 5% 0;
    box-shadow: 3px 3px 2px #ccc;
    transition: 0.5s;
   
    }
.custab:hover{
    box-shadow: 3px 3px 0px transparent;
    transition: 0.5s;
    }

</style>
<link href="./bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="/final02/js/httpRequest.js"></script>
<script>
var idx=null;
function carDel(){
	this.idx=idx;
	var param="?idx="+idx;
	window.location.href = 'carDel.do'+param;
}

function carMain(idx){
	
	var param="?idx="+idx;
	window.location.href = 'carMain.do'+param;
}
</script>
<script>
window.onload=function(){
	checkMain();
}
function checkMain(){
	
	var cars=document.getElementsByName('carid');
	
	for(var i=0;i<cars.length;i++)
	{
		if(cars[i].value==1){
			cars[i].checked=true;
		}
	}
}
</script> 
</head>
<body style="background-color: #F6F6F6;">
<%@include file="../header.jsp"%>
<div style="margin-top : 85px;">
    <div class="" style="margin: 0px auto;">
    <p style="font-size:15px; margin-top : 65px;text-align: center;">
    <font style="color:#5D5D5D;font-weight:bold; ;">    
<font color="#4374D9" style="font-weight: bolder;">'POOL PARTY'</font>는 내가 가고싶은 곳을 더 쉽게 더 편하게 더 싸게 가게 해주는 카쉐어링 서비스입니다. <br>
출퇴근, 여행, 가벼운 일탈 까지 이제 <font color="#4374D9" style="font-weight: bolder;">'POOL PARTY'</font>로 연결하세요.<br>

<!-- 누구나 쉽게 카풀을 만들어, 간단하게 파티를 구성하고, 온 오프라인 모두 우리만의 공간에서 모이세요. <br>
이 모든 것이 <font color="#4374D9" style="font-weight: bolder;">'POOL PARTY'</font> 하나로 간편해집니다 !! -->
    
    </font>
  <table class="table table-striped custab" style="width: 800px; margin:0px auto; margin-top: 40px;background-color: #fff;">
			<thead>
			<tr>
				<th colspan="7"><font color="#4374D9" style="font-weight: bolder;">'PooL PARTY' </font> &nbsp;&nbsp; <font style="font-weight: bolder;">차량 관리</font> </th>
			</tr>
			</thead>
			<tr>
				<th class="text-center">대표차량</th>
				<th style="text-align: center;">차량사진</th>
				<th class="text-center">운전자</th>
				<th class="text-center">차량번호</th>
				<th class="text-center">차량종류</th>
				<th class="text-center">인증여부</th>
				<th class="text-center">관리</th>
			</tr>

			<c:if test="${empty list}">
				<tr>
					<td colspan="7" style="text-align: center;">등록된 차량이 없습니다.</td>
				</tr>
			</c:if>
			<c:forEach var="dto" items="${list }">
			
				<tr style="vertical-align: middle;">
					<td><input type="radio" style="margin-left: 30px;" name="carid" value="${dto.carid }" onclick="carMain(${dto.idx})"></td>
					<td><div id="carImage">
        <img style="width:100px; height:100px;" src="http://localhost:9090/final02/img/${dto.carphoto}">
		</div></td>
					<td style="vertical-align: middle;" class="text-center">${dto.driver }</td>
					<td style="vertical-align: middle;" class="text-center">${dto.carnum }</td>
					<td style="vertical-align: middle;" class="text-center">${dto.cartype }</td>
					<td style="vertical-align: middle;" class="text-center"><c:if test="${dto.confirm eq 0 }">미인증된 차량입니다.</c:if><c:if test="${dto.confirm eq 1 }">인증된 차량입니다.</c:if></td>
						<td style="vertical-align: middle;" class="text-center">
						<a href="carUpdate.do?idx=${dto.idx}"  class="btn btn-info btn-xs">
						<span class="glyphicon glyphicon-edit"></span> Edit</a>
						 
						<a href="#" onclick="javascript:idx='${dto.idx}';" data-title="Delete" data-toggle="modal" data-target="#delete" class="btn btn-danger btn-xs">
						<span class="glyphicon glyphicon-remove"></span> Del</a>
						</td>
					</tr>
				
			</c:forEach>
			<tr>
			<!--  <td colspan="7" align="right"><input type="button" value="등록" onclick="location.href='carAdd.do'"></td>-->
			<td colspan="7" align="right"><a href="carAdd.do"><span><img src="http://image005.flaticon.com/1/svg/64/64522.svg" width="24" height="24" alt="Plus Circular Button free icon" title="Plus Circular Button free icon">
			</span>등록</a></td>
			</tr>

		</table>

	
</div>


   <div class="modal fade" id="delete" tabindex="-1" role="dialog"
      aria-labelledby="edit" aria-hidden="true">
      <div class="modal-dialog" style="position:absolute; width: 350px;padding-top: 150px;">
         <div class="modal-content">
            <div class="modal-header">
               <button type="button" class="close" data-dismiss="modal"
                  aria-hidden="true">
                  <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
               </button>
               <h4 class="modal-title custom_align" id="Heading">삭제</h4>
            </div>
            <div class="modal-body">

               <div class="alert alert-danger">
                  <span class="glyphicon glyphicon-warning-sign"></span> 삭제하시겠습니까?
               </div>

            </div>
            <div class="modal-footer ">
               <button type="button" class="btn btn-success" onclick="javascript:carDel();" data-dismiss="modal">
                  <span class="glyphicon glyphicon-ok-sign"></span> Yes
               </button>
               <button type="button" class="btn btn-default" data-dismiss="modal">
                  <span class="glyphicon glyphicon-remove"></span> No
               </button>
            </div>
         </div>
         <!-- /.modal-content -->
      </div>
      <!-- /.modal-dialog -->
   </div>
   </div>
</body>
</html>