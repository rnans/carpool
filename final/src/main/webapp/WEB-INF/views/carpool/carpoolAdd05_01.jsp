<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	background-color:gray;
}
#div2{
	float:left;
	width: 450px;
	height: 400px;
	margin: 5px;
	
}
#div3{
	float:left;
	width: 400px;
	height: 400px;
	margin: 5px;
	
}


</style>
</head>
<body>
<h2>카풀등록 페이지05_01</h2>
	<div id="div1">
		<h3>카풀등록</h3>
	</div>
	
	<div id="div2">
		<form name="f" action="#">
	
		타입>
		<input type="button" value="단기">
		<input type="button" value="정기"><br>
		출발일시><select>
				<option>2016</option>
			</select>년
			<select>
				<option>1</option>
				<option>2</option>
				<option>3</option>
				<option>4</option>
				<option>5</option>
			</select>월
			<select>
				<option>1</option>
				<option>2</option>
				<option>3</option>
				<option>4</option>
				<option>5</option>
			</select>일<br>
			<select>
				<option>오전</option>
				<option>오후</option>
			</select>
			<select>
				<option>1</option>
				<option>2</option>
				<option>3</option>
			</select>시
			<select>
				<option>10</option>
				<option>30</option>
				<option>59</option>
			</select>분<br>
			
			
		인원 ><select>
				<option>1</option>
				<option>2</option>
				<option>3</option>
		   </select>명        /
		성별><select>
				<option>남</option>
				<option>여</option>
				<option>트렌스</option>
		  </select><br>
		흡연여부><input type="radio" name="ss" value="흡연">흡연
		  	 <input type="radio" name="ss" value="비흡연">비흡연
		<p>
			<input type="button" name="back" value="이전">
			<input type="button" name="next" value="다음">
		</p>
		</form>
	</div>
	
	<div id="div3">
		<legend>지도API</legend>
		<table width="500" height="400" border="1">
		</table>
	</div>

</body>
</html>