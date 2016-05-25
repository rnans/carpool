<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="/final2/js/jquery-1.12.4.min"></script>
<script language="javascript">

function UseGuideShow(useguide) {
 
$('.tr').css('display','none');
	
 var obj=document.getElementById(useguide);
	 
 obj.style.display = "block";
}
</script> 

<body>
<div>헤더부분</div>
<%@include file="../header.jsp" %>
 <hr>
<h2>이용안내</h2>
<div>왼쪽메뉴바
<table border="1">
<thead>
<tr>
    <th><a href="notice.do">공지사항</a></th>
</tr>
<tr>   
    <th><a href="qnaList.do">자주묻는질문(Q&A)</a></th> 
</tr>
<tr>
    <th><a href="oneAndOne.do">1:1문의</a></th>
</tr>
<tr>
    <th><a href="useGuideList.do">이용안내</a></th>
</tr>
</thead>
</table>
<section>
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
</section>
</div>
<div>이용안내제목1             -----클릭시 (제목과 내용을박는다)</div>
<div> 제목1 내용출력</div>
 
<hr>
풋부분
</body>
</html>