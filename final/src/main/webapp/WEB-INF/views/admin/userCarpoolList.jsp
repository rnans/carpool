<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/final02/CSS/dialog-sally.css" />
<link rel="stylesheet" type="text/css" href="/final02/CSS/dialog.css" />
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script src="/final02/js/modernizr.custom2.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>

<!-- 유저카풀목록 삭제 -->
<script type="text/javascript" src="js/httpRequest.js"></script>
<script type="text/javascript">
var idx=null;
function userPoolDel(){
	this.idx=idx;
	var params='idx='+idx;	
	sendRequest('userPoolDel.do', params, null, 'GET')
	location.reload();
}
</script>
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
<div>
	<%@include file="../header.jsp"%>
	</div>
	<%@include file="../adHeader.jsp" %>




	<div align="center"
		style="margin-left: 150px; margin-bottom: 10px; margin-top: 60px;">
		<h2 align="center">카풀게시물관리</h2>
		<h4 align="center">사용자</h4>
		<div id="content" align="center">
			<section class="links">
				<nav class="link-effect-3" id="link-effect-3">
					<a href="driverPoolList.do" data-hover="1.드라이버">1.드라이버</a> 
					<a href="userPoolList.do" data-hover="2.사용자">2.사용자</a>
				</nav>
			</section>
		</div>
	</div>
	
	<div class="container" style="width: 100%; margin: 0px auto;">
		<table border="1" style="margin-left: 100px;">
			<thead>
				<tr>
					<th>구분</th> <!-- idx -->
					<th>아이디</th> <!-- userid -->
					<th>카풀명</th> <!-- poolname -->
					<th>목적</th> <!-- aim -->
					<th>단기/장기</th> <!-- termtype -->
					<th>성별</th><!-- gender -->
					<th>출발지</th> <!-- startspot -->
					<th>도착지</th> <!-- endspot -->
					<th>정기요일</th> <!-- days -->
					<th>요금</th> <!-- pay -->
					<th>예약현황</th> <!-- status -->
					<th>흡연여부</th> <!-- smoking -->
					<th>추가내용</th> <!-- pluscontent -->
					<th>등록일</th> <!-- writedate -->
					<th>예약취소</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${empty lists}">
					<tr class="even">
						<td colspan="19" align="center">등록된 이용자 카풀이 없습니다.</td>
					</tr>
				</c:if>
				<c:forEach var="list" items="${lists}">
				<tr>
					<td>${list.idx}</td>
					<td>${list.userid}</td>
					<td>${list.poolname}</td>
					<td>${list.aim}</td>
					<td>${list.termtype}</td>
					<td>${list.gender}</td>
					<td>${list.startspot}</td>
					<td>${list.endspot}</td>
					<td>${list.days}</td>
					<td>${list.pay}</td>
					<td>${list.status}</td>
					<td>${list.smoking}</td>
					<td>${list.pluscontent}</td>
					<td>${list.writedate}</td>
					
							<td>
								<a onclick="javascript:idx='${list.idx}';" data-title="UserPoolDel" data-toggle="modal" data-target="#userPoolDel">
							<button type="button" class="uButton uButtonPoint"
									style="background: #FF5A5A; min-width: 60px; line-height: 20px; margin: 0 3px; font-size: 13px; color: #fff; border: 0px;">
									삭제</button>
								</a>
							</td>
						</tr>
	
				</c:forEach>
				
			</tbody>
			<tfoot>
				<tr  class="even">
					<td colspan="20" align="center">
						${pageStr} 
					</td>
				</tr>
			</tfoot>
		</table>
</div>

<!-- 삭제 모달 -->
	<div class="modal fade" id="userPoolDel" tabindex="-1" role="dialog"
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
					<button type="button" class="btn btn-success" onclick="javascript:userPoolDel();" data-dismiss="modal">
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