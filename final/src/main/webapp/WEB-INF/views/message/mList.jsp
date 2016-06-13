<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./bootstrap/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="CSS/message.css">
<script src="js/message.js"></script>
<script type="text/javascript" src="js/httpRequest.js"></script>
<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
<script type="text/javascript"></script>
<script type="text/javascript">
var idx=null;
var content=null;
var sendid=null;
	function read(){
		this.idx=idx;
		this.sendid=sendid;
		this.content=content;

		document.getElementById("sendid2").innerText=sendid;
		document.getElementById("content2").innerText=content;
	}


	function mCon(idx){
		var param = '?idx='+idx;
		location.reload();
		//window.open('messageContent.do'+param,'mCon','width=450,height=270');
		window.open('messageContent.do'+param,'mCon','left='+(screen.availWidth-360)/2+',top='+(screen.availHeight-500)/2+',width=570, height=270px' );
	}
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
	function Test(idx){
		var param = '?idx='+idx;
		location.reload();
		//window.open('messageReWrite.do'+param,'mrWrite','width=450,height=270');
		window.open('messageReWrite.do'+param,'mrWrite','left='+(screen.availWidth-360)/2+',top='+(screen.availHeight-500)/2+',width=450, height=270px' );
		
	}
	function profile(sendid){
		var param='?sendid='+sendid;
		window.open('profile.do'+param,'','left='+(screen.availWidth-360)/2+',top='+(screen.availHeight-500)/2+',width=321, height=443px' );
	}
	
</script>
<style>
	.mContent{background-color: #efefef;}
</style>
</head>
<body>
	<%@ include file="../header.jsp" %>
	<div class="container" style="margin-top:100px;width: 100%;">
	<div class="row">
		<section class="content">
			<div class="col-md-8 col-md-offset-2">
				<div class="panel panel-default">
					<div class="panel-body">
						<div class="pull-left">
						<span id="d" style="font-size: 18px;padding-top: 10px;padding-left: 20px;">쪽지함</span>
						</div>
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
											<%-- <c:url var="mrWrite" value="messageReWrite.do">
													<c:param name="receiveid">${m.receiveid}</c:param>
													<c:param name="sendid">${m.sendid}</c:param>
													<c:param name="midx">${m.idx}</c:param>
											</c:url> --%>
											<div class="media" style="padding-left:0px">
											<c:forEach var="i" items="${uDTO}">
												<c:if test="${i.id==m.sendid}">
													<a href="javascript:profile('${m.sendid}')" class="pull-left">
														<img src="http://localhost:9090/final02/img/${i.filename}" class="media-photo">
													</a>
												</c:if>
											</c:forEach>
												<div class="media-body" style="margin:0px auto;">
													<span class="media-meta pull-right">${m.senddate} <br> 
														<c:if test="${m.reading=='읽음'}"><font color="#8C8C8C">읽음</font></c:if>
														<c:if test="${m.reading=='안읽음'}"><font color="#6799FF">안읽음</font></c:if>
													</span>
													
													<h4 class="title">
														<a href="javascript:Test(${m.idx})" id="sendid">${m.sendid}</a>
														<span class="pull-right pagado">${m.receiveid}</span>
													</h4>
																	<!-- javascript:mCon(${m.idx}); -->
														<p class="summary" style="width:400px;"><a href="#edit" data-title="Edit" data-toggle="modal" onmouseover="javascript:idx='${m.idx}';content='${m.content}';sendid='${m.sendid}';read();"><font color="black" id="" >${m.content}...</font></a></p>
													<div class="mContent"></div>
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

<div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
      <div class="modal-dialog" style="padding-top: 170px; width: 400px;">
    <div class="modal-content">
          <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
        <h4 class="modal-title custom_align" ><Span id="sendid2">From 누구누구</Span></h4>
      </div>
          <div class="modal-body">
         
         
        <Span id="content2"> 메세지내용	</Span>
      </div>
          <div class="modal-footer ">
        <button type="button" onclick="javascript:Test(idx)" class="btn btn-warning btn-lg" style="width: 100%;"><i class="fa fa-paper-plane" aria-hidden="true"></i> 답장하기</button>
      </div>
        </div>
    <!-- /.modal-content --> 
  </div>
      <!-- /.modal-dialog --> 
    </div>
	<%-- //<%@include file="../footer.jsp" %> --%>
</body>
</html>