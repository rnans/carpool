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
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="/final02//CSS/AdminLTE.min.css">
<!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet" href="/final02/CSS/_all-skins.min.css">
<link rel="stylesheet" type="text/css"
	href="/final02/CSS/menu_topexpand.css" />
${msgEl}
<script>
function getInAll(param)
{
	var idx=param;
	location.href='accAll.do?idx='+idx;
}
</script>

<script>

window.onload=function()
{
	var result=new Array();
	

	
	
	<c:forEach var="dtos2" items="${maslist }">
	var dto=new Object();
	dto.idx='${dtos2.idx}';
	dto.members='${dtos2.members}';
	dto.aimidx='${dtos2.aimidx}';
	result.push(dto);
	
	</c:forEach>
	
	var jsonInfo = JSON.stringify(result);
	
	
	for(var i=0;i<result.length;i++)
	{
		var arrMem=result[i].members.split('-');
		var idx=result[i].idx;
		var aimidx=result[i].aimidx;
	
		var inMemTr=document.getElementById('inMemTr'+idx);
		
		var tbodyEl=document.getElementById('tbodyEl');
		
		for(var i=1;i<arrMem.length;i++)
		{
			
			
			var tr=document.createElement( 'tr' );
			tr.innerHTML+='<td>'+arrMem[i]+'</td>';
			
			
						var tmp=arrMem[i];
			
			

			tr.innerHTML+='<td><button type="button" class="inOne btn btn-success btn-flat">승인</button></td>'
				

			tbodyEl.insertBefore(tr,inMemTr);
		}
		
		
		 $(document).ready(function () {
		        $(".inOne").bind("click", function(){
		            location.href='accOne.do?idx='+idx+'&members='+tmp+'&aimidx='+aimidx;
		        });
		    });
		
	}
	

}

function delMasReq(idx, aimidx)
{
	location.href='delMasReq.do?idx='+idx+'&aimidx='+aimidx;
}

function modiMans(idx,mans,aimidx)
{
	var btEl=document.getElementById('edBt'+idx);
	var tdEl=document.getElementById('edTd'+idx);
	var btsTdEl=document.getElementById('btsTd'+idx);
	tdEl.innerHTML='<form name="f" role="form" class="form-inline" action="editMasMans.do">'+
	'<input type=hidden name="idx" value="'+idx+'">'
	+'<input type=hidden name="aimidx" value="'+aimidx+'">'
	+'<input type="number" name="mans" class="form-control" style="width:50%;" value="'+mans+'">'+
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
				<a href="poolFindForm.do"><i class="fa fa-search"
					aria-hidden="true"></i><span>검색하기</span></a> <a
					href="poolMasterList.do"><i class="fa fa-car"
					aria-hidden="true"></i><span>타세요</span></a> <a href="poolMemberList.do"><i
					class="fa fa-thumbs-up" aria-hidden="true"></i><span>탈래요</span></a> <a
					href="shortPoolList.do"><i class="fa fa-clock-o"
					aria-hidden="true"></i><span>단기 카풀</span></a> <a href="longPoolList.do"><i
					class="fa fa-calendar" aria-hidden="true"></i><span>정기 카풀</span></a> <a
					href="poolStatus.do"><i class="fa fa-th-list"
					aria-hidden="true"></i><span>예약 현황</span></a> <a
					href="poolMasReqList.do"><i class="fa fa-user-plus"
					aria-hidden="true"></i><span>가입 요청 현황</span></a>
			</div>
		</nav>
	</div>
	<button class="menu-button" id="open-button"></button>



	<section id="mainsection">


			<div class="content-wrap">
				<div class="content">
		<div class="row">
		<div class="col-md-12">
			<h1 class="main--title">
				파티 가입 요청<small>현재 가입 요청중인 멤버 정보를 보여드립니다.</small>
			</h1>
		</div>
		</div>

		
		<c:forEach var="dtos2" items="${maslist }" varStatus="i">
			<div class="row">
				<div class="col-xs-12">
					<div class="box">
					
						<div class="box-header">
						
							<h3 class="box-title">요청 진행 상황</h3>
				
						</div>
						
						<!-- /.box-header -->
						<div class="box-body table-responsive no-padding">
							<table class="table table-hover">
								<thead>
									<c:if test="${empty maslist }">
										<tr>
											<td colspan="4" align="center">나에게 들어온 요청이 없습니다.</td>
										</tr>
									</c:if>
									<tr>
										<th>번호</th>
										<th>내 글</th>
										<th>요청 수</th>
										<th>현재 인원/총 인원</th>
										<th>상태</th>
									</tr>
								</thead>
								<tbody id="tbodyEl">
									<tr>
										<td>${dtos2.idx }</td>
										<td><button type="button"
												onclick="viewMyPool(${dtos2.aimidx })"
												class="btn btn-info btn-flat">내가 올린 파티 글 보기</button></td>
										<td>${dtos2.reqcount}</td>
										<td id="edTd${dtos2.idx }">${dtos2.nowmans }/${dtos2.mans }</td>
										<td><button type="button" id="edBt${dtos2.idx }"
												onclick="modiMans(${dtos2.idx},${dtos2.mans },${dtos2.aimidx})"
												class="btn btn-info btn-flat">수정</button></td>
										<td><button type="button"
												onclick="delMasReq('${dtos2.idx}','${dtos2.aimidx }')"
												class="btn btn-danger btn-flat">삭제</button></td>
									</tr>
									<tr id="reqMemTr${dtos2.idx}">
										<th>요청한 멤버들 목록</th>
										<td>
											<button type="button" id="${dtos2.idx }"
												onclick="getInAll(${dtos2.idx})"
												class="btn btn-success btn-flat">모두 승인</button>
										</td>
									</tr>
									<tr id="inMemTr${dtos2.idx }">
										<th>승인된 멤버들</th>
										<td>${dtos2.inmembers }</td>
									</tr>

								</tbody>
								<tfoot>
									<tr>
										<td colspan="6" align="center">${pageStr2 }</td>
									</tr>
								</tfoot>
							</table>
						</div>
						
					</div>
				</div>
			</div>
		</c:forEach>
		</div>
		</div>
	</section>
</body>
<script src="/final02/js/menu-classie.js"></script>
<script src="/final02/js/menu-main.js"></script>
</html>