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
	position:;
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
<h2>마이페이지01</h2>
	
	
	<div id="div2">
		
		<div id="div1">
			<fieldset>
				<img src="/star.jpg" border="100"><br>
			</fieldset>
		</div>
		
			<form name="f" action="myProfile.do">
			<fieldset>
				<legend>${dto.name}님 정보</legend>
					<ul>
				
						<li>아이디:
							<input type="text" name="id" size="7" value="${dto.id}" readonly>
							이름:
							<input type="text" name="name" value="${dto.name} "></li>
						<li>성별:
							<input type="radio" name="sex" value="남성" id="male">남성
							<input type="radio" name="sex" value="여성" id="female" >여성
						</li>
						
						<li>생년월일:<input type="text" name="birth" value="${dto.birth }"></li>
								 
						<li>전화번호:<input type="text" name="phonenum" value="${dto.phonenum }"></li>
						<li>주소:<input type="text" name="addr" value="${dto.addr} "></li>
						<li>email:<input type="text" name="email" value="${dto.email }"></li>
					
						<li><input type="submit" value="프로필수정"></li>
						<li><a href="pwdUpdateForm.do">비밀번호변경</a></li>
						<li><a href="">회원탈퇴</a></li>
					</ul>
				</fieldset>	
			</form>
	</div>
	
	<div id="div3">
		<fieldset>
			<form>
				<a href="myPage.jsp"><input type="button" name="mypage" value="마이페이지"></a><br>
				<a href="myProfile.do"><input type="button" name="myprofile" value="내프로필수정"></a><br>
				<a href="notiSetting.jsp"><input type="button" name="notiSetting" value="알람설정"></a><br>
				<a href="pwdUpdate.do"><input type="button" name="passchange" value="비밀번호변경"></a><br>
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