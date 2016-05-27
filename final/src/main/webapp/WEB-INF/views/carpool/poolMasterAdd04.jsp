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

	document.getElementById("term").style.display = "none";
	document.getElementById("short").style.display = "none";
 }
 
function setDays(){
	var days=30;
	var d = new Date();
	var dayEl=document.getElementById('dayEl');
	
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
		if(i==d.getDate())
		{
			dayEl.innerHTML+='<option value="'+i+'" selected>'+i+'</option>';
		}
		else
		{
			dayEl.innerHTML+='<option value="'+i+'">'+i+'</option>';
		}
		

	}

} 
 
function setDays2(){
	var days=30;
	var d = new Date();
	var dayEl=document.getElementById('lsd');
	
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
		if(i==d.getDate())
		{
			dayEl.innerHTML+='<option value="'+i+'" selected>'+i+'</option>';
		}
		else
		{
			dayEl.innerHTML+='<option value="'+i+'">'+i+'</option>';
		}
		

	}

}


function viewShort()
{
	document.getElementById("term").style.diplay = "none";
	document.getElementById("short").style.display = "block";
	
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
			if(i==d.getMonth()+1)
			{
				monthEl.innerHTML+='<option value="'+i+'" selected>'+i+'</option>';
			}
			
			monthEl.innerHTML+='<option value="'+i+'">'+i+'</option>';
		
		}
		
		setDays();
		
		for(var i=1;i<=12;i++)
		{
			if(d.getHours()-12>0)
			{
				if(i==(d.getHours()-12))
				{
					hourEl.innerHTML+='<option value="'+i+'" selected>'+i+'</option>';
				}
				hourEl.innerHTML+='<option value="'+i+'">'+i+'</option>';
			}
			else if(i==d.getHours())
			{
				hourEl.innerHTML+='<option value="'+i+'" selected>'+i+'</option>';
			}
			else
			{
				hourEl.innerHTML+='<option value="'+i+'">'+i+'</option>';
			}
		}
		
		var apmEl=document.getElementById('apmEl');
		
		if((d.getHours()-12)>=0)
		{
			apmEl.value='오후';
		}
		
}

function setDays3(){
	var days=30;
	var d = new Date();
	var dayEl2=document.getElementById('led');
	
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
		if(i==d.getDate())
		{
			dayEl2.innerHTML+='<option value="'+i+'" selected>'+i+'</option>';
		}
		else
		{
			dayEl2.innerHTML+='<option value="'+i+'">'+i+'</option>';
		}
		

	}

}


function viewTerm()
{
	document.getElementById("short").style.display = "none";
	document.getElementById("term").style.display = "block";
	
	var d = new Date();

	var yearEl=document.getElementById('lsy');
	var monthEl=document.getElementById('lsm');
	
	var yearEl2=document.getElementById('ley');
	var monthEl2=document.getElementById('lem');


	var hourEl=document.getElementById("lh");
		
		for(var i=d.getFullYear();i<d.getFullYear()+5;i++)
		{
		
			yearEl.innerHTML+='<option>'+i+'</option>';
			yearEl2.innerHTML+='<option>'+i+'</option>';
		}
		
		for(var i=1;i<=12;i++)
		{
			if(i==d.getMonth()+1)
			{
				monthEl.innerHTML+='<option value="'+i+'" selected>'+i+'</option>';
				monthEl2.innerHTML+='<option value="'+i+'" selected>'+i+'</option>';
			}
			
			monthEl.innerHTML+='<option value="'+i+'">'+i+'</option>';
			monthEl2.innerHTML+='<option value="'+i+'">'+i+'</option>';
		
		}
		
		setDays2();
		setDays3();
		
		for(var i=1;i<=12;i++)
		{
			if(d.getHours()-12>0)
			{
				if(i==(d.getHours()-12))
				{
					hourEl.innerHTML+='<option value="'+i+'" selected>'+i+'</option>';
				}
				hourEl.innerHTML+='<option value="'+i+'">'+i+'</option>';
			}
			else if(i==d.getHours())
			{
				hourEl.innerHTML+='<option value="'+i+'" selected>'+i+'</option>';
			}
			else
			{
				hourEl.innerHTML+='<option value="'+i+'">'+i+'</option>';
			}
		}
		
		var apmEl=document.getElementById('lapm');
		
		if((d.getHours()-12)>=0)
		{
			apmEl.value='오후';
		}
		
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
		<form name="shortup" action="poolMasterAdd05.do" method="get">
		타입<input type="hidden" name="termtype" value="단기">
		<br>
		출발일시<select id="yearEl" name="sy">
			</select>년
			<select id="monthEl" name="sm" onchange="setDays()">
			</select>월
			<select id="dayEl" name="sd">
			</select>일<br>
			<select id="apmEl" name="sapm">
				<option value="오전">오전</option>
				<option value="오후">오후</option>
			</select>
			<select id="hourEl" name="sh">
			</select>시
			<select name="smi">
				<option value="00">00</option>
				<option value="30">30</option>
			</select>분<br>
			
			
		인원<select name="mannum">
				<option>1</option>
				<option>2</option>
				<option>3</option>
		   </select>명        /
		성별<select name="gender">
				<option>상관없음</option>
				<option>남성만</option>
				<option>여성만</option>
		  </select><br>
		요금<input type="text" name="pay"><br>
		흡연여부<input type="radio" name="smoking" value="흡연">흡연
		  	 <input type="radio" name="smoking" value="비흡연">비흡연
		<p>
			<input type="button" name="back" value="이전">
			<input type="submit" name="next" value="다음">
		</p>
		</form>
		
			
	<div id="div3">
		<table width="500" height="400" border="1">
		지도 API
		</table>
	</div>
	
	</div>



	<div id="term">
		<form name="termup" action="poolMasterAdd05.do" method="post">
		<input type="hidden" name="termtype" value="정기">
		<div id="div2">
		기간
		<select id="lsy" name="lsy">
         </select>년
         <select id="lsm" name="lsm" onchange="setDays()">
         </select>월
         <select id="lsd" name="lsd">
         </select>일       ~ 
		<select id="ley" name="ley">
         </select>년
         <select id="lem" name="lem" onchange="setDays2()">
         </select>월
         <select id="led" name="led">
         </select>일
         <br>
         시간
          <select id="lapm" name="lapm">
            <option>오전</option>
            <option>오후</option>
         </select>
         <select id="lh" name="lh">
         </select>시
         <select id="lmi" name="lmi">
            <option value="00">00</option>
            <option value="30">30</option>
         </select>분
         <br>
         반복<input type="checkbox" name="mon" value="월">월
         <input type="checkbox"  name="tue" value="화">화
         <input type="checkbox"  name="wed" value="수">수
         <input type="checkbox"  name="thu" value="목">목
         <input type="checkbox"  name="fri" value="금">금
         <input type="checkbox"  name="sat" value="토">토
         <input type="checkbox"  name="sun" value="일">일
         <br>
         요금<input type="text" name="pay" value="1000">원
         <br>
      흡연여부<input type="radio" name="smoking" value="흡연">흡연
            <input type="radio" name="smoking" value="비흡연">비흡연
            <br>
         인원<select name="mannum">
            <option>1</option>
            <option>2</option>
            <option>3</option>
         </select>명  
         <br>
         성별<select name="gender">
            <option>상관없음</option>
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