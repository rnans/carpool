
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
.links {
  *zoom: 1;
  padding: 50px;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
    color: #797878;
  text-align: center;
}
.links:before, .links:after {
  content: "";
  display: table;
}
.links:after {
  clear: both;
}

.link-effect-3 a {
  padding: 10px 0;
  margin: 0 20px;
  color: #797878;
  text-shadow: none;
  position: relative;
}
.link-effect-3 a::before {
  position: absolute;
  top: 0;
  left: 0;
  overflow: hidden;
  padding: 10px 0;
  max-width: 0;
  border-bottom: 2px solid #fff;
  color: #fff;
  content: attr(data-hover);
  -webkit-transition: max-width 0.5s;
  -moz-transition: max-width 0.5s;
  transition: max-width 0.5s;
}
.link-effect-3 a:hover::before {
  max-width: 100%;
}
</style>



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
                            회원관리 <small>차량관리</small>
                        </h1>
                    </div>
                </div>
	<div>
		<table border="1" style="margin: 0px auto;">
			<thead>
				<tr>
					<th>구분</th>
					<th>이름</th><!-- driver -->
					<th>아이디</th><!-- id -->
					<th>차종</th><!-- cartype -->
					<th>차번호</th><!-- carnum -->
					<th>승인여부</th> <!-- confirm -->
					<th>인증</th>
					<th>승인</th>
					<th>삭제</th>
				</tr>
			</thead>
			<tbody>
			<c:if test="${empty lists}">
				<tr class="even">
					<td colspan="8" align="center">
						등록된 차량 정보가 없습니다.
					</td>
				</tr>
			</c:if>
			<c:forEach var="list" items="${lists}">
						<tr>
							<td>${list.idx}</td>
							<td>${list.driver}</td>
							<td>${list.id}</td>
							<td>${list.cartype}</td>
							<td>${list.carnum}</td>
							<td>${list.confirm}</td>
							<td>
								  <button type="button" class="uButton uButtonPoint" onclick="javascript:memberCarPhoto('${list.id}');"
									style="background: #FF5A5A; min-width: 60px; line-height: 20px; margin: 0 3px; font-size: 13px; color: #fff; border: 0px;">
									사진보기</button> 
									
							</td>
							<td>
							<a onclick="javascript:idx='${list.idx}';" data-title="Confirm" data-toggle="modal" data-target="#confirm">
								<button type="button" class="uButton uButtonPoint"
									style="background: #FF5A5A; min-width: 60px; line-height: 20px; margin: 0 3px; font-size: 13px; color: #fff; border: 0px;">
									승인</button>
							</a>
							</td>
							<td>
							<a onclick="javascript:idx='${list.idx}';" data-title="Delete" data-toggle="modal" data-target="#delete">
							<button type="button" class="uButton uButtonPoint"
									style="background: #FF5A5A; min-width: 60px; line-height: 20px; margin: 0 3px; font-size: 13px; color: #fff; border: 0px;">
									삭제</button>
							</a>	
							</td>
									
						</tr>


					</c:forEach>
					<!-- 삭제,차량승인 모달 -->
<script type="text/javascript" src="js/httpRequest.js"></script>
<script type="text/javascript">
var idx = null;
var confirm= null;
var id=null;
function memberCarDel(){
	this.idx=idx;
	var params='idx='+idx;
	window.alert(params);
	sendRequest('memberCarDel.do', params, null, 'GET');
	location.reload();
}
function memberCarOk(){
	this.idx=idx;
	confirm=document.getElementById("confirm2").value;
	var params='idx='+idx+'&confirm='+confirm;
	sendRequest('memberCarOk.do', params, null, 'GET');
	location.reload();
}
function memberCarPhoto(id){
	var windowW = 150;  // 창의 가로 길이
    var windowH = 70;  // 창의 세로 길이
    var left = Math.ceil((window.screen.width - windowW)/2);
    var top = Math.ceil((window.screen.height - windowH)/2);
	window.open('memberCarPhoto.do?id='+id,'memberCarPhoto()', 'top="+top+", left="+left+", height="+windowH+", width="+windowW');

}
</script>
				
			</tbody>
			<tfoot>
				<tr class="even">
					<td colspan="8" align="center">
						${pageStr}
					</td>
				</tr>
			</tfoot>
		</table>
	</div>
</div>
</div>
</div>
</div>

<!-- 삭제 모달 -->
	<div class="modal fade" id="delete" tabindex="-1" role="dialog"
		aria-labelledby="edit" aria-hidden="true">
		<div class="modal-dialog" style="position:absolute; width: 350px;padding-top: 150px; margin-right: 200px;">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
					</button>
					<h4 class="modal-title custom_align" id="Heading">차량정보삭제</h4>
				</div>
				<div class="modal-body">

					<div class="alert alert-danger">
						<span class="glyphicon glyphicon-warning-sign">정말 삭제 시키시겠습니까?</span> 
					</div>

				</div>
				<div class="modal-footer ">
					<button type="button" class="btn btn-success" onclick="javascript:memberCarDel();" data-dismiss="modal">
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

<!-- 차량승인 모달 -->
	<div class="modal fade" id="confirm" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
		<div class="modal-dialog" style="position:absolute; width: 350px;padding-top: 150px; margin: 0px auto;">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
					</button>
					<h4 class="modal-title custom_align" id="Heading">차량승인</h4>
				</div>
				
				<div class="modal-body">
				
					<div class="alert alert-danger">
	
						<span >
							
							<select name="confirm" id="confirm2">
							<option value="1">승인</option>
							<option value="0">승인취소</option>
						</select>
							
						</span>
						
					</div> 
				</div>

				<div class="modal-footer ">
					<button type="button" class="btn btn-success" onclick="javascript:memberCarOk();" data-dismiss="modal">
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
<!-- 차량승인 모달 -->
<footer>풋</footer>
</body>
</html>