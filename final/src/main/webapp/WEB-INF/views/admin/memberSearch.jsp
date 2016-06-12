<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<script>
var idx=null;
function memberDelForm(){
	var param="?idx="+idx;
	window.open('memberDelForm.do'+param,'memberDelForm','width=500 height=400 left=500 top=200');
}
function adminAddForm(){
	var param="?idx="+idx;
	window.open('adminAddForm.do'+param,'adminAddForm','width=500 height=400 left=500 top=200');
}
</script>


<div>
<table  border="1" style="margin: 0px auto;"id="a">
			<thead>
				<tr>
					<th>구분</th>
					<th>이름</th>
					<th>아이디</th>
					<th>지역</th>
					<th>연락처</th>
					<th>이메일</th>
					<th>성별</th>	
					<th>등급</th>
					<th>가입날짜</th>
					<th>등급</th>
					<th>탈퇴</th>
				</tr>
			</thead>
			<!-- for문으로 돌리기. 탈퇴는 버튼으로 만들기 -->
			<tbody>
				<c:set var="memberList" value="${lists}"></c:set>
				<c:if test="${empty memberList}">
					<tr class="even">
						<td colspan="11">등록된 회원이 없습니다.</td>
					</tr>
				</c:if>
				<c:forEach var="list" items="${lists}" >
					<tr>
						<td>${list.idx}</td>
						<td>${list.name}</td>
						<td>${list.id}</td>
						<td>${list.addr }</td>
						<td>${list.phonenum }</td>
						<td>${list.email }</td>
						<td>${list.sex }</td>
						<td>${list.grade}</td>
						<td>
							${list.joindate}
						</td>
						<td>
							<input type="button" value="등급조정" onclick="javascript:idx='${list.idx}';adminAddForm();">
						</td>
						<td>
							<input type="button" value="탈퇴시키기" onclick="javascript:idx='${list.idx}';memberDelForm();">
						</td>
					</tr>
				</c:forEach>
				
			</tbody>
			<tfoot>
				<tr class="even">
					<td colspan="11" align="center">
					${pageStr}
					</td>
				</tr>
			</tfoot>
		</table>
</div>
