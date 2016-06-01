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