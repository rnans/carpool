<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="su.comm.controller.*,java.util.*,java.io.*,java.sql.*"%>
<%@ include file="calendarCommon.jsp" %>

<%
Month aMonth = Month.getMonth( Integer.parseInt(currentMonthString), Integer.parseInt(currentYearString) );
int [][] days = aMonth.getDays();
%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
var check=null;
function seldate(check){
	var date=check;	
	
	var b= document.getElementById('date');
	b.value=date;
	
}
</script>
<style>
A:link {color:black;text-decoration: none}
A:active {color:green; font-family:serif;text-decoration: none}
A:visited {color:black;text-decoration: none}
A:hover {font-weight:bold;}


.lyContent {
    overflow: hidden;
    position: relative;
    z-index: 100;
    min-width: 320px;
    margin: 5px auto;
    background: #FFF;
    border-radius: 0px;
    
}
.lyContent header {
    position: relative;
    height: 33px;
    padding: 0 0 0 20px;
    line-height: 6px;
    background: #FDFDFD;
    border-bottom: 1px solid #E5E5E5;
    border-radius: 1px 1	px 0 0;
    font-size: 14px;
    font-weight: 700;
    color: #333;
    text-decoration: none!important;
    }
.calendarMake {
    padding: 10px 10px
}    
.uInput {
    margin-bottom: 9px;
    height: 32px;
    line-height: 30px;
    border: 1px solid #ddd;
}
.uInput input {
    width: 100%;
    height: 100%;
    font-size: 13px;
    border: 0;
    padding: 0 10px;
    background: 0 0;
}
.uTextarea {
    margin-bottom: 20px;
    line-height: 18px;
    height: 69px;
    border: 1px solid #ddd;
}
.uTextarea textarea{
    width: 100%;
    height: 100%;
    font-size: 13px;
    border: 0;
    padding: 10 10px;
    background: 0 0;
}

.inputDate {
    display: inline-block;
	overflow: visible;
    position: relative;
    height: 32px;
    width: 100px;
    padding: 0 0px;
    margin-right: 4px;
    border: 1px solid #ddd;
    background: #fff;
}

.inputDate input {
    width: 100%;
    height: 100%;
    line-height: 30px;
    border: 0;
    padding: 0 10px;
}

.inputDate2 {
	display: inline-block;
}

.date {
    position: relative;
    z-index: 20;
}

.buttonCalendar {
    position: absolute;
    overflow: hidden;
    top: 9px;
    right: 7px;
    width: 14px;
    height: 14px;
}
.calendarPicker {
    position: relative;
    top: 3px;
    left: 0;
    z-index: 100;
    width: 206px;
    padding-bottom: 13px;
    border-width: 1px;
    border-style: solid;
    background: #fff;
    box-shadow: 0 0 4px rgba(0,0,0,.15);
    border-color: #ff5b72!important;
}
.month {
    position: relative;
    width: 180px;
    height: 22px;
    margin: 11px auto 0;
}
.prevMonth {
    left: 22px;
}
.month .monthTxt {
    display: block;
    font-size: 14px;
    height: 22px;
    line-height: 22px;
    text-align: center;
}
.month .nextMonth {
    right: 22px;
}
.month .nextYear {
    right: 0;
}
.prevYear,  .prevMonth, .nextYear, .nextMonth {
    position: absolute;
    top: 0;
    z-index: 10;
    height: 22px;
    padding: 0 5px;
}
.calendar {
	position: relative;
    margin: 7px auto 0;
    font-size: 11px;
}
table {
    border-collapse: collapse;
    border-spacing: 0;
}
tbody {
    display: table-row-group;
    vertical-align: middle;
    border-color: inherit;
}
.calendar td {
    padding: 0 5px 0 3px;
    text-align: center;

}

.calendarMake .title {
    display: block;
    font-weight: 400;
    margin-bottom: 10px;
    color: #555;
}

.date .gClearfix {
    margin-bottom: 14px;
}


</style>

<body>

<article class="lyContent" data-viewtype="edge" style="width:488px">
<header><h1>일정 만들기</h1></header>
<div class="calendarMake">

<form action="scheWrite.do" method="post">

	<div class="uInput"> 
		<input type="text" name="subject" placeholder=" 일정 제목" maxlength="50">
	</div>
	
	<div class="uTextarea">
		<textarea name="content" placeholder="일정 설명" maxlength="250"></textarea>
	</div>


	<div class="date">
	<strong class="title">날짜</strong>
	
		<div class="gClearfix"> 
			<div class="inputDate"> 
				<input type="text" name="startday" title="시작 요일" id="date" maxlength="10"> 
				<button type="button" class="buttonCalendar">달력보기
				</button>
			</div>
			<div class="inputDate2">-</div>
			<div class="inputDate"> 
				<input type="text" name="endday" title="끝 요일" id="date" maxlength="10"> 
				<button type="button" class="buttonCalendar">달력보기
				</button>
			</div>
		</div>
			
		<div class="gClearfix"> <span class="title">반복 등록</span>
			<span class="day"><input type="checkbox"  name="banbok" value="월">월</span>
			<span class="day"><input type="checkbox" name="banbok" value="화">화</span>
			<span class="day"><input type="checkbox" name="banbok" value="수">수</span>
			<span class="day"><input type="checkbox" name="banbok" value="목">목</span>
			<span class="day"><input type="checkbox" name="banbok" value="금">금</span>
			<span class="day"><input type="checkbox" name="banbok" value="토">토</span>
			<span class="day"><input type="checkbox" name="banbok" value="일">일</span>
		</div>
		
		<div data-viewname="CalendarView" data-skinfactor="border" class="calendarPicker">
		
			<div class="month"> 
				<button type="button" class="prevMonth" >
				<span class="gSrOnly"><</span></button> 
				<strong class="monthTxt" data-skinfactor="color"><%=currentYearString%>년 <%=Integer.parseInt(currentMonthString)+1 %>월</strong> 
				<button type="button" class="nextMonth" >
				<span class="gSrOnly">></span></button>
			</div>
			
			<table class="calendar">
			<tbody>
			<%
			 
			  for( int i=0; i<aMonth.getNumberOfWeeks(); i++ )
			  {%>
			    <tr>
			    <%
			    for( int j=0; j<7; j++ )
			    {
			      if( days[i][j] == 0 )
			      {%>
			        <td class="empty_day_cell">&nbsp;</td>
			      <%}
			      else
			      {
			    	  
			      %>
			        <td style="font-family:verdana, arial; font-size: 12px; align="left" valign="top" class="day_cell">
			        <a href="javascript:seldate('<%=currentYearString%>-<%=Integer.parseInt(currentMonthString)+1 %>-<%=days[i][j]%>')"
			         id="<%=days[i][j]%>" style="<%if(currentDayInt==days[i][j]){%>color:red; <%}%>"><%=days[i][j]%></a>			         
			         </td>
			      <%
			      }
			    } // end for %>
			    </tr>
			  <%}
			%>
			</tbody>
			</table>
		</div>
		
		</div>
		<input type="hidden" name="id" value="${sid}">
		<input type="submit" Value="완료">
		</form>
	</div> <!-- date class -->
</article>




</body>
</html>