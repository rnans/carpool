<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="http://code.jquery.com/jquery-2.1.0.min.js" ></script>
<script type="text/javascript">
$(function(){
  $('.btn_show').click(function(){
    $('.btn_word').show();
  });
  $('.btn_hide').click(function(){
    $('.btn_word').hide();
  });
});
</script>
<body>
<div>헤더부분</div>
<%@include file="../header.jsp" %>
 <hr>
<h2>자주묻는질문(Q&A)</h2>
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
<table border="1" width="800" height="150" >

<tbody>
<c:if test="${empty list }">
<tr>
 <td colspan="2" align="center">작성된 글이 없습니다.</td>
</tr>
 </c:if>
<c:forEach var="qna" items="${list }" >
<tr>
 <td><button class="btn_show" style="padding:10px,10px ">제목:${qna.subject}</button>
 <button class="btn_hide" style="padding:5px">닫기</button>
 </td>
 </tr>
 <tr>
 <td><div class="btn_word">내용:${qna.content}</div></td>
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
<div>qna제목1             -----클릭시 (제목과 내용을박는다)</div>
<div> 제목1 내용출력</div>
 
<hr>
풋부분
</body>
</html>