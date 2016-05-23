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
<style>
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
    p    position: relative;
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
    position: relative;
    display: inline-block;
    height: 32px;
    width: 106px;
    padding: 0 5px;
    margin-right: 4px;
    border: 1px solid #ddd;
    border-radius: 2px;
    background: #fff;
}
.inputDate input {
    width: 100%;
    height: 100%;
    line-height: 30px;
    border: 0;
    padding: 0;
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
    position: absolute;
    top: 36px;
    left: 0;
    z-index: 100;
    width: 206px;
    padding-bottom: 33px;
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

</style>

<body>

<article class="lyContent" data-viewtype="edge" style="width:488px">
<header><h1>일정 만들기</h1></header>
<div class="main"></div>
<div class="calendarMake">


<div class="uInput"> 
<input type="text" name="subject" placeholder=" 일정 제목" maxlength="50">
</div>
<div class="uTextarea">
<textarea name="content" placeholder="일정 설명" maxlength="250"></textarea>
</div>

<div class="inputDate"> 
<input type="text" title="시작 요일" data-uiselector="startDateInput" maxlength="10"> 
<button type="button" class="buttonCalendar" data-icon="calendar2" data-uiselector="startDateSelectorOpenButton">달력보기
</button>


</div>
</div>
</article>
<div data-uiselector="startDateSelectorRegion">
<div data-viewname="CalendarView" data-skinfactor="border" class="calendarPicker">

<div class="month"> 
<button type="button" class="prevMonth" >
<span class="gSrOnly"><</span></button> 
<strong class="monthTxt" data-skinfactor="color"><%=currentYearString%>년 <%=Integer.parseInt(currentMonthString)+1 %>월</strong> 
<button type="button" class="nextMonth" >
<span class="gSrOnly">></span></button> 
</div>

<table class="calendar">
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
        <td style="font-family:verdana, arial; font-size: 14px; color: #333333" align="left" valign="top" class="day_cell"><%=days[i][j]%></td>
      <%
      }
    } // end for %>
    </tr>
  <%}
%></table>
<div class="footerPicker"> 
<button type="button" class="today" data-uiselector="todayButton">오늘</button></div>
</div>

</div>



</body>
</html>