<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="js/httpRequest.js"></script>
<script>
var idx=null;
function oneandoneDelForm(){
	var param="?idx="+idx;
	window.open('oneandoneDelete.do'+param,'oneandoneDelForm','width=500 height=400 left=500 top=200');
}

function show(){
	var search=document.a.search.value;
	var select=document.a.select.value;
	
	var params='select='+select+'&search='+search;
	sendRequest('oneandoneSearch.do', params, showResult, 'GET');
}

function showResult(){//응답결과함수
	if(XHR.readyState==4){
		if(XHR.status==200){
			var result=XHR.responseText;
			span.innerHTML=result;
		}
	}
}
</script>
<body>
<%@include file="../header.jsp" %>
<%@include file="../adHeader.jsp" %>
<div>헤더부분 </div>
<hr>
<section>
<h2>고객센터관리</h2>
<a href="adminNoticeList.do">1.공지사항</a> |<a href="adminQnaList.do">2.Q&A</a> |<a href="adminOneAndOne.do">3.1:1문의</a> |<a href="adminuseguideList.do">4.이용안내</a>
<h4>1:1문의내역</h4>
</section>
<form name="a" action="oneandoneSearch.do">

<select name="select" id="select">
<option value="writer">작성자</option>
<option value="type">문의유형</option>
<option value="status">답변현황</option>
 </select>
 <input type="text" id="search" name="search">
 <input type="button" value="검색" onclick="show()">
 </form>
<section>

<div id="span">
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
<c:if test="${empty list }">
<tr>
 <td colspan="7" align="center">작성된 글이 없습니다.</td>
</tr>
 </c:if>

<c:forEach var="oneandone" items="${list }">
<tr>
 <td>${oneandone.idx }</td>
 <c:url var="oneandoneAnswer" value="oneandoneAnswer.do">
 <c:param name="idx">${oneandone.idx }</c:param>
 </c:url>
 <td>${oneandone.writer }</td>
 <td>${oneandone.type }</td>
 <td><a href="${oneandoneAnswer}">${oneandone.subject}</a></td>
 <td>${oneandone.writedate }</td>
 <td>${oneandone.state }</td>
 <td> <input type="button" value="글삭제" onclick="javascript:idx='${oneandone.idx}';oneandoneDelForm();"></td>
 
</tr>
 </c:forEach>
</tbody>
<tfoot>
<tr>
 <td colspan="7" align="center">${pageStr }</td>
 </tr>
 </tfoot>
</table>
</div>
</section>
<hr>
풋부분
</body>
</html>