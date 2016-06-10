<%@page import="java.time.Year"%>
<%@ page import="su.comm.controller.*"%>
<%@ page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="calendarCommon.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<link rel="stylesheet" type="text/css" href="CSS/comm.css">
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
      <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta charset="utf-8">
        <!-- meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0"/ -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title></title>
        <!-- Bootstrap -->
        <link href="./bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요한) -->
        <script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
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

window.onload=function(){
	sendRequest('memberList.do', null, showResult2, 'GET')
}

	
	function showResult2(){
	if(XHR.readyState==4){
		if(XHR.status==200){
			var result = XHR.responseText;
			commside.innerHTML=result;
		}
	}
}

function write(){	
	var month=<%=intMonth+1%>;
	var day=startdate;
	var year=<%=intYear%>;
	var params='day='+day+'&'+'month='+month+'&year='+year;
	window.open('scheWrite.do?'+params,'','width=515, height=595')
}

var uid=null;
function msgOpen(){	
	
	window.open('messageWrite.do?uid='+uid,'','width=400, height=270')
}

</script>
<style>
.verdana_b { font-family:verdana, arial; font-size: 9px; font-weight: bold}
.cal_black { font-family:verdana, arial; font-size: 9px; color: #333333 }
.daytd{
    position: relative;
    width: 90px;
    height: 80px;
    padding: 4px 9px;
    border-top: 1px solid transparent;
    border-bottom: 1px solid transparent;
}
#calendar_table{

 border:1;
  cellspacing:1; 
  cellpadding:3;
  background-color:#3cd370;
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
<link rel="stylesheet" href="./bootstrap/css/font-awesome.min.css">
<body style="background-color: #F6F6F6;padding-top: 110px;">

<%@include file="../header.jsp"%>


	<div id="lnb" data-skin="skin5" style="z-index: 50">
		<div data-viewname="DLnbMenuView">
			<ul class="_joinedLnb">
				<li><a href="comm.do" data-skinfactor="tBorder color"
					class="_albumLnbBtn _eachLnbMenu _unclickableMenu">전체글</a></li>
				<li><a href="gallery.do"
					data-skinfactor="tBorder color"
					class="_albumLnbBtn _eachLnbMenu _unclickableMenu">사진첩</a></li>
				<li><a href="calendar.do"
					data-skinfactor="tBorder color"
					class="_fullArticleLnbBtn _eachLnbMenu on">일정</a></li>
				<li><a href="commMember.do"
					data-skinfactor="tBorder color"
					class="_memberLnbBtn _eachLnbMenu _unclickableMenu">멤버</a></li>
			</ul>
		</div>
	</div>
	 <link rel="stylesheet" type="text/css" href="http://s.cmstatic.net/webclient/dres/20160602183753/css/bandComponent.css?_=20160602183753">
		<link rel="stylesheet" type="text/css" href="http://s.cmstatic.net/webclient/dres/20160602183753/css/band.css?_=20160602183753"> 
	
	 <div id="commside">
  </div>

<div class="calendarview" style="width: 40%; margin: 0px auto;">
<div id="calendarview">
<table id="calendar_table" data-skin="skin5" data-skinfactor="bg" class="table table-hover" style="border:1px solid #cfcfcf; border-bottom: 1px solid #CFCFCF;">
<thead>
  <tr>
     <td colspan="7" align="center" height="25">
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
 </thead>
 <tbody>
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
         <td style=" font-family:verdana, arial; padding:0px;  font-size: 9px; color: #333333" align="left" valign="top" class="day_cell">
<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1"  style="padding: 0px;">
      <ul class="nav navbar-nav bar" style="height: 100%;width: 100%; padding: 0px;">
      	<li><a href="javascript:startdate=<%=days[i][j] %>;write();" style="position:absolute; font-size:14px; width: 89px;height: 83px; z-index:0;">
      	<%if(j==0){%><font style="color: #CC0000;"><%}%>
      	<%if(j==6){%><font style="color: #6666CC;"><%}%>
      	<%=days[i][j]%></a> 
     	     
     </li>
     	</ul>
 </div>
 <div style="position: absolute;z-index:100;">
 <%if((currentMonthInt+"-"+currentDayInt).equals(intMonth+"-"+days[i][j])){%>&nbsp;&nbsp;<font style="color: #ff5b72">today</font> <%}%>
  <Br>
<c:forEach var="bbs" items="${list}">	
			<c:set var="day2" value="<%=temp+days[i][j]%>"></c:set>
		 	<c:if test="${bbs.startday==day2}">
		 	<br><font style="color:#8C8C8C;">${bbs.id}</font><br>&nbsp;${bbs.subject}
		 	</c:if>
			</c:forEach>
		
		  </div>


          </td>
        <%
      }
    } // end for %>
    </tr>
  <%
  }
%>
</tbody>
</table>
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
 <div class="calbbs" >
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
	 <a href="#" data-uiselector="scheduleItem">   
	 <span class="time">${bbs.stime }</span>
	 <strong class="description">${bbs.subject } </strong>  
	 <span class="name">${bbs.id }</span>
	  </a></li>
	 </ul>
</div>
</c:forEach>

</div>

</div>

 
</body>
</html>


