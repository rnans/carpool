<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="/final02/CSS/subMenuComponent.css" />
</head>
<body>
<div class="container">	
			<div id="tabs" class="tabs">
				<nav>
					<ul>
						<li><a href="#section-1" onclick="poolFind()" class="icon-shop"><span>검색하기</span></a></li>
						<li><a href="#section-2" onclick="poolMemberList()" class="icon-cup"><span>탈래요</span></a></li>
						<li><a href="#section-3" onclick="poolMasterList()" class="icon-food"><span>타세요</span></a></li>
						<li><a href="#section-4" onclick="shortList()" class="icon-lab"><span>단기 카풀</span></a></li>
						<li><a href="#section-5" onclick="longPoolList()" class="icon-truck"><span>정기 카풀</span></a></li>
					</ul>
				</nav>
				<div class="content">
					<section id="section-1">		
					</section>
					<section id="section-2">
					</section>
					<section id="section-3">
					</section>
					<section id="section-4">
					</section>
					<section id="section-5">
					</section>
				</div><!-- /content -->
			</div><!-- /tabs -->
</div>
</body>
<script>
	var mapDiv=document.getElementById('map');
	
	function hideMap()
	{
		mapDiv.style.display='none';
	}
	
	function showMap()
	{
		mapDiv.style.display='block';
	}
	
	function poolFind()
	{
		location.href='poolFind.do';
	}
</script>
</html>