<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/jquery-1.12.4.min.js"></script>
<script src="js/httpRequest.js"></script>
<link rel="stylesheet" type="text/css" href="CSS/set1.css" />
<link rel="stylesheet" type="text/css" href="CSS/pay.css" />
<style>
	#rig2{
		text-align: right;
	}
	#rig2 a{
		color: black;
	}
.button{
	float: none;
	margin:0 auto;
}

</style>
<script src="/final02/js/httpRequest.js"></script>
<script src="https://code.jquery.com/jquery-2.2.3.js"></script>
<script src="/final02/bootstrap/js/bootstrap.js"></script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
<link href="/final02/CSS/cssReset.css" rel="stylesheet" type="text/css" />
<link href="/final02/fonts/font-awesome-4.3.0/css/font-awesome.css" rel="stylesheet" type="text/css" />

<!-- 텍스트상자 -->
<link rel="stylesheet" type="text/css" href="/final02/CSS/set1.css" />

<!-- 로그인 버튼 -->
<link rel="stylesheet" type="text/css" href="/final02/CSS/buttons.css" />

<!-- 로그인 모달사용 -->
<link rel="stylesheet" type="text/css" href="/final02/CSS/dialog-sally.css" />
<link rel="stylesheet" type="text/css" href="/final02/CSS/dialog.css" />


<link href="/final02/CSS/bootstrap.css" rel="stylesheet" type="text/css"/>
<link href="/final02/CSS/menu.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/pay.js"></script>
<script>

	function show1(){
		
		var param ='ridx=${ridx}';

		if($('input type[radio]').val('0')){
			$('.newCard').hide();
			$('.ownCard').fadeIn();
		}
		
		sendRequest("payData.do",param, show1Result, 'GET');
	}
	
	function show1Result(){
		if(XHR.readyState==4){
			if(XHR.status==200){
				$('.ownCardInfo').html(XHR.responseText);
			}
		}
	}
	
	function show2(){
		if($('input type[radio]').val('1')){
			$('.ownCard').hide();
			$('.newCard').fadeIn();
		}
	}
	
	function payPage(){
		location.href="sample_crossplatform.rms";
	}
</script>

<style>

	.ownCard{display:none;}
	.newCard{display:none;}
	input[type=text]{height:15px;}
	.newCard{width:400px;}
	.btn_confirm2{margin-top:7px;inline-block;padding:8px 30px;background-color:#2185c5;border-radius:7px;color:#fff;
	margin-top:10px;}
	input[type=radio]{}
	fieldset {
		border: 1px solid black !important;
		margin: 0;
		xmin-width: 0;
		padding: 10px;       
		position: relative;
		border-radius:4px;
		background-color:#B2CCFF;
		padding-left:10px!important;
	}
	legend
	{
		font-size:14px;
		font-weight:bold;
		font-family:cursive;
		margin-bottom: 0px; 
		width: 35%; 
		border: 1px solid black !important;
		border-radius: 4px; 
		padding: 5px 5px 5px 10px; 
		background-color: #B2CCFF;
		text-align: center;
	}
	.panel-body{width:300px;}
	input[type=radio]{text-align: center;}
	.newCard{margin:0px auto;}
	.panel-heading{background-color:#B2CCFF; }
	.btn span.glyphicon {opacity: 0;}
	.btn.active span.glyphicon {opacity: 1;}
	.btn-group{margin-top:20px;}
	hr{border:3px; }
	
</style>
</head>
<body>	
	<div class="section" style="width:460px; margin: 0px auto;">
	
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<div class="btn-group">		
			<label class="btn btn-success active">
				<input type="radio" name="radiob" value="0" onclick="show1()" style="display:none">등록카드결제
			</label>

			<label class="btn btn-primary">
				<input type="radio" name="radiob" value="1" onclick="show2()" style="display:none">신규카드결제
			</label>
		</div>
	</div>
	
	<hr>
	
	<div class="ownCard">
		<div class="ownCardInfo">
		</div>
	</div>
		<div class="newCard">
			<form name="newCardEnroll" action="newCardEnroll.do" id="newCard">
		
				<div class="container" style="border:1px solid #4374D9 !important">
					<br/>
				<div class="panel panel-default">
    	
					<div class="panel-heading">카드를 등록해주세요^^</div>
					<div class="panel-body">
		            
		            <fieldset class="col-md-6">    	
							<legend>신규카드정보입력</legend>
					
					<div class="panel panel-default">
						<div class="panel-body">
		
					<input type="hidden" name="ridx" value="${ridx}">
					
					<section class="content bgcolor-8">
						<span class="input input--isao">
							<input class="input__field input__field--isao"
							placeholder="은행명까지 입력하세요 ex)신한은행" name="cardType1" type="text" id="input-38" maxlength="16"/>
							<label class="input__label input__label--isao" for="input-38" data-content="은행구분">
								<span class="input__label-content input__label-content--isao">은행명</span>
							</label>
						</span>
					</section>
					
					<section class="content bgcolor-8">
						<span class="input input--isao">
							<input class="input__field input__field--isao"
							placeholder="-을  생략하고 입력해주세요" name="cardNum" type="text" id="num1" maxlength="16"/>
							<label class="input__label input__label--isao" for="input-38" data-content="카드번호">
								<span class="input__label-content input__label-content--isao">카드번호</span>
							</label>
						</span>
					</section>
					
					&nbsp;&nbsp;&nbsp;<select name="cardTerm" style="width:100px;height:25px;">
						<option>2016</option><option>2017</option><option>2018</option><option>2019</option>
						<option>2020</option><option>2021</option><option>2022</option><option>2023</option>
						<option>2024</option><option>2025</option>
					</select>년
					<select name="cardTerm" style="height:25px;">
						<option>12</option><option>11</option><option>10</option><option>9</option>
						<option>8</option><option>7</option><option>6</option><option>5</option>
						<option>4</option><option>3</option><option>2</option><option>1</option>
					</select>월<br>
					
					<section class="content bgcolor-8">
						<span class="input input--isao">
							<input class="input__field input__field--isao" name="cardName" 
							placeholder="등록하고자 하는 카드명을 입력하세요" type="text" id="input-38" />
							<label class="input__label input__label--isao" for="input-38" data-content="카드이름">
								<span class="input__label-content input__label-content--isao">카드명</span>
							</label>
						</span>
						<span class="input input--isao">
							<input class="input__field input__field--isao" 
							placeholder="CVC번호 3자리를 입력하세요" name="cvc" type="text" id="input-39" maxlength="3" />
							<label class="input__label input__label--isao" for="input-39" data-content="CVC">
								<span class="input__label-content input__label-content--isao">CVC번호</span>
							</label>
						</span>
					</section>
				
					&nbsp;&nbsp;&nbsp;<select name="cardType2" style="width:200px;height:25px;">
						<option>개인</option>
						<option>법인</option>
					</select>
					
						</div>
					</div>	
				</fieldset>
				<div class="clearfix"></div>
           		 </div>
				</div>
			</div>
			</form>
			<p>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:value()" class="btn_confirm2" style="text-decoration: none;">등록 및 결제하기</a>
			</p>
		</div>
</body>

<script type="text/javascript">

	function value(){
		var cardType1 = $('input[name=cardType1]');
		var num1 = $('#num1');
		var term1 = $('#term1'); var term2 = $('#term2');
		var cardName = $('input[name=cardName]');
		var cvc = $('input[name=cvc]');
		var cardType2 = $('input[name=cardType2]');
		
		if(cardType1.val()==''){
			alert('카드은행명을 확인하세요'); cardType1.focus(); return;
		}
		if(num1.val()==''){
			alert('카드번호을 확인하세요'); num1.focus(); return;
		}
		/* if(num1.val().length<4 ||
			num2.val().length<4 ||
			num3.val().length<4 ||
			num4.val().length<4){
			alert('카드번호를 올바르게 입력해주세요'); num1.focus();  return;
		} */
		if(term1.val()==''||term2.val()==''){
			alert('유효기간을 확인하세요'); term1.focus(); return;
		}
		if(cardName.val()==''){
			alert('카드명을 확인하세요'); cardName.focus();  return;
		}
		if(cvc.val()==''){
			alert('cvc번호를 확인하세요'); cvc.focus();   return;
		}
		if(cardType2.val()==''){
			alert('카드구분을 확인하세요'); cardType2.focus(); return;
		}
		if(confirm("결제를 완료하시겠습니까?")){
			$('#newCard').submit();
		}else{
			
		}
	}
</script>
<script type="text/javascript">
	(function() {
		
		if (!String.prototype.trim) {
			(function() {
				var rtrim = /^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g;
				String.prototype.trim = function() {
					return this.replace(rtrim, '');
				};
			})();
		}
	
		[].slice.call( document.querySelectorAll( 'input.input__field' ) ).forEach( function( inputEl ) {
			if( inputEl.value.trim() !== '' ) {
				classie.add( inputEl.parentNode, 'input--filled' );
			}
	
			// events:
			inputEl.addEventListener( 'focus', onInputFocus );
			inputEl.addEventListener( 'blur', onInputBlur );
		} );
	
		function onInputFocus( ev ) {
			classie.add( ev.target.parentNode, 'input--filled' );
		}
	
		function onInputBlur( ev ) {
			if( ev.target.value.trim() === '' ) {
				classie.remove( ev.target.parentNode, 'input--filled' );
			}
		}
	})();
</script>

</html>