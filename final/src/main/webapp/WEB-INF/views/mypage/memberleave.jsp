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
<h2>회원탈퇴</h2>
		
		<div id="div1">
		<img src="1234.jpg" border="100"><br>
		
		</div>
	
	<div id="div2">
			<legend>회원탈퇴</legend>
		<form name="myprofile" action="index.do">
			<ul>
					<li>비밀번호:<input type="password" name="password"></li>
					<li>비밀번호 확인:<input type="password" name="password"></li>
				<p>
					<input type="submit" name="ml" value="회원탈퇴">
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