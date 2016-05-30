<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<%@include file="csCenterSubMenu.jsp" %>
 <hr>
<h2>이용안내</h2>
<div>
<table border="1" width="800" height="150">
<tbody>
<c:if test="${empty list }">
<tr>
 <td colspan="2" align="center">작성된 글이 없습니다.</td>
</tr>
 </c:if>
<c:forEach var="useguide" items="${list }">
<tr>
  <td><a href="javascript:UseGuideShow('useguide${useguide.idx }')">${useguide.subject }</a></td>
 </tr>
 <tr class="tr" id="useguide${useguide.idx}" style="display:none;">
   <td>${useguide.content }</td>
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

 
<hr>
풋부분
</body>
</html>