<%@ page import="su.comm.controller.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="calendarCommon.jsp" %>

<html>
<head>
  <title>devdaily.com calendar</title>
  <link rel="StyleSheet" href="calendar.css" type="text/css" media="screen" />
</head>

<script type="text/javascript" src="js/httpRequest.js"></script>
<script type="text/javascript">
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
	window.open('scheWrite.do','','width=520, height=700')
}



</script>

<body>

<%@include file="../header.jsp"%>
<hr>
<a href="comm.do">comm</a>
<a href="calendar.do">일정</a>
<a href="calendar.do">관리</a>

<div id="calendar_main_div">
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
</div>

<!-- navigation links -->
<%-- sorry, i don't know how to get this look without a table --%>
<table id="calendar_nav_table" border="0">
  <tr>
    <td id="prev_link">
      <form method="post">
        <input type="submit" name="PREV" value=" << ">
        <input type="hidden" name="month" value="<%=prevMonth%>">
        <input type="hidden" name="year" value="<%=prevYear%>">
      </form>
    </td>
    <td id="link_to_month_view">
      <form action="calendarView.do" name="now" method="post">
        <input type="button" value="<%=intYear%> <%=monthName%>" class="submit_button" onclick="show()">
        <input type="hidden" name="month" value="<%=intMonth%>">
        <input type="hidden" name="year"  value="<%=intYear%>">
      </form>
    </td>
    <td id="next_link">
      <form method="post">
        <input type="submit" name="NEXT" value=" >> ">
        <input type="hidden" name="month" value="<%=nextMonth%>">
        <input type="hidden" name="year" value="<%=nextYear%>">
      </form>
    </td>
  </tr>
</table>

<p id="span"></p>


</body>
</html>


