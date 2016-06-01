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
	margin-left: 200px;
	
}
#div2{
	float:left;
	width: 800px;
	height: 250px;
	margin: 5px;
	margin-left:px;
	background-color:gray;
}
#div3{
	position:;
	float:left;
	width: 800px;
	height: 650px;
	margin-top: 5px;
	margin-left: 10px;
	background-color:;
	
}


</style>
</head>
<body>
<h2>카풀등록 페이지8결제</h2>
	<div id="div1">
		<img src="1234.jpg" border="100"><br>
		<input type="button" name="pf" value="프로필사진수정" align="center">
	</div>
	
	<div id="div2">
		<legend>결제</legend>
			<c:if test="${sessionScope.data.type eq '단기' }">
			<form name="f" action="poolMemberAddConfirm.do" method="get">
			</c:if>
			<c:if test="${sessionScope.data.type eq '정기' }">
			<form name="f" action="poolMemberAddConfirm.do" method="post">
			</c:if>
				<ul>
					<li>카드종류:<select>
								<option>국민</option>							
								<option>우리</option>							
								<option>신한</option>							
								<option>농협</option>							
							  </select>
						<input type="text" size="7"></li>
					
					<li>카드번호:<input type="text" name="cnum" size="5">-
							 <input type="text" name="cnum" size="5">-
							 <input type="text" name="cnum" size="5">-
							 <input type="text" name="cnum" size="5"></li>
							 
					<li>유효기간:<input type="text" name="my" size="5">/
							 <input type="text" name="my" size="5"></li>
					<li>CVV:<input type="text" name="cvv" size="5"></li>	
					<li><select>
								<option>개인</option>	
								<option>법인</option>	
					</select></li>
					 <p>
						 <input type="button" value="이전">
						 <input type="submit" value="결제하기">
						 <input type="reset" value="다시작성">
					
					</p>
				</ul>
			</form>
	</div>
	

</body>
</html>