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
<h2>마이프로필</h2>
		
		<div id="div1">
		<img src="1234.jpg" border="100"><br>
		<input type="button" name="pf" value="프로필사진수정">
		</div>
	
	<div id="div2">
	<legend>프로필수정</legend>
			<form name="myprofile" action="myPage.jsp">
				<ul>
					<li>아이디:
						<input type="text" name="id" size="7" value="chornr">
						성별:
						<input type="text" name="se" size="5" value="남자">	
					</li>
					
					<li>생년월일:<input type="text" name="cnum" size="5" value="900111">-
							 <input type="text" name="cnum" size="5" value="1000111"></li>
							 
					<li>전화번호:<input type="text" name="my" size="5" value="010">-
							 <input type="text" name="my" size="5" value="8888">-
							 <input type="text" name="my" size="5" value="9999">
							 </li>
					<li>소개:</li>
					<textarea rows="5" cols="50">hi</textarea>	
				<p>
					<input type="reset" name="reset" value="다시작성">
					<input type="submit" name="up" value="수정하기">
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