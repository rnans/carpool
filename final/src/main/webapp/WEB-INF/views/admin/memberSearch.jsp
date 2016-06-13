<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<script>
var idx= null;
//회원탈퇴
function memberDel(){
	this.idx=idx;
	var params='idx='+idx;
	window.alert(params);
	sendRequest('memberDel.do', params, null, 'GET');
	location.reload();
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
							<a onclick="javascript:idx='${list.idx}';grade='${list.grade }'" data-title="Grade" data-toggle="modal" data-target="#grade">
							<button type="button" class="uButton uButtonPoint"
									style="background: #3DB7CC; min-width: 60px; line-height: 20px; margin: 0 3px; font-size: 13px; color: #fff; border: 0px;">
									등급변경</button>
							</a>
						</td>
						<td>
							<a onclick="javascript:idx='${list.idx}';" data-title="Delete" data-toggle="modal" data-target="#delete">
							<button type="button" class="uButton uButtonPoint"
									style="background: #6799FF; min-width: 60px; line-height: 20px; margin: 0 3px; font-size: 13px; color: #fff; border: 0px;">
									회원탈퇴</button></a>
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
<div class="modal fade" id="delete" tabindex="-1" role="dialog"	aria-labelledby="edit" aria-hidden="true">
		<div class="modal-dialog" style="position:absolute; width: 350px;padding-top: 150px; margin-right: 200px;">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
					</button>
					<h4 class="modal-title custom_align" id="Heading">회원정보삭제</h4>
				</div>
				<div class="modal-body">

					<div class="alert alert-danger">
						<span class="glyphicon glyphicon-warning-sign">정말 탈퇴 시키시겠습니까?</span> 
					</div>

				</div>
				<div class="modal-footer ">
					<button type="button" class="btn btn-success" onclick="javascript:memberDel();" data-dismiss="modal">
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

<!-- 등급변경 모달 -->
	<div class="modal fade" id="grade" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
		<div class="modal-dialog" style="position:absolute; width: 350px;padding-top: 150px; margin: 0px auto;">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
					</button>
					<h4 class="modal-title custom_align" id="Heading">등급변경</h4>
				</div>
				
				<div class="modal-body">
				
					<div class="alert alert-danger">
	
						<span>
							
							<select name="grade" id="grade2">
								<option value="관리자">관리자</option>
								<option value="일반">일반</option>
							</select>
							
						</span>
						
					</div> 
				</div>

				<div class="modal-footer ">
					<button type="button" class="btn btn-success" onclick="javascript:adminAdd();" data-dismiss="modal">
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
