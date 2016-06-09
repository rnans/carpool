<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="">
<link rel="stylesheet" type="text/css" href="CSS/message.css">
<script src="js/message.js"></script>
<script type="text/javascript" src="js/httpRequest.js"></script>
<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
<script type="text/javascript"></script>
<script type="text/javascript">
	/* function mCon(idx){
		var param = 'idx='+idx;
		sendRequest('messageContent.do',param,mResult,'GET');
	}
	function mResult(){
		if(XHR.readyState==4){
			if(XHR.status==200){
				//alert('test');
				$('.mContent').html(XHR.responseText);
			}
		}
	} */
	function allDel(){
		if(confirm("메시지를 모두 삭제 하시겠습니까?")){
			location.href="messageAllDel.do";
		}else{
			
		}
	}
	function selectDel(){
		if(confirm("선택한 메시지를 모두 삭제 하시겠습니까?")){
			location.href="messageDel.do";
		}else{
			
		}
	}
</script>
<style>
	.mContent{background-color: #efefef;}
</style>
</head>
<body>
	<%@ include file="../header.jsp" %>
	<div class="container" style="margin-top:80px;">
	<div class="row">
		<section class="content">
			<h1>메시지 창고</h1>
			<div class="col-md-8 col-md-offset-2">
				<div class="panel panel-default">
					<div class="panel-body">
						<div class="pull-right">
							<div class="btn-group">
								<button type="button" class="btn btn-success btn-filter" onclick="allDel()">전체메시지삭제</button>
								<button type="button" class="btn btn-warning btn-filter" onclick="selectDel()">읽은메시지삭제</button>
							</div>
						</div>
						
						<div class="table-container">
						<div class=""><c:if test="${empty lists}">받은 쪽지가 없습니다.</c:if></div>
						
							<table class="table table-filter">
							<c:forEach var="m" items="${lists}">
								<tbody>
									<tr data-status="pagado">
										<td>
											<div class="ckbox">
												<input type="checkbox" id="checkbox">
												<label for=""></label>
											</div>
										</td>
										<td>
											<!-- <a href="javascript:;" class="star">
												<i class="glyphicon glyphicon-star"></i>
											</a> -->
										</td>
										<td>
											<div class="media">
												<a href="#" class="pull-left">
													<img src="https://s3.amazonaws.com/uifaces/faces/twitter/fffabs/128.jpg" class="media-photo">
												</a>
												<div class="media-body">
													<span class="media-meta pull-right">${m.senddate} / ${m.reading}</span>
													<h4 class="title">
														${m.sendid}
														<span class="pull-right pagado">${m.receiveid}</span>
													</h4>
													<c:url var="mrWrite" value="messageReWrite.do">
														<c:param name="receiveid">${m.receiveid}</c:param>
														<c:param name="sendid">${m.sendid}</c:param>
														<c:param name="midx">${m.idx}</c:param>
													</c:url>
													<p class="summary"><a href="javascript:mCon(${m.idx});">${m.content}...</a></p>
													<div class="mContent"></div><a href="${mrWrite}">답장보내기</a>
												</div>
											</div>
										</td>
									</tr>
								</tbody>
								</c:forEach>
							</table>
							<div class="paging" style="margin:0px auto;width:500px; text-align: center;">${pageStr}</div>
					</div>
					</div>
				</div>
			</div>
		</section>
	</div>
</div>
</body>
</html>