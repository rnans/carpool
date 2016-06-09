<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./bootstrap/css/font-awesome.min.css">
<link href="/final02/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="/SRC2/css3button/styles.css" type="text/css"/>
<style type="text/css">
body {
    margin-top: 2%
}
p {
	margin: 0 0 2em;
}
h1 {
	margin: 0;
}
a {
	color: #339;
	text-decoration: none;
}
a:hover {
	text-decoration: underline;
}
div {
	padding: 20px 0;
	border-bottom: solid 1px #ccc;
}

/* button 
---------------------------------------------- */
.button {
	display: inline-block;
	zoom: 1; /* zoom and *display = ie7 hack for display:inline-block */
	*display: inline;
	vertical-align: baseline;
	margin: 0 2px;
	outline: none;
	cursor: pointer;
	text-align: center;
	text-decoration: none;
	font: 14px/100% Arial, Helvetica, sans-serif;
	padding: .5em 2em .55em;
	text-shadow: 0 1px 1px rgba(0,0,0,.3);
	-webkit-border-radius: .5em; 
	-moz-border-radius: .5em;
	border-radius: .5em;
	-webkit-box-shadow: 0 1px 2px rgba(0,0,0,.2);
	-moz-box-shadow: 0 1px 2px rgba(0,0,0,.2);
	box-shadow: 0 1px 2px rgba(0,0,0,.2);
}
.button:hover {
	text-decoration: none;
}
.button:active {
	position: relative;
	top: 1px;
}

.bigrounded {
	-webkit-border-radius: 2em;
	-moz-border-radius: 2em;
	border-radius: 2em;
}
.medium {
	font-size: 12px;
	padding: .4em 1.5em .42em;
}
.small {
	font-size: 11px;
	padding: .2em 1em .275em;
}
.white {
	color: #606060;
	border: solid 1px #b7b7b7;
	background: #fff;
	background: -webkit-gradient(linear, left top, left bottom, from(#fff), to(#ededed));
	background: -moz-linear-gradient(top,  #fff,  #ededed);
	filter:  progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffff', endColorstr='#ededed');
}
.white:hover {
	background: #ededed;
	background: -webkit-gradient(linear, left top, left bottom, from(#fff), to(#dcdcdc));
	background: -moz-linear-gradient(top,  #fff,  #dcdcdc);
	filter:  progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffff', endColorstr='#dcdcdc');
}
.white:active {
	color: #999;
	background: -webkit-gradient(linear, left top, left bottom, from(#ededed), to(#fff));
	background: -moz-linear-gradient(top,  #ededed,  #fff);
	filter:  progid:DXImageTransform.Microsoft.gradient(startColorstr='#ededed', endColorstr='#ffffff');
}

</style>
</head>
<body>
<div>
<%@include file="../header.jsp" %>
</div>

<div>
<div class="container"  style=" margin: 50px 0px 0px 0px;">
	<div class="row">
	<%@include file="csCenterSubMenu.jsp" %>
	
		<div class=".col-md-10"  style="display: inline-block; width: 70%; ">	
		<h3 align="center" style="margin-left: 140px;">
		1:1문의</h3>
		
			 <div class="btn-group" role="group" aria-label="..." style="margin-left:940px">
  <a href="oneAndOneWriteForm.do" class="btn btn-default">문의하기</a>
</div>
<table class="table table-list-search" style="margin-left: 70px;"> 
<thead>
<tr>
   <th>번호</th>
   <th>작성자</th>
   <th>문의유형</th>
   <th>제목</th>
   <th>작성일</th>
   <th>답변현황</th>
</tr>
</thead>
<tbody>
<c:if test="${empty list }">
<tr>
 <td colspan="6" align="center">작성된 글이 없습니다.</td>
</tr>
 </c:if>

<c:forEach var="oneandone" items="${list }">

<tr>
 <td>${oneandone.idx }</td>
 <c:url var="oneandoneContent" value="oneandoneContent.do">
 <c:param name="idx">${oneandone.idx }</c:param>
 </c:url>
 <td>${oneandone.writer }</td>
 <td>${oneandone.type }</td>
 <td><a href="${oneandoneContent}">${oneandone.subject}</a></td>
 <td>${oneandone.writedate }</td>
  <td>${oneandone.state }</td>
 
</tr>
 </c:forEach>
</tbody>
<tfoot>
<tr>
 <td colspan="6" align="center">${pageStr }</td>

 </tr>
 </tfoot>
</table>
</div>
		</div>
	</div>
	</div>

<hr>
풋부분
</body>
</html>