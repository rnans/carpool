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
<script>

window.onload=function(){
var d = new Date();

var yearEl=document.getElementById('yearEl');
var monthEl=document.getElementById('monthEl');
var dayEl=document.getElementById('dayEl');
var hourEl=document.getElementById("hourEl");
	
	for(var i=d.getFullYear();i<d.getFullYear()+5;i++)
	{
	
	yearEl.innerHTML+='<option>'+i+'</option>';
	
	}
	
	for(var i=1;i<=12;i++)	
	{
		monthEl.innerHTML+='<option value="'+i+'">'+i+'</option>';
	
	
	}
	
	setDays();
	
	for(var i=1;i<=12;i++)
	{
		hourEl.innerHTML+='<option value="'+i+'">'+i+'</option>';

	}
	
	document.getElementById("term").style.visibility = "hidden";
	document.getElementById("short").style.visibility = "hidden";
 }
 
function setDays(){
	var days=30;
		
	if(monthEl.value==1||monthEl.value==3||monthEl.value==5||monthEl.value==7||monthEl.value==8||monthEl.value==10||monthEl.value==12)
	{
		days=31;
	}
	else if(monthEl.value==2)
	{
		days=29;
	}
	else
	{
		
	}
		
	for(var i=1;i<=days;i++)
	{
	
		dayEl.innerHTML+='<option value="'+i+'">'+i+'</option>';

	}

}


function viewShort()
{
	document.getElementById("term").style.visibility = "hidden";
	document.getElementById("short").style.visibility = "visible";
}

function viewTerm()
{
	document.getElementById("short").style.visibility = "hidden";
	document.getElementById("term").style.visibility = "visible";
}
</script>
</head>
<body>
<h2>카풀등록 페이지05_01</h2>

	<input type="button" value="단기" onclick="viewShort()">
		<input type="button" value="정기" onclick="viewTerm()">
	
	<div id="div2">
		<h3>프로필</h3>
	</div>
	<div id="short">
		<form name="shortup" action="poolMasterAdd05.do">
		<input type="hidden" name="carPoolName" value="${carpoolname }">
		<input type="hidden" name="object" value="${aim }">
		<input type="hidden" name="startAddr" value="${startspot }">
		<input type="hidden" name="endAddr" value="${endspot }">
		<input type="hidden" name="passAddr" value="${route }">
		타입><input type="hidden" name="type" value="단기">
		<br>
		출발날짜><select id="yearEl" name="sy">
			</select>년
			<select id="monthEl" name="sm" onchange="setDays()">
			</select>월
			<select id="dayEl" name="sd">
			</select>일<br>
			출발시간><select name="sapm">
				<option>오전</option>
				<option>오후</option>
			</select>
			<select id="hourEl" name="sh">
			</select>시
			<select name="sm">
				<option>00</option>
				<option>30</option>
			</select>분<br>
			
			
		인원 ><select name="mannum">
				<option>1</option>
				<option>2</option>
				<option>3</option>
		   </select>명        /
		희망성별><select name="hopesex">
				<option>남성만</option>
				<option>여성만</option>
				<option>상관없음</option>
		  </select><br>
		  요금:<input type="text" name="pay" value="1000">원
         <br>
		흡연여부><input type="radio" name="smoking" value="흡연">흡연
		  	 <input type="radio" name="smoking" value="비흡연">비흡연
		<p>
			<input type="button" name="back" value="이전">
			<input type="submit" name="next" value="다음">
		</p>
		</form>
		
			
	<div id="div3">
		<legend>지도API</legend>
		<table width="500" height="400" border="1">
		</table>
	</div>
	
	</div>



	<div id="term">
		<form name="termup" action="poolMasterAdd05.do">
		<input type="hidden" name="carPoolName" value="${carpoolname }">
		<input type="hidden" name="object" value="${aim }">
		<input type="hidden" name="startAddr" value="${startspot }">
		<input type="hidden" name="endAddr" value="${endspot }">
		<input type="hidden" name="passAddr" value="${route }">
		<input type="hidden" name="type" value="정기">
		<div id="div2">
		기간:<select id="yearEl" name="lsy">
			</select>년
			<select id="monthEl" name="lsm" onchange="setDays()">
			</select>월
			<select id="dayEl" name="lsd">
			</select>일<br> 
			~
			<select id="yearEl" name="lsy2">
			</select>년
			<select id="monthEl" name="lsm2" onchange="setDays()">
			</select>월
			<select id="dayEl" name="lsd2">
			</select>일<br>
			
			출발시간:<select name="lapm">
				<option>오전</option>
				<option>오후</option>
			</select>
			<select id="hourEl" name="lh">
			</select>시
			<select name="lm">
				<option>00</option>
				<option>30</option>
			</select>분<br>
			
			
			
			<select name="lapm">
				<option>오전</option>
				<option>오후</option>
			</select>
			<select id="hourEl" name="lh">
			</select>시
			<select name="lm">
				<option>00</option>
				<option>30</option>
			</select>분<br>
		
		
		
         <br>
         반복:<input type="checkbox" name="1" value="월">월
         <input type="checkbox"  name="2" value="화">화
         <input type="checkbox"  name="3" value="수">수
         <input type="checkbox"  name="4" value="목">목
         <input type="checkbox"  name="5" value="금">금
         <input type="checkbox"  name="6" value="토">토
         <input type="checkbox"  name="7" value="일">일
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
         </select>명 /
         희망성별: <select name="hopesex">
            <option>혼성</option>
            <option>남성만</option>
            <option>여성만</option>
         </select>
		</div>

		<br>
	<input type="button" value="이전"> 
			<input type="submit" value="다음">
	</form>

	</div>
</body>
</html>