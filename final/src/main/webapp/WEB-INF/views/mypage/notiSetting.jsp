<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

<script>
window.onload=function(){
	
	checkAlram();
}
function checkAlram(){

	var bang='';
	
	var check=new Array();
	check[0]='${dto.chat}';
	check[1]='${dto.reservation}';
	check[2]='${dto.recommand}';
	check[3]='${dto.rate}';
	check[4]='${dto.community}';
	
	var check2=new Array();
	check2[0]=document.getElementById('chat');
	check2[1]=document.getElementById('reservation');
	check2[2]=document.getElementById('recommand');
	check2[3]=document.getElementById('rate');
	check2[4]=document.getElementById('community');
	
	var check3=new Array();
	check3[0]=document.getElementById('chat2');
	check3[1]=document.getElementById('reservation2');
	check3[2]=document.getElementById('recommand2');
	check3[3]=document.getElementById('rate2');
	check3[4]=document.getElementById('community2');
	
	for(var i=0;i<check.length;i++){
	if(check[i]=='O'){
		
		check2[i].checked=true;
	}else if(check[i]=='X'){
		
		check3[i].checked=true;
	}
		}
	}
</script>

</head>
<body id="bb">
header
<hr>
<h2>알람설정</h2>
		
		<div id="div1">
		<img src="1234.jpg" border="100"><br>
		
		</div>
	
	<div id="div2">
	<script type="text/javascript">
	function mappingAction(val){
		var form = document.myAlarm;
		
		if(val == "notiSetting"){
			form.action = "notiSetting.do";
		}else if(val == "alarmUpdate"){
			form.action = "alarmUpdate.do";
		}else{
			return false;
		}
		form.submit();
	}
	</script>
			
		<form name="myAlarm" method="post">
		<input type="hidden" name="userid" value="${sessionScope.sid}">
			<fieldset>
			<legend>알람설정</legend>
				<ul>
				<li>실시간알람
					<input type="radio" name="chat" id="chat" value="O">수신
					<input type="radio" name="chat" id="chat2" value="X">수신안함				
				</li>	
				<li>예약알람
					<input type="radio" name="reservation" id="reservation" value="O">수신
					<input type="radio" name="reservation" id="reservation2" value="X">수신안함
				</li>
				<li>추천알람
					<input type="radio" name="recommand" id="recommand" value="O">수신
					<input type="radio" name="recommand" id="recommand2" value="X">수신안함
				</li>
				<li>평가알람
					<input type="radio" name="rate" id="rate" value="O">수신
					<input type="radio" name="rate" id="rate2" value="X">수신안함
				</li>
				<li>커뮤니티알람
					<input type="radio" name="community" id="community" value="O">수신
					<input type="radio" name="community" id="community2" value="X">수신안함
				</li>
				</ul>
				<c:set var="dto" value="${dto}"></c:set>
				<c:if test="${empty dto}">
					<p>
						<input type="reset" name="reset" value="취소">
						<input type="button" value="저장" onclick="mappingAction('notiSetting');">
					</p>	
				</c:if>
				<c:if test="${!empty dto}">
					<p>
						<input type="reset" name="reset" value="취소" >
						<input type="button" value="수정" onclick="mappingAction('alarmUpdate');">
					</p>
				</c:if>
				
			</fieldset>
		 </form>
			
	</div>
	<div id="div3">
		<fieldset>
			<form>
				<a href="myPage.jsp"><input type="button" name="mypage" value="마이페이지"></a><br>
				<a href="myProfile.jsp"><input type="button" name="myprofile" value="내프로필수정"></a><br>
				<a href="notiSetting.do"><input type="button" name="notiSetting" value="알람설정"></a><br>
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