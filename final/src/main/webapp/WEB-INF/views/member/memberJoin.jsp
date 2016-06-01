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
<script type="text/javascript" src="js/memberjoin.js"></script>

</head>

<body>
	<div class="contentwrap">
 		 <article class="container">
		    <div class="page-header">
			  <h1>회원가입 <small>즐거운 카풀의 시작</small></h1>
		    </div>
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
    			<input type="text" class="form-control" id="email">
   			</div>
   			<div class="col-sm-2" style="width:10px;">
    			@
   			</div>
   				
	     	 <div class="col-sm-2" style="">
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
    <div class="col-sm-6">
      <button type="submit" class="btn btn-primary">회원가입</button>
    </div>
    </div>
    </form>
  </article>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>

</body>
</html>