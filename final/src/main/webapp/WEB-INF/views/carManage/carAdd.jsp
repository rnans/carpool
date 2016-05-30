<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function addClose(){
	window.location.href = 'carList.do';
}
</script>
<script type="text/javascript" src="js/previewmodule.js"></script>
	<script type="text/javascript">
	function getNameFromPath(strFilepath) {
		var objRE = new RegExp(/([^\/\\]+)$/);
		var strName = objRE.exec(strFilepath);
		if (strName == null) {
			return null;
		} else {
			return strName[0];
		}
	}
</script>
<c:if test="${!(empty msg)}">
<script>
var msg='${msg}';

window.alert('${msg}');

</script> 
</c:if>
</head>
<body>
	<fieldset>
		<legend>차량등록</legend>
		<form name="carAdd" action="carAdd.do" method="post">
			<div>
				<input type="hidden" name="id" value="${sid }"> 
				운전자 이름:<input type="text" name="driver" readonly="readonly" value="${dto.driver }">
				<br> 
				차 번호:<input type="text" name="carnum" value="${dto.carnum }"> 
				<br> 
				차종:<input type="text" name="cartype" value="${dto.cartype }">
			</div>
			<div id="getImage"></div>
			<div>
				<input type="file" size="50" onchange="previewImage(this,'getImage',200,200);"> 
				<br>
			</div>
			<!-- <img src='이미지 경로명' width="100" height="100"/>
<br>
<input type="file"> -->
		<div> 차량인증을 해야 더욱 원활한 서비스를 이용하실 수 있습니다.
		<input type="button" value="인증하기">
				 <input	type="button" value="나중에 하기" >
				 <div id="getImage2"></div>
			<div>
				<input type="file" size="50" onchange="previewImage(this,'getImage2',200,200);"> 
				<br>
			</div>
			<input type="hidden" name="confirmphoto" value="사진없음">
		</div>
			<div>
				 <input type="button" value="취소" onclick="addClose()">
				 <input	type="submit" value="등록" >
			</div>
	
		</form>
	</fieldset>
</body>
</html>