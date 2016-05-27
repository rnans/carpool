<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<script>
function userPayInfo(){
	
	
}
</script>
</head>
<body id="bb">
header
<hr>
<h2>결제정보</h2>
		
	<!-- 	<div id="div1">
		<img src="1234.jpg" border="100"><br>
		
		</div>-->
	
	<div id="div2">
			<legend>회원결제등록</legend>
			<form name="userPayAdd" action="userPayAdd.do" method="post">
				<table border="1" cellspacing="0" align="center">
					
						<tr>
							<td>카드종류</td>
							<td><select name="cardtype1">
            <option value="신한">신한</option>
            <option value="농협">농협</option>
             <option value="우리">우리</option>
              <option value="국민">국민</option>
            </select></td>
						</tr>	
								<tr>
							<td>카드번호</td>
							<td colspan="5"><input type="text" name="cardnum1">-<input type="text" name="cardnum2">-<input type="text" name="cardnum3">-<input type="text" name="cardnum4"></td>
						</tr>
						<tr>
						<td>유효기간</td>
						<td><input type="text" name="cardterm1">월/<input type="text" name="cardterm2">년</td>
						</tr>
						<tr>
						<td>카드상이름</td>
						<td><input type="text" name="cardname"></td>
						</tr>
						<tr>
						<td>cvv</td>
						<td><input type="text" name="cvv"></td>
						</tr>
						<tr>
						<td>개인/법인</td>
						<td><select name="cardtype2">
            <option>개인</option>
            <option>법인</option>
            </select></td>
						</tr>
						<tr>
						<td>카드아이디</td>
						<td><input type="text" name="cardid"></td>
						</tr>
						<tr>
						<td colspan="6" align="right"><input type="submit" value="등록"></td>
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