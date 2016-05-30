<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#div1{
	float:left;
	width: 250px;
	height: 400px;
	border: 1px;
	margin: 5px;
	margin-left: 5px;
	
}
#div2{
	float:left;
	width: 800px;
	height: 250px;
	margin: 5px;
	margin-left:px;
	background-color:gray;
}

#div3{
	float:right;
	width: 150px;
	height: 650px;
	margin-top: 5px;
	margin-left:0px;
	
}

#bb{
	width:1000px;
	margin: 0px auto;
}

</style>
</head>
<body id="bb">
header
<hr>
<h2>즐겨찾기</h2>
		

	
	<div id="div2">
			<legend>즐겨찾는카풀</legend>
			<form name="wishpool">
				<table border="1" cellspacing="0" align="center">
					<thead>
						<tr>
							
							<th>번호</th>
							<th>운전자글번호</th>
							<th>이용자아이디</th>
							<th>소속카풀이름</th>
							<th>파티장</th>
						</tr>	
					</thead>
			<tfoot>
					<tr>
						<td colspan="5" align="center">
							 ${pageStr }
						</td>
						<td><a></a></td>
					</tr>
			</tfoot>
			<tbody>
		<c:if test="${empty lists }">
				<td colspan="5" align="center">
					등록된 즐겨찾기 가 없습니다.
				</td>
		</c:if>
			<c:forEach var="dto" items="${lists }">
				<tr align="center">
					
					<td>${dto.idx }</td>
					<td>${dto.aimidx}</td>
					<td>${dto.userid}</td>
					<td>${dto.poolname}</td>
					<td>${dto.masterid}</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
				
					<input type="reset" value="취소">
					<input type="submit" value="삭제하기">
			</form>
	</div>
	<div id="div3">
		<fieldset>
			<form>
				<a href="myPage.jsp"><input type="button" name="mypage" value="마이페이지"></a><br>
				<a href="myProfile.jsp"><input type="button" name="myprofile" value="내프로필수정"></a><br>
				<a href="notiSetting.jsp"><input type="button" name="notiSetting" value="알람설정"></a><br>
				<a href="passChange.jsp"><input type="button" name="passchange" value="비밀번호변경"></a><br>
				<a href="userPayInfo.jsp"><input type="button" name="userpayInfo" value="결제정보"></a><br>
				<input type="button" name="mypage" value="이용내역"><br>
				<input type="button" name="mypage" value="소속카풀"><br>
				<a href="favorite.jsp"><input type="button" name="mypage" value="즐겨찾기"></a><br>
				<a href="regList.jsp"><input type="button" name="register" value="등록한글"></a><br>
				<input type="button" name="mypage" value="평가한글"><br>
				<a href="memberleave.jsp"><input type="button" name="mypage" value="회원탈퇴"></a><br>
			</form>
		</fieldset>
	</div>

</body>
</html>