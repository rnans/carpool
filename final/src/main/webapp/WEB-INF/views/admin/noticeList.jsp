<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

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
<script>
var idx=null;
function noticeDelForm(){
	var param="?idx="+idx;
	window.open('noticeDelete.do'+param,'noticeDelForm','width=500 height=400 left=500 top=200');
}
</script>
<body>
<div>헤더
<%@include file="../header.jsp" %>
</div>
<div>메뉴바
<%@include file="../adHeader.jsp" %>
</div>
<div align="center">
<h2>고객센터관리</h2>
<h4>공지사항</h4> 
</div>
<div id="content">
          
 
            <section class="links">
                <nav class="link-effect-3" id="link-effect-3">
                    <a href="adminNoticeList.do" data-hover="1.공지사항">1.공지사항</a>
                    <a href="adminQnaList.do" data-hover="2.Q&A">2.Q&A</a>
                    <a href="adminOneAndOne.do" data-hover="3.1:1문의">3.1:1문의</a>
                    <a href="adminuseguideList.do" data-hover="4.이용안내">4.이용안내</a>
                </nav>
            </section>
   
           
        </div>  
<!-- <a href="adminNoticeList.do">1.공지사항</a> |<a href="adminQnaList.do">2.Q&A</a> |<a href="adminOneAndOne.do">3.1:1문의</a> |<a href="adminuseguideList.do">4.이용안내</a>
-->


<div>
<table border="1"  style="margin: 0px auto; ">
<thead>
<tr>
   <th>번호</th>
   <th>작성자</th>
   <th>제목</th>
   <th>작성일</th>
   <th>비고</th>
</tr>
</thead>
<tbody>
<c:if test="${empty list }">
<tr class="even">
 <td colspan="5" align="center">작성된 글이 없습니다.</td>
</tr>
 </c:if>

<c:forEach var="notice" items="${list }">

<tr>
 <td>${notice.idx }</td>
  <td>${notice.writer }</td>
 <c:url var="noticeContent" value="NoticeUpdate.do">
 <c:param name="idx">${notice.idx }</c:param>
 </c:url>
 <td><a href="${noticeContent}">${notice.subject}</a></td>
 <td>${notice.writedate }</td>
 <td> <button type="submit" class="uButton uButtonPoint" onclick="javascript:idx='${notice.idx}';noticeDelForm();"
		style="background: #FF5A5A; min-width: 60px; line-height: 20px; margin: 0 3px; font-size: 13px; color: #fff;border:0px;">
	삭제</button>
</td>
 
</tr>
 </c:forEach>
</tbody>
<tfoot>
<tr  class="even">
 <td colspan="5" align="center">${pageStr }</td>
 </tr>
 </tfoot>
</table>
<a href="noticeWriteForm.do">글쓰기</a>
</div>
<hr>
<footer>푸터</footer>
</body>
</html>