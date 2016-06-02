<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>회원가입</title>
<!-- Bootstrap -->
<link href="/final02/bootstrap/css/bootstrap.min.css.join" rel="stylesheet">
<!-- font awesome -->
<link rel="stylesheet" href="/final02/CSS/font-awesome.min.css" media="screen" title="no title">
<!-- Custom style -->
<link rel="stylesheet" href="/final02/CSS/style.css" media="screen" title="no title">

<!-- 아이디 비번 체크 ajax-->
<script type="text/javascript" src="js/httpRequest.js"></script>
<script type="text/javascript" src="js/idpwdCheck.js"></script>

<!-- email 뒷부분 설정 -->
<script type="text/javascript" src="js/emailCheck.js"></script>

<!-- 생년월일, 폰번호 한글입력 방지 ajax -->
<script src="https://code.jquery.com/jquery-2.2.3.js"></script>
<script src="js/birthphonenumCheck.js"></script>

<!-- 회원가입 빈칸입력시 가입방지 jquery -->
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
jQuery( function($) { // HTML 문서를 모두 읽으면 포함한 코드를 실행

	// 정규식을 변수에 할당
	// 정규식을 직접 작성할 줄 알면 참 좋겠지만
	// 변수 우측에 할당된 정규식은 검색하면 쉽게 찾을 수 있다 
	// 이 변수들의 활약상을 기대한다
	// 변수 이름을 're_'로 정한것은 'Reguar Expression'의 머릿글자
	var re_id = /^[a-z0-9_-]{5,12}$/; // 아이디 검사식
	var re_pw = /^[a-z0-9_-]{6,18}$/; // 비밀번호 검사식
	var re_birth = /^[0-9]{6,6}$/;
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
		email = $('#email'),
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
		} else if(re_birth.test(birth.val())!=true) { // 생년월일 검사
			alert('생년월일을 올바르게 입력해 주세요.');
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
		} else if(email.val() == "") { // 이메일 검사
			alert('이메일을 올바르게 입력해 주세요.');
			email.focus();
			return false;
		} else if(email2.val() == "") { // 이메일 검사
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
</script>
<style>
#joinbu{
	float : none;
	margin-left: 652px;
}
#main{
	margin-left: 100px;
}
</style>
</head>

<body>
	<div class="contentwrap">
 		 <article class="container">
		    <div class="page-header">
			  <h1>회원가입 <small>즐거운 카풀의 시작</small></h1>
		    </div>
		<div class="container" id="main" style="width:100%">
   		<form role="form" name="memberJoin" class="form-horizontal form" action="memberJoin.do" method="post">
		    
		<div class="form-group">
		   		 <label for="id" class="col-sm-2 control-label">아이디</label>
		   	 <div class="col-sm-6">
    			<input type="text" class="form-control" name="id" id="id" onblur="idCheck()">
    			<span id="idmsg">영문+숫자 or 영문,숫자로 된 5~12 문자</span>
		   	 </div>		   	 
		</div>
		
		   
   		<div class="form-group">
    			<label for="pwd" class="col-sm-2 control-label">비밀번호</label>
   			 <div class="col-sm-6">
   				<input type="password" class="form-control" name="pwd" id="pwd" placeholder="비밀번호">			
  			 </div>
   		</div>
   		
        <div class="form-group">
    			<label for="pwd2" class="col-sm-2 control-label">비밀번호 확인</label>
    		 <div class="col-sm-6">
   				<input type="password" class="form-control" name="pwd2" id="pwd2" placeholder="비밀번호 확인" onblur="pwdCheck()">
   				 <span id="pwdmsg">영문+숫자 or 영문,숫자로 된 6~18 문자</span>	
   			 </div>
   		</div>
   		
   		 
    	<div class="form-group">
   				<label for="name" class="col-sm-2 control-label">이름</label>
    		 <div class="col-sm-6">
   		 		<input type="text" class="form-control" name="name" id="name">
    		 </div>
   		</div>
   		
   		<div class="form-group">
   				<label for="birth" class="col-sm-2 control-label">생년월일</label>
    		 <div class="col-sm-6">
   		 		<input type="text" class="form-control" name="birth" id="birth" placeholder="ex) 900415형식으로 입력하세요.">
    		 </div>
   		</div>
   		
   		<div class="form-group">
   				<label for="phonenum" class="col-sm-2 control-label">연락처</label>
    		 <div class="col-sm-6">
   		 		<input type="text" class="form-control" name="phonenum" id="phonenum" placeholder="ex) 01012345678 형식으로 입력하세요.">
    		 </div>
   		</div>
   		
   		<div class="form-group">
   				<label for="addr" class="col-sm-2 control-label">거주지역</label>
    		 <div class="col-sm-6">
   		 		<select name="addr" id="addr" class="form-control">
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
							
    		 </div>
   		</div>
   		
   		<div class="form-group" style="width:100%;">
   				<label for="email" class="col-sm-2 control-label" style="margin-right : 4px;">이메일</label>
   				<div style="width: 98%;">
    		<div class="col-sm-2" style="padding-right: 0px; margin-right: 0px;">
    			<input type="text" class="form-control" id="email" name="email" >
   			</div>
   			<div class="col-sm-2" style="width:10px;">
    			@
   			</div>
   				
	     	 <div class="col-sm-2">
	     			<input type="text" name="email2" value="" id="email2" readonly="true" class="form-control">
	     	 </div>
	     	 <div class="col-sm-2">
			        <select class="form-control" name="emailCheck" onchange="SetEmailTail(emailCheck.options[this.selectedIndex].value)">
								<option value="notSelected">::선택하세요::</option>
								<option value="etc">직접입력</option>
								<option value="naver.com">네이버</option>
								<option value="daum.net">다음</option>
								<option value="nate.com">네이트</option>
								<option value="google.com">구글</option>
				    </select>
			 </div>
			 </div>
    	 </div>
    
      <div class="form-group">
   		 <label for="sex" class="col-sm-2 control-label">성별</label>
    		<div class="col-sm-1 radio">
    	 <label>
       		 <input type="radio" name="sex" id="sex" value="남성" checked>남성
  		 </label>
  		 	</div>
  		 	<div class="col-sm-1 radio">
  		 <label>
       		 <input type="radio" name="sex" id="sex" value="여성">여성
  		 </label>
  			</div>
   	   </div>
   	   
   	   <div class="form-group">
   		 <label for="carhave" class="col-sm-2 control-label">차량소유여부</label>
    		<div class="col-sm-1 radio">
    	 <label>
       		 <input type="radio" name="carhave" id="carhave" value="있음" checked>있음
  		 </label>
  		 	</div>
  		 	<div class="col-sm-1 radio">
  		 <label>
       		 <input type="radio" name="carhave" id="carhave" value="없음">없음
  		 </label>
  			</div>
   	   </div>
    <div class="form-group">
    <label for="inputName" class="col-sm-2 control-label"></label>
    <div class="col-sm-2" id="joinbu">
      <button type="submit" class="btn btn-primary">회원가입</button>
    </div>
    </div>
    
    </form>
    </div>
  </article>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>

</body>
</html>