<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
헤더부분 <hr>
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
<fieldset>
<legend>1:1문의</legend>
<form action="sendQna.do" >
<ul>
   <li>작성자:<input type="text" name="writer"></li> 
   <li>문의유형:<input type="radio" name="type" value="결제">결제
             <input type="radio" name="type" value="예약">예약
             <input type="radio" name="type" value="커뮤니티">커뮤니티
             <input type="radio" name="type" value="기타">기타 </li>
   <li>제목:<input type="text" name="subject"></li>
   <li>내용</li>
   </ul>
<textarea rows="40" cols="80" name="content"></textarea>
<br>
  
   <input type="reset" value="다시작성하기">
   <input type="submit" value="작성완료">
          </form>

</fieldset>
<hr>
풋부분
</body>
</html>