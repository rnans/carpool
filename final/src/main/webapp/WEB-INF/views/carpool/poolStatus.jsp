<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/final02/CSS/poolCommon.css" />
<link rel="stylesheet" type="text/css" href="/final02/CSS/buttons.css" />
<link rel="stylesheet" type="text/css" href="/final02/CSS/set2.css" />
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
	tdEl.innerHTML='<form name="f" action="editMemMans.do">'+
	'<input type=hidden name="idx" value="'+idx+'">'
	+'<input type=hidden name="aimidx" value="'+aimidx+'">'
	+'<input type="number" name="mans" value="'+mans+'">'+
	'<input type="submit" id="edCon" value="수정완료"></form>';
	
	btEl.style.display='none';

}


</script>

</head>
<body>
<%@ include file="../header.jsp" %>
<section>
<article>
<h1>예약 진행 상황 보기</h1>
<div id="tab">
<a href="ownMasterPoolList.do">파티 오너</a>
<a href="ownMemberPoolList.do">파티 멤버</a>
<a href="poolMasReqList.do">파티 참여 멤버 관리</a>
</div>
<h2>내가 한 요청 목록</h2>
<div>
<table>
	<thead>
		<tr>
			<th>번호</th>
			<th>인원</th>
			<th>예약상태</th>
			<th>비고</th>
		</tr>
	</thead>
	<tbody>
<c:if test="${empty memlist }">
<tr>
 <td colspan="4" align="center">나에게 들어온 요청이 없습니다.</td>
</tr>
 </c:if>
		
<c:forEach var="dtos" items="${memlist }">

<tr>
 <td>${dtos.idx }</td>
 <td id="editTd${dtos.idx}">${dtos.mans }</td>
 <td>${dtos.status}</td>
 <td id="btsTd${dtos.idx}"><input type="button" value="결제하기" id="payBt${dtos.idx }" onclick="payfor(${dtos.aimidx })"><input type="button" value="수정" id="edBt${dtos.idx }" onclick="editMans(${dtos.idx},${dtos.mans },${dtos.aimidx })"><input type="button" value="내가 쓴 요청글 보기" onclick="viewMyPool(${dtos.aimidx})"><input type="button" value="취소" onclick="delReq('${dtos.idx}')"></td>
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
</article>
</section>
</body>
</html>