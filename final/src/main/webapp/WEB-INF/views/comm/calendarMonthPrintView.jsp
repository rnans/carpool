<%@ page import="su.comm.controller.*,java.util.*,java.io.*,java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  // TODO: WHAT IS THE DIFFERENCE BETWEEN SPAN AND DIV?
  // TODO: CAN I SHARE MY COMMON CODE SOMEWHERE ELSE?
  // TODO: CAN I REPLACE THE 'MONTH' CLASS WITH SOMETHING ELSE?
%>

<%@ include file="calendarCommon.jsp" %>

<html>
<head>
  <title>devdaily.com calendar :: month view</title>
  <link rel="StyleSheet" href="/blog/calendar.css" type="text/css" media="screen" />
</head>
<style>
A:link {color: #1f3174; text-decoration: none}
A:active {color: #1f3174; text-decoration: none}
A:visited {color: #1f3174; text-decoration: none}
A:hover {color: #3366cc; text-decoration: underline}
.verdana_b { font-family:verdana, arial; font-size: 9px; font-weight: bold}
.cal_red { font-family:verdana, arial; font-size: 9px; color: #CC0000 }
.cal_blue { font-family:verdana, arial; font-size: 9px; color: #6666CC }
.cal_black { font-family:verdana, arial; font-size: 9px; color: #333333 }
</style>
<body id="print_view_page">

<div id="calendar_print_view_main_div">
<table width=580 border=0 cellspacing=1 cellpadding=3 bgcolor="#999999" id="calendar_table">
  <tr>
     <td colspan="7" align=centerheight=25>
      <a href=""><font color=#FFFFFF>◀</font></a> 
      <font color=#FFFFFF><font face=Verdana, Arial, Helvetica, sans-serif><b>
    <%=monthName%> <%=intYear%> </b></font>  </font>
      <a href=""><font color=#FFFFFF>▶</font></a>
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
{
  Month aMonth = Month.getMonth( Integer.parseInt(currentMonthString), Integer.parseInt(currentYearString) );
  int [][] days = aMonth.getDays();
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
        <td style="font-family:verdana, arial; font-size: 9px; color: #333333" align="left" valign="top" class="day_cell"><%=days[i][j]%></td>
      <%
      }
    } // end for %>
    </tr>
  <%}
}
%>
</table>
</div>

</body>
</html>


