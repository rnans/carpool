<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./bootstrap/css/font-awesome.min.css">
<link href="/final02/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
<style type="text/css">
.button {
  display: inline-block;
  vertical-align: top;
  padding: 10px 25px;
  font-size: 15px;
  color: #111;
  text-align: center;
  text-decoration: none;
  text-shadow: 0 0 2px rgba(255, 255, 255, 1);
  background-color: #ccc;
  background-clip: padding-box;
  border: 1px solid;
  border-color: #202020 #1a1a1a #111;
  border-radius: 2px;
  background-image: -webkit-linear-gradient(top, #efefef, #777);
  background-image: -moz-linear-gradient(top, #efefef, #777);
  background-image: -o-linear-gradient(top, #efefef, #777);
  background-image: linear-gradient(to bottom, #efefef, #777);
  -webkit-box-shadow: inset 0 1px rgba(255, 255, 255, 0.09), 0 1px 1px rgba(0, 0, 0, 0.3);
  box-shadow: inset 0 1px rgba(255, 255, 255, 0.09), 0px 1px 1px rgba(0, 0, 0, 0.2);
}
.button:hover {
  background-color: #aaaaaa;
  background-image: -webkit-linear-gradient(top, #ccc, #555);
  background-image: -moz-linear-gradient(top, #ccc, #555);
  background-image: -o-linear-gradient(top, #ccc, #555);
  background-image: linear-gradient(to bottom, #ccc, #555);
}
.button:active, .button.active {
  background-color: #b42f32;
  border-color: #1c1c1c #202020 #222;
  -webkit-box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.3), 0 1px rgba(255, 255, 255, 0.09);
  box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.3), 0 1px rgba(255, 255, 255, 0.09);
}

.rounded {border-radius:100em!important;}
.darkGrey {
  color: #bbb;
  text-shadow: 0 0 2px rgba(0, 0, 0, .7);
  background-color: #474747;
  border-color: #1c1c1c #202020 #222;
  background-image: -webkit-linear-gradient(top, #2a2a2a, #1b1b1b);
  background-image: -moz-linear-gradient(top, #2a2a2a, #1b1b1b);
  background-image: -o-linear-gradient(top, #2a2a2a, #1b1b1b);
  background-image: linear-gradient(to bottom, #2a2a2a, #1b1b1b);
}
.links {
  *zoom: 1;
  padding: 50px;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
    color: #797878;
  text-align: center;
}
.links:before, .links:after {
  content: "";
  display: table;
}
.links:after {
  clear: both;
}

.link-effect-3 a {
  padding: 10px 0;
  margin: 0 20px;
  color: #797878;
  text-shadow: none;
  position: relative;
}
.link-effect-3 a::before {
  position: absolute;
  top: 0;
  left: 0;
  overflow: hidden;
  padding: 10px 0;
  max-width: 0;
  border-bottom: 2px solid #fff;
  color: #fff;
  content: attr(data-hover);
  -webkit-transition: max-width 0.5s;
  -moz-transition: max-width 0.5s;
  transition: max-width 0.5s;
}
.link-effect-3 a:hover::before {
  max-width: 100%;
}
</style>
</head>
<script type="text/javascript" src="js/httpRequest.js"></script>
<script>
var idx=null;
function useguideDeleteForm(){
	var param="?idx="+idx;
	window.open('useguideDelete.do'+param,'useguideDeleteForm','width=500 height=400 left=500 top=200');
}
</script>
<body>

<%@include file="../header.jsp" %>


       

    <div style="width: 100%; margin: 100px 0px 0px 0px">

		<%@include file="../adHeader.jsp" %>

<div class=".col-md-8" style="margin-left:120px; display: inline-block; width: 100%; ">
<div>
 <div align="center" style="margin-right: 100px;">
<h2 >고객센터</h2>
<h4 >이용안내</h4>
</div>
  <div class="btn-group" role="group" aria-label="..." style="margin-left:1050px">
  <a href="useguideWrite.do" class="btn btn-default">글쓰기</a>
</div>
<table border="1" style="margin-left: 120px; " >

<thead>
<tr>
   <th>번호</th>
   <th>제목</th>
   <th>내용</th>
   <th>작성날짜</th>
   <th>비고</th>
</tr>
</thead>
<tbody>
<c:if test="${empty list }">
<tr class="even">
 <td colspan="5" align="center">작성된 글이 없습니다.</td>
</tr>
 </c:if>

<c:forEach var="useguide" items="${list }">

<tr>
 <td>${useguide.idx }</td>
 <c:url var="useguideContent" value="useguideUpdate.do">
 <c:param name="idx">${useguide.idx }</c:param>
 </c:url>
 <td><a href="${useguideContent}">${useguide.subject }</a></td>
 <td>${useguide.content}</td>
 <td>${useguide.writedate }</td>
 <td><button type="submit" class="uButton uButtonPoint" onclick= "javascript:idx='${useguide.idx}';useguideDeleteForm();"
		style="background: #FF5A5A; min-width: 60px; line-height: 20px; margin: 0 3px; font-size: 13px; color: #fff;border:0px;">
	삭제</button>
	</td>

</tr>
 </c:forEach>
</tbody>
<tfoot>
<tr class="even">
 <td colspan="5" align="center">${pageStr }</td>
 </tr>
 </tfoot>
</table>
</div>
</div>
</div>
</div>
<hr>
<footer>푸터</footer>
</html>