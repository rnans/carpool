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

function QnaShow(qna) {
 
$('.tr').css('display','none');
	
 var obj=document.getElementById(qna);
	 
 obj.style.display = "block";
}
</script> 

<body>

<%@include file="../header.jsp" %>
<%@include file="csCenterSubMenu.jsp" %>
 <hr>

<h3> Q&A</h3>
<div>
<div class="container">
	<div class="row">
		<div class="col-md-9" >
<table class="table table-list-search" > 

<tbody>
<c:if test="${empty list }">
<tr>
 <td colspan="2" align="center">작성된 글이 없습니다.</td>
</tr>
 </c:if>
<c:forEach var="qna" items="${list }" >
<tr>
  <td><a href="javascript:QnaShow('qna${qna.idx }')">Q. ${qna.subject }</a></td>
 </tr>
 <tr class="tr" id="qna${qna.idx}" style="display:none;">
   <td>A. ${qna.content }</td>
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
</div>
 
<hr>
풋부분
</body>
</html>