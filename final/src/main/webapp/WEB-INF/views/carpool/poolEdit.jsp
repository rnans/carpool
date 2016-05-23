<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파티풀 수정하기</title>
<script>

window.onload=function(){
var d = new Date();

var yearEl=document.getElementById('yearEl');
var monthEl=document.getElementById('monthEl');
var dayEl=document.getElementById('dayEl');
var hourEl=document.getElementById("hourEl");

var sDate=document.getElementById('sdate').innerTEXT;
var sYear=sDate.substring(0,4);
var sMonth=sDate.substring(5,7);
var sDays=sDate.substring(8,10);


	for(var i=d.getFullYear();i<d.getFullYear()+5;i++)
	{
	
		if(d.getFullYear()==sYear)
		{
			'<option value="'+i+'" selected>'+i+'</option>'
		}
		else
		{
			yearEl.innerHTML+='<option value="'+i+'">'+i+'</option>';
		}
	}
	
	for(var i=1;i<=12;i++)
	{
		if(d.getMonth()==sMonth)
		{
			'<option value="'+i+'" selected>'+i+'</option>'
		}
		else
		{
			monthEl.innerHTML+='<option value="'+i+'">'+i+'</option>';
		}
	
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
<%@ include file="../header.jsp" %>
<section>
<article>
<div id="profile">유저 프로필 영역</div>
</article>
<article>
<div>
<form name="poolEdit" action="pooleditForm.do">
<div id="sdate">${dto.starttime}</div>
<h1>(타세요 / 태워주세요 태그) 카폴 수정하기</h1>
<div>프로필 사진 영역</div>
<div>출발지 <input type="text" name="startSpot" value="${dto.startspot }"></div>
<div>경유지 <input type="text" name="route" value="${dto.route }"></div>
<div>도착지 <input type="text" name="endSpot" value="${dto.endspot }"></div>
<div>타입<input type="radio" name="type" value="단기">단기 <input type="radio" name="type" value="정기">정기
		</div>
		<div>
		출발일시<select id="yearEl" name="sy">
			</select>년
			<select id="monthEl" name="sm" onchange="setDays()">
			</select>월
			<select id="dayEl" name="sd">
			</select>일<br>
			<select name="sapm">
				<option>오전</option>
				<option>오후</option>
			</select>
			<select id="hourEl" name="sh">
			</select>시
			<select name="sm">
				<option>00</option>
				<option>30</option>
			</select>분<br>
		</div>
<div>인원<select name="mannum">
				<option>1</option>
				<option>2</option>
				<option>3</option>
		   </select>명
		   </div>
		<div>성별<select name="gender">
				<option>남성만</option>
				<option>여성만</option>
				<option>상관없음</option>
		  </select></div>
<div>흡연여부<input type="radio" name="smoking" value="흡연">흡연
		  	 <input type="radio" name="smoking" value="비흡연">비흡연
</div>
<div>목적<select id="type" name="aim">
			<option value="출/퇴근">출/퇴근</option>
			<option value="드라이브">드라이브</option>
			<option value="좋은 만남">좋은만남</option>
			<option value="명절">명절</option>
		  </select></div>
<div>비용<input type="text" name="pay"></div>

<div>지도 API 영역</div>
<div>평점 게시판 영역
</div>
<div><input type="button" value="목록보기"><input type="button" value="수정하기"></div>
</form>
</div>
</article>
</section>
</body>
</html>