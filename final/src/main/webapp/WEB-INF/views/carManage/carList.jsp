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
<body>
<%@include file="../header.jsp"%>
	<div class="container">
    <div class="row col-md-6 col-md-offset-2 custyle">
    <table class="table table-striped custab" style="width: 700px;">
			<tr>
				<th class="text-center">대표차량</th>
				<th>차량사진</th>
				<th class="text-center">운전자</th>
				<th class="text-center">차량번호</th>
				<th class="text-center">차량종류</th>
				<th class="text-center">인증여부</th>
				<th class="text-center">관리</th>
			</tr>

			<c:if test="${empty list}">
				<tr>
					<td colspan="7">등록된 차량이 없습니다.</td>
				</tr>
			</c:if>
			<c:forEach var="dto" items="${list }">
			
				<tr>
					<td class="text-center"><input type="radio" name="carid" value="${dto.carid }" onclick="carMain(${dto.idx})"></td>
					<td><div id="carImage">
        <img style="width:100px; height:100px;" src="http://localhost:8080/final02/img/${dto.carphoto}">
		</div></td>
					<td class="text-center">${dto.driver }</td>
					<td class="text-center">${dto.carnum }</td>
					<td class="text-center">${dto.cartype }</td>
					<td class="text-center"><c:if test="${dto.confirm eq 0 }">미인증된 차량입니다.</c:if><c:if test="${dto.confirm eq 1 }">인증된 차량입니다.</c:if></td>
						<td class="text-center">
						<a href="carUpdate.do?idx=${dto.idx}" class="btn btn-info btn-xs">
						<span class="glyphicon glyphicon-edit"></span> Edit</a>
						 
						<a href="carDel.do?idx=${dto.idx}" class="btn btn-danger btn-xs">
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
	</fieldset>
	<div class="container">
   <div class="row">
        <div class="span12">
            <form id="custom-search-form" class="form-search form-horizontal pull-right">
                <div class="input-append span12">
                    <input type="text" class="search-query" placeholder="Search">
                    <button type="submit" class="btn"><i class="main-icon" data-type="img" > 
                    <img src="http://image005.flaticon.com/28/svg/34/34097.svg" width="20" height="20" alt="Magnifier tool free icon" title="Magnifier tool free icon"></i></button>
                    
				
			
                </div>
            </form>
        </div>
   </div>
</div>
	
</body>
</html>