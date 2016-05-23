<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<h2>결제정보</h2>
		
	<!-- 	<div id="div1">
		<img src="1234.jpg" border="100"><br>
		
		</div>-->
	
	<div id="div2">
			<legend>회원결제정보</legend>
			<form name="myprofile">
				<table border="1" cellspacing="0" align="center">
					<thead>
						<tr>
							<th>번호</th>
							<th>아이디</th>
							<th>카드종류</th>
							<th>카드번호</th>
							<th>유효기간</th>
							<th>카드상이름</th>
							<th>CVV</th>
							<th>개인/법인</th>
						</tr>	
					</thead>
				<tfoot>
					
				</tfoot>
					<tbody>
						<tr>
							<td>1</td>
							<td>whrnr</td>
							<td>우리은행</td>
							<td>****-****-****-****</td>
							<td>16/07</td>
							<td>하니</td>
							<td>***</td>
							<td>개인</td>
						</tr>
					</tbody>
				</table>
				<p align="center">
					<a href="#"><1 2 3 4 5></a>
				</p>
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


footer
<hr>
</body>
</html>