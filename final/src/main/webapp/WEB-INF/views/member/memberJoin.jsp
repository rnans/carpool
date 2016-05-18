<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/httpRequest.js"></script>
<script>
function idCheck(){
	var id = document.join.id.value;
	var params = 'id='+id;
	sendRequest('idCheck.do', params, idCheckResult, 'POST');
}
function idCheckResult(){
	if(XHR.readyState==4){
		if(XHR.status==200){
			var result = XHR.responseText;
			var span = document.getElementById('idmsg');
			span.innerHTML=result;
		}
	}
}
</script>
</head>
<body>
	<section>
		<article>
			<form name="memberJoin" action="memberJoin.do" method="post">
				<fieldset>
					<legend>회원가입</legend>
					<ul>
						<li>
							ID : <input type="text" name="id">
							<input type="button" value="중복체크" onclick="idCheck()">
							<span id="idmsg"></span> <!-- ajax 아이디체크용 -->
						</li>
						<li>
							비밀번호 : <input type="password" name="pwd">	
						</li>
						<li>
							비밀번호확인 : <input type="password" name="pwd">
							<span id=""></span> <!-- ajax 비밀번호확인용 -->
						</li>
						<li>
							이름 : <input type="text" name="name">
						</li>
						<li>
							생년월일 : <input type="text" name="birth">
						</li>
						<li>
							연락처 : <input type="text" name="phonenum">
						</li>
						<li>
							거주지역 : <input type="text" name="addr">
						</li>
						<li>
							이메일 : <input type="text" name="email">
							@
									<input type="text" name="email2">
									
							<select>
								<option value="">직접입력</option>
								<option value="naver.com">네이버</option>
								<option value="daum.net">다음</option>
								<option value="nate.com">네이트</option>
								<option value="google.com">구글</option>
							</select>
						</li>
						<li>
							성별 : <input type="radio" name="sex" value="남자">남자
								  <input type="radio" name="sex" value="여자">여자
						</li>
						<li>
							차랑소유여부 : <input type="radio" name="carhave" value="있음">있음
									    <input type="radio" name="carhave" value="없음">없음
						</li>
					</ul>
					<p>
						<input type="submit" value="회원가입">
						<input type="reset" value="다시입력">
					</p>
				</fieldset>
			</form>
		</article>
	</section>
</body>
</html>