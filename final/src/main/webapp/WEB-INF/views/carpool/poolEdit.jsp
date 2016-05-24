<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파티풀 수정하기</title>
<script>
window.onload=function()
{
	var d = new Date();
	
	var yearEl=document.getElementById('yearEl');
	var monthEl=document.getElementById('monthEl');
	var dayEl=document.getElementById('dayEl');
	var hourEl=document.getElementById("hourEl");
	
	var sDate='${dto.starttime}';
	var sYear=sDate.substring(0,4);
	var sMonth=sDate.substring(5,7);
	var sDays=sDate.substring(8,10);
	var sHour=sDate.substring(11,13);
	
	var type='${dto.termtype}';
		
	if(type=='단기')
	{
	
		for(var i=sYear;i<d.getFullYear()+5;i++)
		{
		
			if(i==sYear)
			{
				yearEl.innerHTML+='<option value="'+i+'" selected>'+i+'</option>'
			}
			else
			{
				yearEl.innerHTML+='<option value="'+i+'">'+i+'</option>';
			}
		}
		
		for(var i=1;i<=12;i++)
		{
			if(i==sMonth)
			{
				monthEl.innerHTML+='<option value="'+i+'" selected>'+i+'</option>'
			}
			else
			{
				monthEl.innerHTML+='<option value="'+i+'">'+i+'</option>';
			}
		
		}
		
		setDays();
		
		for(var i=1;i<=12;i++)
		{
			if(sHour-12>0)
			{
				if(i==(sHour-12))
				{
					hourEl.innerHTML+='<option value="'+i+'" selected>'+i+'</option>';
				}
				hourEl.innerHTML+='<option value="'+i+'">'+i+'</option>';
			}
			else if(i==sHour)
			{
				hourEl.innerHTML+='<option value="'+i+'" selected>'+i+'</option>';
			}
			else
			{
				hourEl.innerHTML+='<option value="'+i+'">'+i+'</option>';
			}
		}
		
		var sapmEl=document.getElementById('sapm');
		
		if((sHour-12)>=0)
		{
			sapmEl.value='오후';
		}
	/* 	
		document.getElementById("term").style.visibility = "hidden";
		document.getElementById("short").style.visibility = "hidden";
		 */
	
	}
	else
	{
		var sDate='${dto.startdate}';
		var sYear=sDate.substring(0,4);
		var sMonth=sDate.substring(5,7);
		var sDays=sDate.substring(8,10);
		
		var eDate='${dto.enddate}';
		var eYear=eDate.substring(0,4);
		var eMonth=eDate.substring(5,7);
		var eDays=eDate.substring(8,10);
		
		
		
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
				if(i==sMonth)
				{
					monthEl.innerHTML+='<option value="'+i+'" selected>'+i+'</option>';
					
				}
				if(i==eMonth)
				{
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
		
		var days='${dto.days}';
		
		var arrDays=days.split(' ');
		
		var monEl=document.getElementById('mon');
		var tueEl=document.getElementById('tue');
		var wedEl=document.getElementById('wed');
		var thuEl=document.getElementById('thu');
		var friEl=document.getElementById('fri');
		var satEl=document.getElementById('sat');
		var sunEl=document.getElementById('sun');
		
		for(var i=0;i<arrDays.length;i++)
		{
			if(arrDays[i]==monEl.value)
			{
				monEl.checked=true;
			}
			else if(arrDays[i]==tueEl.value)
			{
				tueEl.checked=true;
			}
			else if(arrDays[i]==wedEl.value)
			{
				wedEl.checked=true;
			}
			else if(arrDays[i]==thuEl.value)
			{
				thuEl.checked=true;
			}
			else if(arrDays[i]==friEl.value)
			{
				friEl.checked=true;
			}
			else if(arrDays[i]==satEl.value)
			{
				satEl.checked=true;
			}
			else if(arrDays[i]==sunEl.value)
			{
				sunEl.checked=true;
			}
		}
		
		
		
	}

	var smoke='${dto.smoking}'
	var smokingEl=document.getElementById('smoke');
	var nonsmokingEl=document.getElementById('nonsmoke');
	if(smokingEl.value==smoke)
	{
		smokingEl.checked=true;
	}
	else
	{
		nonsmokingEl.cheched=true;
	}
	
	var aim='${dto.aim}';
	
	var aimEl=document.getElementById('aim');
	for(var i=0;i<aimEl.options.length;i++)
	{
		if(aimEl.options[i].value==aim)
		{
			aimEl.options[i].selected=true;
		}
	}
	
	var gender='${dto.gender}';
	
	var genderEl=document.getElementById('gender');
	for(var i=0;i<genderEl.options.length;i++)
	{
		if(genderEl.options[i].value==gender)
		{
			genderEl.options[i].selected=true;
		}
	}
	
	var shortEl=document.getElementById('short');
	
	if(type==shortEl.value)
	{
		shortEl.checked=true;
	}
	else
	{
		var longEl=document.getElementById('long');
		longEl.checked=true;
	}
}
 
function setDays()
{
	var days=30;
	
	var sDate='${dto.starttime}';
	var sDays=sDate.substring(8,10);
	
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
		if(i==sDays)
		{
			dayEl.innerHTML+='<option value="'+i+'" selected>'+i+'</option>';
		}
		else
		{
			dayEl.innerHTML+='<option value="'+i+'">'+i+'</option>';
		}
		

	}
		

}


/* function viewShort()
{
	document.getElementById("term").style.visibility = "hidden";
	document.getElementById("short").style.visibility = "visible";
}

function viewTerm()
{
	document.getElementById("short").style.visibility = "hidden";
	document.getElementById("term").style.visibility = "visible";
} */

function setDays3()
{
	var days=30;
	
	var sDate='${dto.enddate}';
	var sDays=sDate.substring(8,10);
	
	var monthEl=document.getElementById('lem');
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
		if(i==sDays)
		{
			dayEl2.innerHTML+='<option value="'+i+'" selected>'+i+'</option>';
		}
		else
		{
			dayEl2.innerHTML+='<option value="'+i+'">'+i+'</option>';
		}
		

	}

}

function setDays2()
{
	var days=30;
	
	var sDate='${dto.startdate}';
	var sDays=sDate.substring(8,10);

	var monthEl=document.getElementById('lsm');
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
		if(i==sDays)
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
	document.getElementById("longTerm").style.visibility = "hidden";
	document.getElementById("shortTerm").style.visibility = "visible";
}

function viewLong()
{
	document.getElementById("longTerm").style.visibility = "visible";
	document.getElementById("shortTerm").style.visibility = "hidden";
}
</script>
</head>
<body>
<%@ include file="../header.jsp" %>
<section>
<article>
<div id="profile">유저 프로필 영역</div>
</article>
<article>
<div>
<c:if test="${dto.termtype eq '단기' }">
<div id="shortTerm">
<form id="f" name="poolEdit" action="poolEdit.do" method="GET">
<input type="hidden" id="sdate" value="${dto.starttime}">
<input type="hidden" name="idx" value="${dto.idx}">
<h1>(타세요 / 태워주세요 태그) 카폴 수정하기</h1>
<div>프로필 사진 영역</div>
<div>출발지 <input type="text" name="startspot" value="${dto.startspot }"></div>
<div>경유지 <input type="text" name="route" value="${dto.route }"></div>
<div>도착지 <input type="text" name="endspot" value="${dto.endspot }"></div>
<div>타입<input type="radio" id="short" name="termtype" value="단기" onclick="viewShort()">단기 
		<input type="radio" id="long" name="termtype" value="정기" onclick="viewLong()">정기
		</div>
		
		출발일시<select id="yearEl" name="sy">
			</select>년
			<select id="monthEl" name="sm" onchange="setDays()">
			</select>월
			<select id="dayEl" name="sd">
			</select>일<br>
			<select id="sapm" name="sapm">
				<option value="오전">오전</option>
				<option value="오후">오후</option>
			</select>
			<select id="hourEl" name="sh">
			</select>시
			<select id="smi" name="smi">
				<option>00</option>
				<option>30</option>
			</select>분<br>

<div>인원<select name="mannum">
				<option>1</option>
				<option>2</option>
				<option>3</option>
		   </select>명
		   </div>
		<div>성별<select id=gender name="gender">
				<option value="남성만">남성만</option>
				<option value="여성만">여성만</option>
				<option value="상관없음">상관없음</option>
		  </select></div>
<div>흡연여부<input type="radio" id="smoke" name="smoking" value="흡연">흡연
		  	 <input type="radio" id="nonsmoke" name="smoking" value="비흡연">비흡연
</div>
<div>목적<select id="aim" name="aim">
			<option value="출/퇴근">출/퇴근</option>
			<option value="드라이브">드라이브</option>
			<option value="좋은 만남">좋은만남</option>
			<option value="명절">명절</option>
		  </select></div>
<div>요금<input type="text" name="pay" value="${dto.pay }"></div>

<div>지도 API 영역</div>
<div>비고
<textarea rows="5" cols="50" name="pluscontent">
${dto.pluscontent}</textarea>
</div>
<div>평점 게시판 영역
</div>
<div><input type="button" value="목록보기"><input type="submit" value="수정하기"></div>
</form>
</div>
</c:if>
</div>

<div>
<c:if test="${dto.termtype eq '정기' }">
<div id="longTerm">
<form id="f2" name="poolEdit" action="poolEdit.do" method="POST">
<input type="hidden" id="sdate" value="${dto.starttime}">
<input type="hidden" name="idx" value="${dto.idx}">
<h1>(타세요 / 태워주세요 태그) 카폴 수정하기</h1>
<div>프로필 사진 영역</div>
<div>출발지 <input type="text" name="startspot" value="${dto.startspot }"></div>
<div>경유지 <input type="text" name="route" value="${dto.route }"></div>
<div>도착지 <input type="text" name="endspot" value="${dto.endspot }"></div>
<div>타입<input type="radio" id="short" name="termtype" value="단기">단기 
		<input type="radio" id="long" name="termtype" value="정기">정기
		</div>


		<div>
		기간
		<select id="lsy" name="lsy">
         </select>년
         <select id="lsm" name="lsm" onchange="setDays2()">
         </select>월
         <select id="lsd" name="lsd">
         </select>일       ~ 
		<select id="ley" name="ley">
         </select>년
         <select id="lem" name="lem" onchange="setDays3()">
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
         반복<input type="checkbox" id="mon" name="mon" value="월">월
         <input type="checkbox"  id="tue" name="tue" value="화">화
         <input type="checkbox"  id="wed" name="wed" value="수">수
         <input type="checkbox"  id="thu" name="thu" value="목">목
         <input type="checkbox"  id="fri" name="fri" value="금">금
         <input type="checkbox"  id="sat" name="sat" value="토">토
         <input type="checkbox"  id="sun" name="sun" value="일">일
         </div>
         
<div>인원<select name="mannum">
				<option>1</option>
				<option>2</option>
				<option>3</option>
		   </select>명
		   </div>
		<div>성별<select id=gender name="gender">
				<option value="남성만">남성만</option>
				<option value="여성만">여성만</option>
				<option value="상관없음">상관없음</option>
		  </select></div>
<div>흡연여부<input type="radio" id="smoke" name="smoking" value="흡연">흡연
		  	 <input type="radio" id="nonsmoke" name="smoking" value="비흡연">비흡연
</div>
<div>목적<select id="aim" name="aim">
			<option value="출/퇴근">출/퇴근</option>
			<option value="드라이브">드라이브</option>
			<option value="좋은 만남">좋은만남</option>
			<option value="명절">명절</option>
		  </select></div>
<div>요금<input type="text" name="pay" value="${dto.pay }"></div>

<div>지도 API 영역</div>
<div>비고
<textarea rows="5" cols="50" name="pluscontent">
${dto.pluscontent}</textarea>
</div>
<div>평점 게시판 영역
</div>
<div><input type="button" value="목록보기"><input type="submit" value="수정하기"></div>
         
         
         </form>
         </div>
		</c:if>
		</div>
</article>
</section>
</body>
</html>