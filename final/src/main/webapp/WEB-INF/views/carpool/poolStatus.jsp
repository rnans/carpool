<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="/final02/CSS/poolCommon.css" />
<link rel="stylesheet" type="text/css" href="/final02/CSS/buttons.css" />
<link rel="stylesheet" type="text/css" href="/final02/CSS/set2.css" />

<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="/final02//CSS/AdminLTE.min.css">
<link rel="stylesheet" type="text/css"
	href="/final02/CSS/menu_topexpand.css" />

	<!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
	<link rel="stylesheet" href="/final02/CSS/_all-skins.min.css">

<script>
function delReq(idx)
{
	location.href='delMemReq.do?idx='+idx;
}

var aIdx;
var aMans;

function payfor(idx)
{
	location.href='payType.do?idx='+idx;
}

function editMans(idx, mans, aimidx)
{
	aIdx=idx;
	aMans=mans;
	
	
	var btEl=document.getElementById('edBt'+idx);
	var tdEl=document.getElementById('editTd'+idx);
	var btsTdEl=document.getElementById('btsTd'+idx);
	tdEl.innerHTML='<form name="f" role="form" class="form-inline" action="editMemMans.do">'+
	'<input type=hidden name="idx" value="'+idx+'">'
	+'<input type=hidden name="aimidx" value="'+aimidx+'">'
	+'<input type="number" name="mans" class="form-control" style="width:40%;" value="'+mans+'">'+
	'<button type="submit" id="edCon" class="inOne btn btn-success btn-flat">수정 완료</button></form>'	
	btEl.style.display='none';

}

function viewMyPool(i)
{
	location.href='poolEachContent.do?idx='+i;	
}

</script>

</head>
<body>
	<%@ include file="../header.jsp"%>

<div class="menu-wrap">
				<nav class="menu">
					<div class="icon-list">
						<a href="poolAdd.do"><i class="fa fa-pencil" aria-hidden="true"></i><span>등록하기</span></a>
						<a href="poolFindForm.do"><i class="fa fa-search" aria-hidden="true"></i><span>검색하기</span></a>
						<a href="poolMasterList.do"><i class="fa fa-car" aria-hidden="true"></i><span>타세요</span></a>
						<a href="poolMemberList.do"><i class="fa fa-thumbs-up" aria-hidden="true"></i><span>탈래요</span></a>
						<a href="shortPoolList.do"><i class="fa fa-clock-o" aria-hidden="true"></i><span>단기
								카풀</span></a> 
								<a href="longPoolList.do"><i class="fa fa-calendar" aria-hidden="true"></i><span>정기
								카풀</span></a> <a href="poolStatus.do"><i class="fa fa-th-list" aria-hidden="true"></i><span>예약
								현황</span></a> <a href="poolMasReqList.do"><i class="fa fa-user-plus" aria-hidden="true"></i><span>가입
								요청 현황</span></a>
					</div>
				</nav>
			</div>
			<button class="menu-button" id="open-button"></button>



	<section id="mainsection">
		<div class="col-md-12">
			
				<div class="content-wrap">
				<div class="content">
				<div class="row">
					<h1 class="main--title">
						예약 진행 상황<small>현재 진행중인 예약 정보를 보여드립니다.</small>
					</h1>
				</div>
					<article>
						

						<div class="row">
							<div class="col-xs-12">
								<div class="box">
									<div class="box-header">
										<h3 class="box-title">예약 진행 상황</h3>


									</div>
									<!-- /.box-header -->
									<div class="box-body table-responsive no-padding">
										<table class="table table-hover">
											<thead>
												<tr>
													<th>번호</th>
													<th>파티장 글</th>
													<th>작성 글</th>
													<th>인원</th>
													<th>예약상태</th>
													<th>비고</th>
												</tr>
											</thead>
											<tbody>
												</tr>
												<c:if test="${empty memlist }">
													<tr>
														<td colspan="6" align="center">나에게 들어온 요청이 없습니다.</td>
													</tr>
												</c:if>

												<c:forEach var="dtos" items="${memlist }">

													<tr>
														<td>${dtos.idx }</td>
														<td><button type="button"
																onclick="viewMyPool(${dtos.aimidx })"
																class="btn btn-info btn-flat">파티장의 글 보기</button></td>
														<td>
															<button type="button"
																onclick="viewMyPool(${dtos.ownidx })"
																class="btn btn-info btn-flat">내가 쓴 글 보기</button>
														</td>
														<td id="editTd${dtos.idx}">${dtos.mans }<button
																type="button" id="edBt${dtos.idx }"
																onclick="editMans(${dtos.idx},${dtos.mans },${dtos.aimidx })"
																class="btn btn-info btn-flat pull-right">
																<i class="fa fa-pencil-square-o" aria-hidden="true"></i>
															</button>

														</td>
														<td>${dtos.status}</td>
														<td id="btsTd${dtos.idx}">
															<button type="button" id="payBt${dtos.idx }"
																onclick="payfor(${dtos.aimidx })"
																class="btn btn-success btn-flat">결제하기</button>
															<button type="button" onclick="delReq('${dtos.idx}')"
																class="btn btn-danger btn-flat">예약취소</button>
													</tr>
												</c:forEach>
											</tbody>
											<tfoot>
												<tr>
													<td colspan="3" align="center">${pageStr }</td>
												</tr>
											</tfoot>
										</table>



									</div>
								</div>
							</div>

						</div>

					</article>
				</div>
			</div>
		</div>
		
	</section>

</body>
<script src="/final02/js/menu-classie.js"></script>
<script src="/final02/js/menu-main.js"></script>
</html>
