<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="./bootstrap/css/bootstrap.css">
	<link rel="stylesheet" type="text/css"
   href="http://s.cmstatic.net/webclient/dres/20160608160250/css/bandComponent.css?_=20160608160250">
<link rel="stylesheet" type="text/css"
   href="http://s.cmstatic.net/webclient/dres/20160608160250/css/band.css?_=20160608160250">
<link rel="stylesheet" type="text/css"
   href="http://s.cmstatic.net/webclient/dres/20160608160250/css/bandLayout.css?_=20160608160250">
   
<style>
	.ipro{border-radius:200px;height:130px; width:130px;}
</style>
</head>
<body>

<article class="lyContent lyProfileSelf" data-viewtype="edge"
	style="width: 320px">
	<header class="gSrOnly">
		<h1>프로필 보기</h1>
	</header>
	<div class="main">
		<div class="iprofile"><img src="img/${uDTO.filename}" class="ipro"></div>
		
		<c:forEach var="p" items="${lists}">
			<strong class="name">${p.name}</strong>
			<p class="nickname"></p>
			<div class="info">
				<span class="birthday" data-icon="email">${p.email}</span> <span
					class="addr">${p.addr}</span>
			</div>
		</c:forEach>
		<ul class="functionBtn">
			<li><a href="#" data-icon="setting"
				data-uiselector="btnEditProfile">프로필 설정</a></li>
			<li><a href="#" data-icon="search"
				data-uiselector="btnSearchMemberPost">작성글 보기</a></li>
		</ul>
	</div>
	<footer>
		<div class="memberManager"></div>
	</footer>
</article>
</body>
</html>