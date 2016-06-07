<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./bootstrap/css/font-awesome.min.css">
<link href="/final02/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
</head>
<script src="/final2/js/jquery-1.12.4.min"></script>
<script >

function UseGuideShow(useguide) {
 
$('.tr').css('display','none');
	
 var obj=document.getElementById(useguide);
	 
 obj.style.display = "block";
}
</script> 

<body>

<%@include file="../header.jsp" %>
<hr>


 	<h3 align="center"> 이용안내</h3>
<div class="container" style="width: 100%; margin: 0px 0px 0px 0px">
	<div class="row" >
		 <%@include file="csCenterSubMenu.jsp" %>
		<div class=".col-md-7" style="margin-left:200px; width: 60%; ">

<table class="table table-list-search" > 
<tbody>
<c:if test="${empty list }">
<tr>
 <td colspan="2" align="center">작성된 글이 없습니다.</td>
</tr>
 </c:if>
<c:forEach var="useguide" items="${list }">
<tr>
  <td><a href="javascript:UseGuideShow('useguide${useguide.idx }')">제목: ${useguide.subject }</a></td>
 </tr>
 <tr class="tr" id="useguide${useguide.idx}" style="display:none;">
   <td>내용: ${useguide.content }</td>
 </tr>
 </c:forEach>
</tbody>
<tfoot>
<tr>
 <td colspan="1" align="center">${pageStr }</td>
 </tr>
 </tfoot>
</table>
</div>
		</div>
	</div>


<hr>
풋부분
</body>
</html>