<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="/final02/CSS/subMenuComponent.css" />
</head>
<body>
<div class="tabs-container">	
			<div id="tabs" class="tabs">
				<nav>
					<ul>
						<li><a href="#section-1" class="icon-shop"><span>검색하기</span></a></li>
						<li><a href="#section-2" onclick="poolMemberList()" class="icon-cup"><span>탈래요</span></a></li>
						<li><a href="#section-3" onclick="poolMasterList()" class="icon-food"><span>타세요</span></a></li>
						<li><a href="#section-4" onclick="shortList()" class="icon-lab"><span>단기 카풀</span></a></li>
						<li><a href="#section-5" onclick="longPoolList()" class="icon-truck"><span>정기 카풀</span></a></li>
					</ul>
				</nav>
				<div class="content">
					<section id="section-1">
						<div id="search">
	<h1>검색 영역</h1>
	<form name="search" action="search.do">
		출발지<input type="text" placeholder="출발지를 입력하세요." id="ss"
			name="startspot"><br> <input type="hidden" id="sc"
			name="startcoordi"> 목적지<input type="text"
			placeholder="목적지를 입력하세요." id="es" name="endspot"><br> <input
			type="hidden" id="ec" name="endcoordi"> <input type="submit"
			value="검색"><input type="button" onclick="showCate()"
			value="상세 검색"><input type="button" value="실시간 자동 매칭"><br>
		<div id="categorySearch">
			상세 검색 영역 지역 <input type="button" value="서울"><input
				type="button" value="인천"><input type="button" value="부산"><br>
			인원 <input type="button" value="1명"><input type="button"
				value="2명"><input type="button" value="3명 이상"><br>
			성별 <input type="button" value="남성만"><input type="button"
				value="여성만"><br> 흡연여부 <input type="button"
				value="흡연 가능"><input type="button" value="흡연 불가"><br>
		</div>
	</form>
</div>
<script>
var cateBtStatus=false;
var cate=document.getElementById('categorySearch');
window.onload=function()
{
		cateBtStatus=false;
		cate.style.display="none";
}
function showCate()
{
		if(cateBtStatus==true){
		cate.style.display="none";
		cateBtStatus=false;
		}
		else
		{
		cate.style.display="block";
		cateBtStatus=true;
										
		}
}
									 
</script>
					</section>
					<section id="section-2">
						<c:import url="/poolMemberList.do"></c:import>
					</section>
					<section id="section-3">
					</section>
					<section id="section-4">
					</section>
					<section id="section-5">
					</section>
				</div><!-- /content -->
			</div><!-- /tabs -->
			<div id="map"></div>
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
	
	function poolMemberList()
	{
		hideMap();
		
	}
</script>

</html>