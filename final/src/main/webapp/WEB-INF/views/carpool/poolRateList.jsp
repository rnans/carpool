<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>평점 게시판</title>
</head>
<body>
<table>
<thead>
	<tr>
	<th>평점</th>
	<th>글쓴이</th>
	<th>내용</th>
	<th>작성일자</th>
	</tr>
</thead>
<tbody>
	<tr>
		<td>평점</td>
		<td>글쓴이</td>
		<td>내용 <c:if test="${dto.userid eq sid}"><a href="#">수정</a> <a href="#">삭제</a></c:if></td>
		<td>작성일자</td>
	</tr>
</tbody>
</table>
</body>
</html>