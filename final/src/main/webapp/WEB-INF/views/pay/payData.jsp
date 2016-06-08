<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
<style>
	.card{height:230px;}
	label{float:left;}
	input[type=image]{float:left;margin-bottom:30px;margin-right:15px;height:180px;width:250px;padding-left:10px;}
	input[type=text]{height:30px;}
	.clbo{clear:both;}
	.btn_confirm1{width:170px;display:inline-block;
	padding:10px 20px;background-color:#2185c5;border-radius:7px;
	color:#fff;line-height:8px;margin-top: 5px;}
</style>
</head>
<body>
	<div class="section">
		<div class="clbo"></div>
			
		<div class="card">
			<c:if test="${empty lists}">등록된 카드 정보가 없습니다.</c:if>
		
			<c:forEach var="pay" items="${lists}">
				
				<input type="image" name="cardImg" src="${pay.cardImg}">
					<c:url var="payURL" value="lastPay.do">
						<c:param name="cardId">${pay.cardId}</c:param>
						<c:param name="ridx">${ridx}</c:param>
					</c:url>
				<label>은행구분 :</label>&nbsp;
				<input type="text" value="${pay.cardType1}" disabled><br>
				<label>카드번호 :</label>&nbsp;
				<input type="text" value="${pay.cardNum}" disabled><br>
				<label>카드이름 :</label>&nbsp;
				<input type="text" value="${pay.cardName}" disabled><br>
				<label>유효기간 :</label>&nbsp;
				<input type="text" value="${pay.cardTerm}" disabled><br>
				<label>CVC번호 :</label>&nbsp;
				<input type="text" value="${pay.cvc}" disabled><br>
				<a href="javascript:dopay()" class="btn_confirm1" style="text-decoration: none;">이 카드로 결제하기</a><br>
				<div class="clbo"></div>
				<hr>
			</c:forEach>
		</div>
	</div>
</body>

<script type="text/javascript">
	function dopay(){
		if(confirm("결제를 완료하시겠습니까?")){
			location.href='${payURL}';
		}else{
			
		}
	}
</script>
</html>