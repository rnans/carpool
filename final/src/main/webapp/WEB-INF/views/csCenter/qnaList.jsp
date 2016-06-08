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
<div>
<%@include file="../header.jsp" %>
</div>
<hr>
<br><br>
<div>
<div class="container" style="margin:  0px 0px 0px 0px;">
	<div class="row">
	<%@include file="csCenterSubMenu.jsp" %>
				<div class=".col-md-10" style="display: inline-block; width: 70%; ">		
				
<h3 align="center"> 자주하는질문(Q&A)</h3>	
<br>
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