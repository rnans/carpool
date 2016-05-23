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
	
	
}
#div2{
	float:left;
	width: 580px;
	height: 300px;
	margin: 5px;
	margin-left:0px;
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
<h2>알람설정</h2>
		
		<div id="div1">
		<img src="1234.jpg" border="100"><br>
		
		</div>
	
	<div id="div2">
			<legend>알람설정</legend>
			<form name="myprofile" action="myPage.jsp">
				<ul>
				<li>실시간알람
					<input type="radio">수신<input type="radio">수신안함</li>	
				<li>예약알람
					<input type="radio">수신<input type="radio">수신안함</li>
				<li>추천알람
					<input type="radio">수신<input type="radio">수신안함</li>
				<li>평가알람
					<input type="radio">수신<input type="radio">수신안함</li>
				<li>커뮤니티알람
					<input type="radio">수신<input type="radio">수신안함</li>
				
				<p>
					<input type="reset" name="reset" value="취소">
					<input type="submit" name="up" value="저장">
				</p>
				
				</ul>
				
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