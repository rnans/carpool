<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="https://code.jquery.com/jquery-2.2.3.js"></script>
<body>
<script type="text/javascript">
function costsbmit() {
	var costday = $("input[name=costday]").val();
	var cost = $("input[name=cost]").val();
	var km = $("input[name=km]").val();
	if((costday=='')||(cost=='')||(km=='')){
		alert("필수 입력칸을 채워주세요");
	}else{
		$("#costFrm").submit();
	}
	
}
</script>
<form  action="costReg_ok.do" id="costFrm">
<fieldset>
	<legend>비용등록</legend>
	<font color="red">*</font>표시는 필수 입력사항입니다.<br><br>
	<select name="category">
		<option>유형</option>
		<option>주유</option>
		<option>정비</option>
		<option>물품구입</option>
	</select><br>
	날짜(<font color="red">*</font>)<input type="text" name="costday" placeholder="예)2016-01-01"><br>
	비고<input type="text" name="bigo"><br>
	금액(<font color="red">*</font>)<input type="number" name="cost">원<br>
	주행거리(<font color="red">*</font>)<input type="number" name="km">km<br>
	<input type="hidden" name="id" value="${ sid }">
	<input type="hidden" name="carnum" value="${carnum }">
	<!-- <input type="submit" value="등록"> -->
	<input type="button" value="등록" onclick="costsbmit()">
	<input type="button" value="취소" onclick="javascript:window.self.close()">
</fieldset>
</form>
</body>
</html>