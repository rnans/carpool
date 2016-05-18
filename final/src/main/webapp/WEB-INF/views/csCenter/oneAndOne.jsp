<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
헤더부분 
<hr>
<h2>1:1문의</h2>
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
<table border="1">
<thead>
<tr>
   <th>번호</th>
   <th>작성자</th>
   <th>문의유형</th>
   <th>제목</th>
   <th>작성일</th>
   <th>답변현황</th>
   <th>비고</th>
</tr>
</thead>
<tbody>
<tr>
    <td>1</td>
    <td>테스트</td>
    <td>테스트</td>
    <td>테스트</td>
    <td>테스트</td>
    <td>Y?N?</td>
    <td>삭제하기</td>
</tr>
</tbody>
<tfoot>
  <tr>
      <td colspan="7" align="right"><a href="oneAndOneWriteForm.do">1:1문의하기</a></td>
  </tr>
</tfoot>
</table>
<hr>
풋부분
</body>
</html>