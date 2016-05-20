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

	<input type="button" value="단기">
		<input type="button" value="정기">
	
	<div id="div2">
		<h3>프로필</h3>
	</div>
		<form name="shortup" action="poolMemberAdd04.do">
		타입>
		<br>
		출발일시><select name="sy">
				<option>2016</option>
			</select>년
			<select name="sm">
				<option>1</option>
				<option>2</option>
				<option>3</option>
				<option>4</option>
				<option>5</option>
			</select>월
			<select name="sd">
				<option>1</option>
				<option>2</option>
				<option>3</option>
				<option>4</option>
				<option>5</option>
			</select>일<br>
			<select name="sapm">
				<option>오전</option>
				<option>오후</option>
			</select>
			<select name="sh">
				<option>1</option>
				<option>2</option>
				<option>3</option>
			</select>시
			<select name="sm">
				<option>10</option>
				<option>30</option>
				<option>00</option>
			</select>분<br>
			
			
		인원 ><select name="mannum">
				<option>1</option>
				<option>2</option>
				<option>3</option>
		   </select>명        /
		성별><select name="gender">
				<option>남성만</option>
				<option>여성만</option>
				<option>상관없음</option>
		  </select><br>
		흡연여부><input type="radio" name="smoking" value="흡연">흡연
		  	 <input type="radio" name="smoking" value="비흡연">비흡연
		<p>
			<input type="button" name="back" value="이전">
			<input type="submit" name="next" value="다음">
		</p>
		</form>
	</div>
	
	<div id="div3">
		<legend>지도API</legend>
		<table width="500" height="400" border="1">
		</table>
	</div>


	<fieldset>

		<legend>정기 등록</legend>
		<form name="termup" action="poolMemberAdd04.do">
		<fieldset>

			<legend>세부 정보</legend>	
			
			<div id="div1">	
			유형:<input type="radio"  name="type" value="단기">단기
		<input type="radio" name="type" value="장기">장기
		<br>
		</div>
		<div id="div2">
		기간:
		<select name="lsy">
            <option>2016</option>
         </select>년
         <select name="lsm">
            <option>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
         </select>월
         <select name="lsd">
            <option>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
         </select>일       ~ 
		<select name="ley">
            <option>2016</option>
         </select>년
         <select name="lem">
            <option>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
         </select>월
         <select name="led">
            <option>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
         </select>일
         <br>
         시간:
          <select name="lapm">
            <option>오전</option>
            <option>오후</option>
         </select>
         <select name="lh">
            <option>1</option>
            <option>2</option>
            <option>3</option>
         </select>시
         <select name="lm">
            <option>10</option>
            <option>30</option>
            <option>59</option>
         </select>분
         <br>
         반복:<input type="checkbox" name="days" value="월">월
         <input type="checkbox"  name="days" value="화">화
         <input type="checkbox"  name="days" value="수">수
         <input type="checkbox"  name="days" value="목">목
         <input type="checkbox"  name="days" value="금">금
         <input type="checkbox"  name="days" value="토">토
         <input type="checkbox"  name="days" value="일">일
         <br>
         요금:<input type="text" name="pay" value="1000">원
         <br>
      흡연여부:<input type="radio" name="smoking" value="흡연">흡연
            <input type="radio" name="smoking" value="비흡연">비흡연
            <br>
         인원:<select name="mannum">
            <option>1</option>
            <option>2</option>
            <option>3</option>
         </select>명  
         <br>
         성별: <select name="gender">
            <option>혼성</option>
            <option>남성만</option>
            <option>여성만</option>
         </select>
		</div>
		</fieldset>
		<br>
	<input type="button" value="이전"> 
			<input type="submit" value="다음">
	</form>
	</fieldset>
	
</body>
</html>