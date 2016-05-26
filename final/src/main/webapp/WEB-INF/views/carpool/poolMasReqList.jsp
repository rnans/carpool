<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
${msgEl}
<script>
function getInAll(param)
{
	var idx=param;
	location.href='accAll.do?idx='+idx;
}
</script>
</head>
<body>
<%@ include file="../header.jsp" %>
<%@ include file="poolSubmenu.jsp" %>
<div id="tab">
<a href="ownMasterPoolList.do">파티 오너</a>
<a href="ownMemberPoolList.do">파티 멤버</a>
<a href="poolMasReqList.do">파티 참여 멤버 관리</a>
</div>
<h2>(파티장) 나에게 들어온 요청 목록</h2>
<div>

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
			
			

			tr.innerHTML+='<td><input type="button" class="inOne" value="승인"></td>';

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
	tdEl.innerHTML='<form name="f" action="editMasMans.do">'+
	'<input type=hidden name="idx" value="'+idx+'">'
	+'<input type=hidden name="aimidx" value="'+aimidx+'">'
	+'<input type="number" name="mans" value="'+mans+'">'+
	'<input type="submit" id="edCon" value="수정완료"></form>';
	
	btEl.style.display='none';
}
</script>

<table>
	<thead>
		<tr>
			<th>번호</th>
			<th>요청 수</th>
			<th>현재 인원/총 인원</th>
			<th>상태</th>
		</tr>
		</thead>
<tbody id="tbodyEl">
<c:if test="${empty maslist }">
<tr>
 <td colspan="4" align="center">나에게 들어온 요청이 없습니다.</td>
</tr>
 </c:if>
		
<c:forEach var="dtos2" items="${maslist }">

<tr>
 <td>${dtos2.idx }</td>
 <td>${dtos2.reqcount}</td>
 <td id="edTd${dtos2.idx }">${dtos2.nowmans }/${dtos2.mans }</td>
 <td><input type="button" id="edBt${dtos2.idx }" value="수정" onclick="modiMans(${dtos2.idx},${dtos2.mans },${dtos2.aimidx})"></td>
 <td><input type="button" value="삭제" onclick="delMasReq('${dtos2.idx}','${dtos2.aimidx }')"></td>
 </tr>
<tr id="reqMemTr${dtos2.idx}">
  <th>요청한 멤버들 목록</th>
  <td><input type="button" id="${dtos2.idx }"value="모두승인" onclick="getInAll(${dtos2.idx})"></td>
</tr>
<tr id="inMemTr${dtos2.idx }">
  <th>승인된 멤버들</th>
  <td>멤버 목록 <input type="button" value="탈퇴" onclick="getOutMem()"></td>
</tr>
 </c:forEach>
</tbody>
<tfoot>
<tr>
 <td colspan="6" align="center">${pageStr2 }</td>
 </tr>
 </tfoot>
</table>
</div>
</body>
</html>