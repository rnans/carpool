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
window.onload=function(){
	checkType1();
	checkType2();
	
}
function checkType1(){
	
	var cardtype1=document.getElementById('cardtype1');
	for(var i=0;i<cardtype1.length;i++)
	{
		if(cardtype1[i].value=='${dto.cardtype1}'){

			cardtype1[i].selected=true;
		}
	}
}
function checkType2(){
	
	var cardtype2=document.getElementById('cardtype2');
	for(var i=0;i<cardtype2.length;i++){
		if(cardtype2[i].value=='${dto.cardtype2}'){
			cardtype2[i].selected=true;
		}
	}
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
			<legend>회원결제수정</legend>
			<form name="cardUpdate" action="cardUpdate.do" method="post">
			<input type="hidden" name="idx" value="${dto.idx}">
				<table border="1" cellspacing="0" align="center">
					
						<tr>
							<td>카드종류</td>
							<td><select id="cardtype1" name="cardtype1">
			 <option value="선택">선택</option>				
            <option value="신한">신한</option>
            <option  value="농협">농협</option>
             <option  value="우리">우리</option>
              <option  value="국민">국민</option>
            </select></td>
						</tr>	
								<tr>
							<td>카드번호</td>
							<td colspan="5"><input type="text" name="cardnum1" style="width:40px;" value="${dto.cardnum1}">-<input type="text" name="cardnum2" style="width:40px;" value="${dto.cardnum2}">-<input type="text" name="cardnum3" style="width:40px;" value="${dto.cardnum3}">-<input type="text" name="cardnum4" style="width:40px;" value="${dto.cardnum4}"></td>
						</tr>
						<tr>
						<td>유효기간</td>
						<td><input type="text" name="cardterm1" style="width:20px;" value="${dto.cardterm1}">월/<input type="text" name="cardterm2" style="width:40px;" value="${dto.cardterm2}">년</td>
						</tr>
						<tr>
						<td>카드상이름</td>
						<td><input type="text" name="cardname" value="${dto.cardname}"></td>
						</tr>
						<tr>
						<td>cvv</td>
						<td><input type="text" name="cvv" style="width:30px;" value="${dto.cvv}"></td>
						</tr>
						<tr>
						<td>개인/법인</td>
						<td><select name="cardtype2" id="cardtype2">
            <option value="개인">개인</option>
            <option value="법인">법인</option>
            </select></td>
						</tr>
						<tr>
						<td>카드아이디</td>
						<td><input type="text" name="cardid" value="${dto.cardid}"></td>
						</tr>
						<tr>
						<td colspan="6" align="right"><input type="submit" value="수정"></td>
						</tr>
					</tbody>
				</table>
			</form>
	</div>
	<div id="div3">
		<fieldset>
			<form>
				<a href="myPage.jsp"><input type="button" name="mypage" value="마이페이지"></a><br>
				<a href="myProfile.jsp"><input type="button" name="myprofile" value="내프로필수정"></a><br>
				<a href="notiSetting.jsp"><input type="button" name="notiSetting" value="알람설정"></a><br>
				<a href="passChange.jsp"><input type="button" name="passchange" value="비밀번호변경"></a><br>
				<a href="userPayInfo.do"><input type="button" name="userpayInfo" value="결제정보"></a><br>
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