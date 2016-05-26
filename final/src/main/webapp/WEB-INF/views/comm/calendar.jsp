<%@page import="java.time.Year"%>
<%@ page import="su.comm.controller.*"%>
<%@ page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="calendarCommon.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%
int today=1;
  Month aMonth = Month.getMonth( Integer.parseInt(currentMonthString), Integer.parseInt(currentYearString) );
  int [][] days = aMonth.getDays();
  for( int i=0; i<aMonth.getNumberOfWeeks(); i++ )
  {   
    for( int j=0; j<7; j++ )
    {     
        // this is "today"
        if( currentDayInt == days[i][j] && currentMonthInt == aMonth.getMonth() && currentYearInt == aMonth.getYear() )
        {
        today= days[i][j];
        }
        else
        {
          
        }
      
    } // end for
    %>

  <%}

%>    
<html>
<head>
  <title>devdaily.com calendar</title>
  <link rel="StyleSheet" href="calendar.css" type="text/css" media="screen" />
</head>

<script type="text/javascript" src="js/httpRequest.js"></script>
<script type="text/javascript">

window.onload=function(){
	<%String temp=intYear+"-"+(intMonth+1)+"-";%>
}

var startdate="";

function show(){		
	var month=document.now.month.value;
	var year=document.now.year.value;
	var params='month='+month+'&'+'year='+year;
	sendRequest('calendarView.do', params, showResult, 'GET');
}

function showResult(){
	if(XHR.readyState==4){
		if(XHR.status==200){
			var result = XHR.responseText;
			span.innerHTML=result;
		}
	}
}

function write(){	
	var month=<%=intMonth+1%>;
	var day=startdate;
	var year=<%=intYear%>;
	var params='day='+day+'&'+'month='+month+'&year='+year;
	window.open('scheWrite.do?'+params,'','width=450, height=529')
}

</script>
<style>
#lnb {
    z-index: 1900;
    width: 100%;
    min-width: 1024px;
    height: 36px;
    left: 0;
    top: 46px;
    background: pink;
    text-align: center;
}
#lnb ul {
    overflow: hidden;
    display: inline-block;
    height: 100%;
}

button, dd, dl, dt, fieldset, ol, p, ul {
    margin: 0;
    padding: 0;
   
}
#lnb li {
    float: left;
    position: relative;
    min-width: 112px;
    text-align: center;
    list-style: none;
}
#lnb a, #daytd a {
    display: block;
    width: 100%;
    height: 100%;
    padding: 0 5px;
    line-height: 36px;
    font-size: 14px;
}

A:link {color: #1f3174; text-decoration: none}
A:active {color: #1f3174; text-decoration: none}
A:visited {color: #1f3174; text-decoration: none}
A:hover {color: #3366cc; text-decoration: underline}
.verdana_b { font-family:verdana, arial; font-size: 9px; font-weight: bold}
.cal_black { font-family:verdana, arial; font-size: 9px; color: #333333 }
.daytd{
    position: relative;
    width: 123px;
    height: 100px;
    padding: 4px 9px;
    border-top: 1px solid transparent;
    border-bottom: 1px solid transparent;
}
.calendarview{
position: absolute;
}
#calendar_table{
 width:60% ;
 border:1;
  cellspacing:1; 
  cellpadding:3;
  background-color:pink;
  margin:0px auto;
 
}
.uSectionTitle {
    font-size: 16px;
    line-height: 16px;
    color: #222;
    padding-bottom: 15px;
    text-align: left;
}
.scheduleList {
    border: 1px solid #D5D5D5;
    border-radius: 2px;
    background: #FFF;
    margin-bottom: 5px;
}
.scheduleList h2{
    margin: 0;
    font-size: 13px;
    font-weight: 400;  
      
    }
.scheduleList .title{
    padding: 5px 0 4px 20px;
}

.scheduleList ul {
    border-top: 1px solid #E5E5E5;
    padding: 0 20px;
        margin: 0;
}

.scheduleList li {
    position: relative;
    padding: 13px 0 15px;
}
.scheduleList a {
    display: block;
    padding-left: 100px;
}
a:focus, a:hover {
    color: #666;
    text-decoration: none;
}
.scheduleList .time {
    position: absolute;
    top: 17px;
    left: 0;
    font-size: 18px;
    color: #ff5b72!important;
}
.scheduleList .description {
    position: relative;
    font-size: 14px;
    color: #333;
    display: block;
    overflow: hidden;
    max-width: 100%;
    white-space: nowrap;
    word-break: normal;
    word-wrap: normal;
    text-overflow: ellipsis;
}
</style>
<body>

<%@include file="../header.jsp"%>
<hr>
<div id="lnb" data-skin="skin5">
<ul class="_joinedLnb"> 
<li><span><a href="comm.do" class="_fullArticleLnbBtn _eachLnbMenu">전체글</a></span></li>
<li><a href="calendar.do" class="_calendarLnbBtn _eachLnbMenu _unclickableMenu on">일정</a></li>
<li><a href="commMember.do" class="_memberLnbBtn _eachLnbMenu _unclickableMenu">멤버</a></li>
</ul> 
</div>

<h1 class="uSectionTitle">일정</h1>

<div id="span"><div id="calendarview">
<table id="calendar_table">
  <tr>
     <td colspan="7" align=centerheight=25>
      <a href="javascript:document.getElementById('prev').click();"><font color=#FFFFFF>◀</font></a> 
      <font color=#FFFFFF><font face=Verdana, Arial, Helvetica, sans-serif><b>
    <%=monthName%> <%=intYear%> </b></font> </font>
      <a href="javascript:document.getElementById('next').click();"><font color=#FFFFFF>▶</font></a>
     </td>
    </tr>
 <tr class="week_header_row" bgcolor=#FCFCF3 align=center>
  <td width=82 class=verdana_b><font color=#CC0000>Sun</font></td>
  <td width=82 class=verdana_b><font color=#666666>Mon</font></td>
  <td width=82 class=verdana_b><font color=#666666>Tue</font></td>
  <td width=82 class=verdana_b><font color=#666666>Wed</font></td>
  <td width=82 class=verdana_b><font color=#666666>Thu</font></td>
  <td width=82 class=verdana_b><font color=#666666>Fri</font></td>
  <td width=82 class=verdana_b><font color=#6666CC>Sat</font></td>
 </tr>
 
<%
 
  for( int i=0; i<aMonth.getNumberOfWeeks(); i++ )
  {%>
    <tr bgcolor='#FFFFFF' valign='top' height='85'>
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
         <td style=" font-family:verdana, arial; font-size: 9px; color: #333333" align="left" valign="top" class="day_cell">
          <div class="daytd" style="<%if((currentMonthInt+"-"+currentDayInt).equals(intMonth+"-"+days[i][j])){%>background-color:#FFEBFF; <%}%>"> 
         
          <a href="javascript:startdate=<%=days[i][j] %>;write();"><%=days[i][j]%></a><br><br>
		  <c:forEach var="bbs" items="${list}">	
			<c:set var="day2" value="<%=temp+days[i][j]%>"></c:set>
		 	<c:if test="${bbs.startday==day2}">
		 	${bbs.id}-${bbs.subject}
		 	</c:if>
			</c:forEach>		  
			<%if((currentMonthInt+"-"+currentDayInt).equals(intMonth+"-"+days[i][j])){%><br>핑쿠는 오늘 <%}%>
		  </div>
          </td>

          
        <%
      }
    } // end for %>
    </tr>
  <%
  }
%>

</table>
</div>
</div>
<div>
   <form method="post" hidden="true" >
        <input type="submit" id="prev" name="PREV" value="">
        <input type="hidden" name="month" value="<%=prevMonth%>">
        <input type="hidden" name="year" value="<%=prevYear%>">
      </form>
   
      <form method="post" hidden="true">
        <input type="submit" id="next" name="NEXT" value="">
        <input type="hidden" name="month" value="<%=nextMonth%>">
        <input type="hidden" name="year" value="<%=nextYear%>">
     </form>
 </div>
 
 <c:if test="${empty list}">
	<td colspan="4" align="center">
		등록된 게시글이 없습니다.
	</td>
</c:if>		
<br>
<c:forEach var="bbs" items="${list}"> 
<div class="scheduleList" style="display: block;">
	<h2 class="title"> ${bbs.startday } </h2>
	<ul>  
	<li class="passDay">
	 <a href="#" data-uiselector="scheduleItem" >   
	 <span class="time">${bbs.stime }</span>
	 <strong class="description">${bbs.subject } </strong>  
	 <span class="name">${bbs.id }</span>
	  </a></li>
	 </ul>
</div>
</c:forEach>

 
</body>
</html>


