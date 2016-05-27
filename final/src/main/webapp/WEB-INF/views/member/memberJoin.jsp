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
	var id = document.memberJoin.id.value;
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
<script>
function pwdCheck(){
	  var pwd = document.memberJoin.pwd.value;
	  var pwd2 = document.memberJoin.pwd2.value;
	  if(pwd!=pwd2){
	   document.getElementById('pwdmsg').style.color = "red";
	   document.getElementById('pwdmsg').innerHTML = "비밀번호를 다시 확인하세요."; 
	  }else{
	   document.getElementById('pwdmsg').style.color = "blue";
	   document.getElementById('pwdmsg').innerHTML = "비밀번호가 일치합니다.";  
	  }  
}
</script>
<script>
function SetEmailTail(emailValue){
	var email = document.all("email");
	var emailTail = document.all("email2");
	
	if(emailValue == "notSelected")
		return;
	else if(emailValue == "etc"){
		emailTail.readOnly=false;
		emailTail.value="";
		emailTail.focus();
	}else {
		emailTail.readOnly = true;
		emailTail.value = emailValue;
	}
	
}
</script>
<script src="https://code.jquery.com/jquery-2.2.3.js"></script>
<script>
   $(function(){
      $('#phonenum').keyup(function(){
         if (event.which && (event.which > 36 && event.which < 58 ||
            event.which > 95 && event.which < 106 ||
            event.which == 8 || event.which == 9)){
         }else{
            alert("숫자만 입력해주세요.");
            $('#phonenum').val("");
            $('#phonenum').focus();
         }
      });
   });
</script>
<script>
   $(function(){
      $('#birth').keyup(function(){
         if (event.which && (event.which > 36 && event.which < 58 ||
            event.which > 95 && event.which < 106 ||
            event.which == 8 || event.which == 9)){
         }else{
            alert("숫자만 입력해주세요.");
            $('#birth').val("");
            $('#birth').focus();
         }
      });
   });
</script>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
// <![CDATA[
jQuery( function($) { // HTML 문서를 모두 읽으면 포함한 코드를 실행

	// 정규식을 변수에 할당
	// 정규식을 직접 작성할 줄 알면 참 좋겠지만
	// 변수 우측에 할당된 정규식은 검색하면 쉽게 찾을 수 있다 
	// 이 변수들의 활약상을 기대한다
	// 변수 이름을 're_'로 정한것은 'Reguar Expression'의 머릿글자
	var re_id = /^[a-z0-9_-]{5,12}$/; // 아이디 검사식
	var re_pw = /^[a-z0-9_-]{6,18}$/; // 비밀번호 검사식	
	var re_phonenum = /^[0-9]{8,11}$/; // 전화번호 검사식
	var re_email = /^[a-z0-9_-]$/; // 이메일 검사식
	var re_email2 = /^[a-z\.]$/; // 이메일 검사식
	
	// 선택할 요소를 변수에 할당
	// 변수에 할당하지 않으면 매번 HTML 요소를 선택해야 하기 때문에 귀찮고 성능에도 좋지 않다
	// 쉼표를 이용해서 여러 변수를 한 번에 선언할 수 있다
	// 보기 좋으라고 쉼표 단위로 줄을 바꿨다 
	var 
		form = $('.form'), 
		id = $('#id'), 
		pwd = $('#pwd'), 
		name = $('#name'),
		birth = $('#birth'),
		phonenum = $('#phonenum'),
		addr = $('#addr'),
		email = $('#email');
		email2 = $('#email2');
		
	// 선택한 form에 서밋 이벤트가 발생하면 실행한다
	// if (사용자 입력 값이 정규식 검사에 의해 참이 아니면) {포함한 코드를 실행}
	// if 조건절 안의 '정규식.test(검사할값)' 형식은 true 또는 false를 반환한다
	// if 조건절 안의 검사 결과가 '!= true' 참이 아니면 {...} 실행
	// 사용자 입력 값이 참이 아니면 alert을 띄운다
	// 사용자 입력 값이 참이 아니면 오류가 발생한 input으로 포커스를 보낸다
	// 사용자 입력 값이 참이 아니면 form 서밋을 중단한다
	form.submit( function() {
		if (re_id.test(id.val()) != true) { // 아이디 검사
			alert('유효한 ID를 입력해 주세요.');
			id.focus();
			return false;
		} else if(re_pw.test(pwd.val()) != true) { // 비밀번호 검사
			alert('유효한 PW를 입력해 주세요.');
			pwd.focus();
			return false;
		} else if(name.val()=="") { // 이름 검사
			alert('이름을 입력해 주세요.');
			name.focus();
			return false;
		} else if(birth.val()=="") { // 생년월일 검사
			alert('생년월일을 입력해 주세요.');
			birth.focus();
			return false;
		} else if(re_phonenum.test(phonenum.val()) != true) { // 전화번호 검사
			alert('전화번호를 올바르게 입력해주세요.');
			phonenum.focus();
			return false;
		} else if(addr.val() == "") { // 지역 검사
			alert('지역을 입력해 주세요.');
			addr.focus();
			return false;
		} else if(re_email.test(val()) != true) { // 이메일 검사
			alert('이메일을 올바르게 입력해 주세요.');
			email.focus();
			return false;
		} else if(re_email2.test(val()) != true) { // 이메일 검사
			alert('이메일을 올바르게 입력해 주세요.');
			email2.focus();
			return false;
		}
	});
	
	// #uid, #upw 인풋에 입력된 값의 길이가 적당한지 알려주려고 한다
	// #uid, #upw 다음 순서에 경고 텍스트 출력을 위한 빈 strong 요소를 추가한다
	// 무턱대고 자바스크립트를 이용해서 HTML 삽입하는 것은 좋지 않은 버릇
	// 그러나 이 경우는 strong 요소가 없어도 누구나 form 핵심 기능을 이용할 수 있으니까 문제 없다
	$('#pwd').after('<strong></strong>');
	
	// #upw 인풋에서 onkeyup 이벤트가 발생하면
	upw.keyup( function() {
		var s = $(this).next('strong'); // strong 요소를 변수에 할당
		if (pwd.val().length == 0) { // 입력 값이 없을 때
			s.text(''); // strong 요소에 포함된 문자 지움
		} else if (pwd.val().length < 6) { // 입력 값이 6보다 작을 때
			s.text('너무 짧아요.'); // strong 요소에 문자 출력
		} else if (pwd.val().length > 18) { // 입력 값이 18보다 클 때
			s.text('너무 길어요.'); // strong 요소에 문자 출력
		} else { // 입력 값이 6 이상 18 이하일 때
			s.text('적당해요.'); // strong 요소에 문자 출력
		}
	});
	
});
// ]]>
</script>
</head>
<body>
	<section>
		<article>
			<form name="memberJoin" action="memberJoin.do" method="post" class="form">
				<fieldset>
					<legend>회원가입</legend>
					<font color="red">*</font>표시는 필수 입력사항입니다.
					<ul>
						<li>
							ID(<font color="red">*</font>) : <input type="text" name="id" id="id" onblur="idCheck()" size="40" placeholder="영문+숫자 or 영문,숫자로 된 5~12 문자">
							<span id="idmsg"></span> <!-- ajax 아이디체크용 -->
						</li>
						<li>
							비밀번호(<font color="red">*</font>) : <input type="password" name="pwd" id="pwd" placeholder="영문+숫자 or 영문,숫자로 된 6~18 문자" size="40">	
						</li>
						<li>
							비밀번호확인 : <input type="password" name="pwd2" onblur="pwdCheck()" size="40">
							<span id="pwdmsg"></span> <!-- ajax 비밀번호확인용 -->
						</li>
						<li>
							이름(<font color="red">*</font>) : <input type="text" name="name" id="name">
						</li>
						<li>
							생년월일(<font color="red">*</font>) : <input type="text" name="birth" id="birth" placeholder="ex) 900415 형식으로 입력해주세요." size="40">
						</li>
						<li>
							연락처(<font color="red">*</font>) : <input type="text" name="phonenum" id="phonenum" placeholder="ex) 01012345678 형식으로 입력해주세요." size="40">
						</li>
						<li>
							거주지역(<font color="red">*</font>) : 
							<select name="addr">
								<option value="서울특별시" selected>서울특별시</option>
								<option value="부산광역시">부산광역시</option>
								<option value="대구광역시">대구광역시</option>
								<option value="인천광역시">인천광역시</option>
								<option value="광주광역시">광주광역시</option>
								<option value="대전광역시">대전광역시</option>
								<option value="울산광역시">울산광역시</option>
								<option value="세종특별자치시">세종특별자치시</option>								
								<option value="경기도">경기도</option>
								<option value="강원도">강원도</option>
								<option value="충청도">충청도</option>
								<option value="경상도">경상도</option>
								<option value="전라도">전라도</option>
								<option value="제주도">제주도</option>
							</select>
							
						</li>
						<li>
							이메일(<font color="red">*</font>) : <input type="text" name="email" id="email">
							@
									<input type="text" name="email2" value="" id="email2" readonly="true">
									
							<select name="emailCheck" onchange="SetEmailTail(emailCheck.options[this.selectedIndex].value)">
								<option value="notSelected">::선택하세요::</option>
								<option value="etc">직접입력</option>
								<option value="naver.com">네이버</option>
								<option value="daum.net">다음</option>
								<option value="nate.com">네이트</option>
								<option value="google.com">구글</option>
							</select>
						</li>
						<li>
							성별(<font color="red">*</font>) : 
								  <input type="radio" name="sex" id="sex" value="남성" checked>남성
								  <input type="radio" name="sex" value="여성">여성
						</li>
						<li>
							차랑소유여부(<font color="red">*</font>) : 
							      <input type="radio" name="carhave" id="carhave" value="있음" checked>있음
								  <input type="radio" name="carhave" value="없음">없음
						</li>
					</ul>
					<p>
						<input type="submit" value="회원가입" id="submit">
						<input type="reset" value="다시입력">
					</p>
				</fieldset>
			</form>
		</article>
	</section>
</body>
</html>