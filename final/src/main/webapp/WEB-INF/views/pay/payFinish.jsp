<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
	function doPay(){
		lastPay.submit();
	}
</script>
</head>
<body>
	<h2>결제페이지</h2>
	<form name="lastPay" action="lastPay.do">
		<c:forEach var="payIn" items="${listp}">
			<label>카드사:</label>${payIn.cardType1}<br>
			<label>카드구분:</label>${payIn.cardType2}<br>
			<label>카드번호:</label>${payIn.cardNum}<br>
			<label>유효기간:</label>${payIn.cardTerm}<br>
			<label>카드명:</label>${payIn.cardName}<br>
			<label>cvc:</label>${payIn.cvc}<br>
			<label>카드ID:</label>${payIn.cardId}<br>
		</c:forEach>
		<input type="button" value="결제완료" onclick="doPay()">
	</form>
</body>
</html>