<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
.dropdown2 {
  display: inline-block;
  position: relative;
  overflow: hidden;
  height: 28px;
  width: 150px;
  background: #f2f2f2;
  border: 1px solid;
  border-color: white #f7f7f7 #f5f5f5;
  border-radius: 3px;
  background-image: -webkit-linear-gradient(top, transparent, rgba(0, 0, 0, 0.06));
  background-image: -moz-linear-gradient(top, transparent, rgba(0, 0, 0, 0.06));
  background-image: -o-linear-gradient(top, transparent, rgba(0, 0, 0, 0.06));
  background-image: linear-gradient(to bottom, transparent, rgba(0, 0, 0, 0.06));
  -webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, 0.08);
  box-shadow: 0 1px 1px rgba(0, 0, 0, 0.08);
}
.dropdown2:before, .dropdown2:after {
  content: '';
  position: absolute;
  z-index: 2;
  top: 9px;
  right: 10px;
  width: 0;
  height: 0;
  border: 4px dashed;
  border-color: #888 transparent;
  pointer-events: none;
}
.dropdown2:before {
  border-bottom-style: solid;
  border-top: none;
}
.dropdown2:after {
  margin-top: 7px;
  border-top-style: solid;
  border-bottom: none;
}

.dropdown-select {
  position: relative;
  width: 130%;
  margin: 0;
  padding: 6px 8px 6px 10px;
  height: 28px;
  line-height: 14px;
  font-size: 12px;
  color: #62717a;
  text-shadow: 0 1px white;
  /* Fallback for IE 8 */
  background: #f2f2f2;
  /* "transparent" doesn't work with Opera */
  background: rgba(0, 0, 0, 0) !important;
  border: 0;
  border-radius: 0;
  -webkit-appearance: none;
}
.dropdown-select:focus {
  z-index: 3;
  width: 100%;
  color: #394349;
  outline: 2px solid #49aff2;
  outline: 2px solid -webkit-focus-ring-color;
  outline-offset: -2px;
}
.dropdown-select > option {
  margin: 3px;
  padding: 6px 8px;
  text-shadow: none;
  background: #f2f2f2;
  border-radius: 3px;
  cursor: pointer;
}

/* Fix for IE 8 putting the arrows behind the select element. */
.lt-ie9 .dropdown {
  z-index: 1;
}
.lt-ie9 .dropdown-select {
  z-index: -1;
}
.lt-ie9 .dropdown-select:focus {
  z-index: 3;
}

/* Dirty fix for Firefox adding padding where it shouldn't. */
@-moz-document url-prefix() {
  .dropdown-select {
    padding-left: 6px;
  }
}

.dropdown-dark {
  background: #444;
  border-color: #111 #0a0a0a black;
  background-image: -webkit-linear-gradient(top, transparent, rgba(0, 0, 0, 0.4));
  background-image: -moz-linear-gradient(top, transparent, rgba(0, 0, 0, 0.4));
  background-image: -o-linear-gradient(top, transparent, rgba(0, 0, 0, 0.4));
  background-image: linear-gradient(to bottom, transparent, rgba(0, 0, 0, 0.4));
  -webkit-box-shadow: inset 0 1px rgba(255, 255, 255, 0.1), 0 1px 1px rgba(0, 0, 0, 0.2);
  box-shadow: inset 0 1px rgba(255, 255, 255, 0.1), 0 1px 1px rgba(0, 0, 0, 0.2);
}
.dropdown-dark:before {
  border-bottom-color: #aaa;
}
.dropdown-dark:after {
  border-top-color: #aaa;
}
.dropdown-dark .dropdown-select {
  color: #aaa;
  text-shadow: 0 1px black;
  /* Fallback for IE 8 */
  background: #444;
}
.dropdown-dark .dropdown-select:focus {
  color: #ccc;
}
.dropdown-dark .dropdown-select > option {
  background: #444;
  text-shadow: 0 1px rgba(0, 0, 0, 0.4);
}

	 #custom-search-form {
        margin:0;
        margin-top: 5px;
        padding: 0;
        
    }
 
    #custom-search-form .search-query {
        padding-right: 0px;
        padding-right: 0px;
        padding-left: 3px;
        padding-left: 4px \9;
        /* IE7-8 doesn't have border-radius, so don't indent the padding */
          text-align : center;
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
table a{clear:both; padding: auto; margin:10px 5px; clear:both;}
</style>

 
<script src="/final02/js/jquery-1.12.4.min.js"></script>
<!-- 검색 아작스 -->
<script type="text/javascript" src="js/httpRequest.js"></script>
<script type="text/javascript">
var idx=null;
var grade=null;
//등급관리
function adminAdd(){
	this.idx=idx;
	grade=document.getElementById("grade2").value;
	var params='idx='+idx+'&grade='+grade;
	sendRequest('adminAdd.do', params, null, 'GET');
	location.reload();
}
</script>
<script type="text/javascript">


function show(){
	var search=document.a.search.value;
	var select=document.a.select.value;
	
	
	var params='select='+select+'&search='+search;
	sendRequest('memberSearch.do', params, showResult, 'GET');
}

function showResult(){//응답결과함수
	if(XHR.readyState==4){
		if(XHR.status==200){
			var result=XHR.responseText;
			span.innerHTML=result;
		}
	}
}
</script>
<script>
var idx= null;
//회원탈퇴
function memberDel(){
	this.idx=idx;
	var params='idx='+idx;
	window.alert(params);
	sendRequest('memberDel.do', params, null, 'GET');
	location.reload();
}


</script>

</head>
<body>

<%@include file="../header.jsp" %>

<div style="width: 100%; ">
<div style="width: 20%; margin: 60px 0px 0px 0px">
<%@include file="../adHeader.jsp" %>
</div>
<div id="wrapper">
        <div id="page-wrapper">

            <div class="container-fluid">
   <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header" style="margin-top: 20px;border-bottom: 5px solid #eeeeeee;">
                            회원관리 <small>회원정보관리</small>
                        </h1>
                    </div>
                </div>
            <form id="custom-search-form" name="a" class="form-search form-horizontal " action="memberSearch.do">
 
						<div class="container"
						style="margin-top:10px;margin-bottom:15px; margin-left:780px; display: inline-block; width: 320px; height: 28px;">
							<div class="dropdown2" style=" width: 100px; border: 0; top: 10px;">
								<select name="select" class="dropdown-select" style="width: 130px;">
									<option value="id">아이디</option>
									<option value="sex">성별</option>
									<option value="name">이름</option>
								</select>
							</div>
						
						<input type="text" class="search-query" id="search" name="search" style="width: 150px; padding: 0px 0px;">
                    <button type="button" class="btn" onclick="show();"><i class="main-icon" data-type="img" > 
                    <img src="http://image005.flaticon.com/28/svg/34/34097.svg" width="20" height="20" alt="Magnifier tool free icon" title="Magnifier tool free icon"></i></button>                 
                </div>
            </form>
        </div>


		<div id="span">
			<table  border="1" style="margin: 0px auto;" id="a">
			<thead>
				<tr>
					<th>구분</th>
					<th>이름</th>
					<th>아이디</th>
					<th>지역</th>
					<th>연락처</th>
					<th>이메일</th>
					<th>성별</th>	
					<th>등급</th>
					<th>가입날짜</th>
					<th>등급</th>
					<th>탈퇴</th>
				</tr>
			</thead>
			<!-- for문으로 돌리기. 탈퇴는 버튼으로 만들기 -->
			<tbody>
				<c:set var="memberList" value="${lists}"></c:set>
				<c:if test="${empty memberList}">
					<tr class="even">
						<td colspan="11">등록된 회원이 없습니다.</td>
					</tr>
				</c:if>
				<c:forEach var="list" items="${lists}" >
					<tr>
						<td>${list.idx}</td>
						<td>${list.name}</td>
						<td>${list.id}</td>
						<td>${list.addr }</td>
						<td>${list.phonenum }</td>
						<td>${list.email }</td>
						<td>${list.sex }</td>
						<td>${list.grade}</td>
						<td>${list.joindate}</td>
						<td>
							<a onclick="javascript:idx='${list.idx}';grade='${list.grade }'" data-title="Grade" data-toggle="modal" data-target="#grade">
							<button type="button" class="uButton uButtonPoint"
									style="background: #3DB7CC; min-width: 60px; line-height: 20px; margin: 0 3px; font-size: 13px; color: #fff; border: 0px;">
									등급변경</button>
							</a>
						</td>
						<td>
							<a onclick="javascript:idx='${list.idx}';" data-title="Delete" data-toggle="modal" data-target="#delete">
							<button type="button" class="uButton uButtonPoint"
									style="background: #6799FF; min-width: 60px; line-height: 20px; margin: 0 3px; font-size: 13px; color: #fff; border: 0px;">
									회원탈퇴</button>
							</a>
						</td>
					</tr>
				</c:forEach>
				
			</tbody>
			<tfoot>
				<tr class="even">
					<td colspan="11" align="center">
						${pageStr}
					</td>
				</tr>
			</tfoot>
		</table>
		</div>
</div>
</div>
</div>
<!-- 삭제 모달 -->
	<div class="modal fade" id="delete" tabindex="-1" role="dialog"	aria-labelledby="edit" aria-hidden="true">
		<div class="modal-dialog" style="position:absolute; width: 350px;padding-top: 150px; margin-right: 200px;">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
					</button>
					<h4 class="modal-title custom_align" id="Heading">회원정보삭제</h4>
				</div>
				<div class="modal-body">

					<div class="alert alert-danger">
						<span class="glyphicon glyphicon-warning-sign">정말 탈퇴 시키시겠습니까?</span> 
					</div>

				</div>
				<div class="modal-footer ">
					<button type="button" class="btn btn-success" onclick="javascript:memberDel();" data-dismiss="modal">
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

<!-- 삭제 모달 -->

<!-- 등급변경 모달 -->
	<div class="modal fade" id="grade" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
		<div class="modal-dialog" style="position:absolute; width: 350px;padding-top: 150px; margin: 0px auto;">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
					</button>
					<h4 class="modal-title custom_align" id="Heading">등급변경</h4>
				</div>
				
				<div class="modal-body">
				
					<div class="alert alert-danger">
	
						<span>
							
							<select name="grade" id="grade2">
								<option value="관리자">관리자</option>
								<option value="일반">일반</option>
							</select>
							
						</span>
						
					</div> 
				</div>

				<div class="modal-footer ">
					<button type="button" class="btn btn-success" onclick="javascript:adminAdd();" data-dismiss="modal">
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
<!-- 등급변경 모달 -->
<hr>

</body>
</html>