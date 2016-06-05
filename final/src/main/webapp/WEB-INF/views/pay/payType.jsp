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
<style type="text/css">
	label{margin:0 auto;}
	h2{}
	input[type=text]{margin:0 auto;}
</style>
<script>

	function show1(){
		if($('input type[radio]').val('0')){
			$('.newCard').hide();
			$('.ownCard').fadeIn();
		}
		
		sendRequest("payData.do", null, show1Result, 'GET');
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
</style>
</head>
<body>	
	<h3>결제 정보창 페이지</h3>
	
	<form name="nae">
		<input type="radio" name="radiob" value="0" onclick="show1()">등록카드결제
		<input type="radio" name="radiob" value="1" onclick="show2()">신규결제
	</form>
	
	<hr>
	
	<div class="ownCard">
		<div class="ownCardInfo"></div>
		<hr>
	</div>
	
		<div class="newCard">
			<form name="newCardEnroll" action="newCardEnroll.do" id="newCard">
				<label>신규카드등록</label><br>
				
				<input type="hidden" name="ridx" value="${ridx}">
				
				<label>카드타입1:</label>
				<select name="cardType1">
					<option>신한은행</option><option>국민은행</option>
					<option>우리은행</option><option>농협</option>
				</select><br>
				
				<label>카드번호:</label>
				<input type="text" name="cardNum" id="num1" maxlength="4">-
				<input type="text" id="cardNum" id="num2" maxlength="4">-
				<input type="text" name="cardNum" id="num3" maxlength="4">-
				<input type="text" name="cardNum" id="num4" maxlength="4"><br>
				
				<label>카드유효기간:</label>
				<select name="cardTerm">
					<option>12</option><option>11</option><option>10</option><option>9</option>
					<option>8</option><option>7</option><option>6</option><option>5</option>
					<option>4</option><option>3</option><option>2</option><option>1</option>
				</select>년
				<select name="cardTerm">
					<option>12</option><option>11</option><option>10</option><option>9</option>
					<option>8</option><option>7</option><option>6</option><option>5</option>
					<option>4</option><option>3</option><option>2</option><option>1</option>
				</select>월<br>
				<!-- <input type="text" name="cardTerm" id="term1" placeholder="YY" maxlength="2">년/
				<input type="text" name="cardTerm" id="term2" placeholder="MM" maxlength="2">월<br> -->
				
				<label>카드이름:</label>
				<input type="text" name="cardName" placeholder="카드이름을 적어주세요"><br>
				
				<label>cvc번호:</label>
				<input type="text" name="cvc" maxlength="3" placeholder="카드뒷면 세자리 수"><br>
				
				<label>카드타입2:</label>
				<select name="cardType2">
					<option>개인</option>
					<option>법인</option>
				</select>
			</form>
			
			<p>
				<a href="javascript:value()">등록 및 결제</a>
			</p>
			
		</div>
</body>

<script type="text/javascript">

	function value(){
		
		var cardType1 = $('input[name=cardType1]');
		var num1 = $('#num1'); var num2=$('#num2');
		var num3 = $('#num4'); var num4=$('#num3');
		var term1 = $('#term1'); var term2 = $('#term2');
		var cardName = $('input[name=cardName]');
		var cvc = $('input[name=cvc]');
		var cardType2 = $('input[name=cardType2]');
		
		if(cardType1.val()==''){
			alert('카드타입1을 확인하세요'); cardType1.focus(); 
		}
		if(num1.val()==''||num2.val()==''||num3.val()==''||num4.val()==''){
			alert('카드번호을 확인하세요'); num1.focus(); 
		}
		if(term1.val()==''||term2.val()==''){
			alert('유효기간을 확인하세요'); term1.focus();
		}
		if(cardName.val()==''){
			alert('카드명을 확인하세요'); cardName.focus();
		}
		if(cvc.val()==''){
			alert('cvc번호를 확인하세요'); cvc.focus(); 
		}
		if(cardType2.val()==''){
			alert('카드타입2을 확인하세요'); cardType2.focus(); 
		}
		$('#newCard').submit();
	}
</script>
</html>