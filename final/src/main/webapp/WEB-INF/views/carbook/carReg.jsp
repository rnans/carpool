<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<fieldset>
	<legend>차량등록</legend>
	사진등록
	<div>
	차종<select name=car1>
	<option>국내</option>
	<option>해외</option>
		</select><br>
	<select name=car2>
	<option>회사명</option>
	<option>BMW</option>
	<option>현대</option>
		</select><br>
	<select name=car3>
	<option>차종</option>
	<option>모닝</option>
	<option>벤츠</option>
		</select><br>
	차번호<input type="text" name="carnum"><br>
	공인연비<input type="text" name="oil"><br>
	</div>
	<input type="submit" value="등록">
	<input type="button" value="취소">
</fieldset>
</body>
</html>