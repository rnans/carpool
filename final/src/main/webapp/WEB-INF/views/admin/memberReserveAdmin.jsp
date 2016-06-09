<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<script>
var idx=null;
function memberReserveDel(){
	this.idx=idx;
	var params='idx='+idx;
	sendRequest('adminMemberReserveDel.do', params, null, 'GET');
	location.reload();
}

</script>
<body>

<%@include file="../header.jsp" %>
 <div style="width: 100%; ">
        <div style="width: 20%; margin: 100px 0px 0px 0px">
		<%@include file="../adHeader.jsp" %>
</div>
       <div class="" style="margin: 0px auto; padding-left:292px;display: inline-block; width: 80%;  ">
<div>
 <div align="center" style="margin-left:180px; margin-bottom: 25px;">
<h2 >예약및결제관리</h2>
<h4 >사용자예약</h4>
</div>


<div>
		<table border="1" style="margin: 0px auto;"  >
			<thead>
				<tr>
					<th>번호</th>
					<th>참가자아이디</th>
					<th>작성글번호</th>
					<th>예약한드라이버글번호</th>
					<th>예약진행상태</th>
					<th>예약인원</th>
					<th>비고</th>
				</tr>
			</thead>
			<tbody>
			<c:if test="${empty list}">
					<tr class="even">
						<td colspan="7" align="center">등록된 드라이버 카풀이 없습니다.</td>
					</tr>
				</c:if>
				<c:forEach var="list" items="${list}">
				<tr>
					<td>${list.idx }</td>
					<td>${list.memberid }</td>
					<td>${list.ownidx }</td>
					<td>${list.aimidx }</td>
					<td>${list.status }</td>
					<td>${list.mans }</td>
					<td>
	<a onclick="javascript:idx='${list.idx}';" data-title="MemberReserveDel" data-toggle="modal" data-target="#delete">
	 <button type="button" class="uButton uButtonPoint"
		style="background: #FF5A5A; min-width: 60px; line-height: 20px; margin: 0 3px; font-size: 13px; color: #fff;border:0px;">
	삭제</button>
	</a>
	</td>
	
				</tr>
			</c:forEach>
			</tbody>
			<tfoot>
				<tr  class="even">
					<td colspan="7" align="center">
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
	<div class="modal fade" id="delete" tabindex="-1" role="dialog"
		aria-labelledby="edit" aria-hidden="true">
		<div class="modal-dialog" style="position:absolute; width: 350px;padding-top: 150px; margin: 0px auto;">
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
						<span class="glyphicon glyphicon-warning-sign">정말 삭제 하시겠습니까?</span> 
					</div>

				</div>
				<div class="modal-footer ">
					<button type="button" class="btn btn-success" onclick="javascript:memberReserveDel();" data-dismiss="modal">
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
<footer>풋</footer>
</body>
</html>