<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<script src="https://code.jquery.com/jquery-2.2.3.js"></script>

<script>
function loginOpen(){
	window.open('login.do', 'login', 'width=500 height=400 left=500 top=200');
}

////////jquery/////////
$(document).ready(function(){
	$("#chageaboo").mouseenter(function(){
		$(this).append(" <li id='chageaboo2'><a href='#'>home</a>&nbsp&nbsp<a href='cost.do'>cost</a>&nbsp&nbsp<a href='graph.do'>graph</a></li>");	
	});
	
	$("#chageaboo").mouseleave(function(){
		$(this).children("#chageaboo2").remove();
	});
	
});
</script>
<header>
	<c:if test="${!empty sessionScope.sid}">
		<div>
			${sessionScope.sid}님 로그인 | <a href="logout.do">로그아웃</a>
		</div>
	</c:if>
	<c:if test="${empty sessionScope.sid }">
		<div>
			<a href="javascript:loginOpen()">로그인</a> | <a href="memberJoin.do">회원가입</a>
		</div>
	</c:if>
	
	
	<ul>
		<c:if test="${sessionScope.grade eq '관리자'}">
			
				<li><a href="memberInfo.do">관리자페이지</a></li>
		
		</c:if>
		
				<li><a href="poolMain.do">카풀</a></li>
				<li><a href="carList.do">차량관리</a></li>
				<li><a href="carBookInfo.do" id="chageaboo">차계부</a></li>
				<li><a href="comm.do">커뮤니티</a></li>
				<li><a href="csCenter.do">고객센터</a></li>
			</ul>
		
	
	

</header>