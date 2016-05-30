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
<h2>자주묻는질문(Q&A)</h2>

<div>
<table border="1" width="800" height="150" >

<tbody>
<c:if test="${empty list }">
<tr>
 <td colspan="2" align="center">작성된 글이 없습니다.</td>
</tr>
 </c:if>
<c:forEach var="qna" items="${list }" >
<tr>
  <td><a href="javascript:QnaShow('qna${qna.idx }')">${qna.subject }</a></td>
 </tr>
 <tr class="tr" id="qna${qna.idx}" style="display:none;">
   <td>${qna.content }</td>
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