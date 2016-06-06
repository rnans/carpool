<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>

<script>
var idx=null;
function adminDriverReserveDel(){
	var param="?idx="+idx;
	window.open('adminDriverReserveDel.do'+param,'adminDriverReserveDel','width=500 height=400 left=500 top=200');
}
</script>
		<table border="1" style="margin: 0px auto;">
			<thead>
				<tr>
					<th>번호</th>
					<th>예약글번호</th>
					<th>드라이버아이디</th>
					<th>구하는인원</th>
					<th>현재인원</th>
					<th>모집상태</th>
					<th>요청회원들</th>
					<th>수락한멤버들</th>
					<th>요청한인원수</th>
					<th>비고</th>
				</tr>
				
			</thead>
			<tbody>
			<c:if test="${empty list}">
					<tr class="even">
						<td colspan="10" align="center">검색결과가 없습니다.</td>
					</tr>
				</c:if>
				<c:forEach var="list" items="${list}">
				<tr>
					<td>${list.idx }</td>
					<c:url var="aimidxContent" value="adminAimidxContent.do">
          <c:param name="idx">${list.aimidx }</c:param>
          </c:url>
					<td><a href="${aimidxContent}" >${list.aimidx }</a></td>
					<td>${list.masterid }</td>
					<td>${list.mans }</td>
					<td>${list.nowmans }</td>
					<td>${list.status }</td>
					<td>${list.members }</td>
					<td>${list.inmembers }</td>
					<td>${list.reqcount}</td>
							<td><button type="submit" class="uButton uButtonPoint" onclick= "javascript:idx='${list.idx}';adminDriverReserveDel();"
		style="background: #FF5A5A; min-width: 60px; line-height: 20px; margin: 0 3px; font-size: 13px; color: #fff;border:0px;">
	삭제</button>
	</td>
				</tr>
				</c:forEach>
			</tbody>
			
			<tfoot>
				<tr  class="even">
				<td colspan="10" align="center">
						${pageStr}
					</td>
				</tr>
			</tfoot>
		</table>