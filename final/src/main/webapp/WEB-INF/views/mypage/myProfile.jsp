<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/previewmodule.js"></script>
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
		<form name="up" action="upload.do" method="post" enctype="multipart/form-date">
			<div id="preview">
				
			</div>
				<input type="file" name="filename" onchange="previewImage(this,'preview',225,300)">
				<input type="submit" value="사진올리깅">
		</form>
	</div>

	
	
	
	
	<div id="div2">
	
	<form name="myprofile" action="myProfileUpdate.do">
		<fieldset>
			<legend>${dto.name}님 프로필수정</legend>
				<ul>
					<li>아이디:
							<input type="text" name="id" value="${dto.id}" readonly>
							이름:
							<input type="text" name="name" value="${dto.name} "></li>
						<li>성별:
							<input type="radio" name="sex" value="남성" id="male">남성
							<input type="radio" name="sex" value="여성" id="female">여성
						</li>
						
						<li>생년월일:<input type="text" name="birth" value="${dto.birth }"></li>
								 
						<li>전화번호:<input type="text" name="phonenum" value="${dto.phonenum }"></li>
						<li>주소:<input type="text" name="addr" value="${dto.addr} "></li>
						<li>email:<input type="text" name="email" value="${dto.email }"></li>
						
				</ul>
					
				<p>
					<input type="reset" value="다시작성">
					<input type="submit" value="수정하기">
				</p>
				
				
			</fieldset>
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