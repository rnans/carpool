<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
	<link href="./bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
<style>
@import url('//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css');
.accordion-toggle:after {
    font-family: 'FontAwesome';
    content: "\f078";    
    float: right;
}
.accordion-opened .accordion-toggle:after {    
    content: "\f077";    
}

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
<body>
	
	<%@include file="../adHeader.jsp"%>
	
	<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
	<script src="/final02/bootstrap/js/bootstrap.js"></script>
	
	<div align="center"
		style="margin-left: 150px; margin-bottom: 10px; margin-top: 60px;">
		<h2 align="center">커뮤니티관리</h2>
		<h4 align="center">커뮤니티</h4>
		<div id="content" align="center">
			<section class="links">
				<nav class="link-effect-3" id="link-effect-3">
					<a href="memberCommList.do" data-hover="1.커뮤니티">1.커뮤니티</a> 
				</nav>
			</section>
		</div>
	</div>
	
	<div class="container" style="width: 100%; margin-left: 215px;">
	
	<table style="margin: 10px auto; height: 80px;">
	
				<tr>
					<th>구분</th>
					<th>커뮤니티명</th>
					<th>종류</th> <!-- aim -->
					<th>가격</th> <!-- pay -->
					<th>흡연여부</th> <!-- smoking -->
					<th>성별</th> <!-- gender -->
					<th>단기/장기</th> <!-- termtype -->
					<th>상태</th> <!-- status -->
				</tr>
	</table>

		<c:forEach var="list" items="${list3}" varStatus="status">
		<div class="accordion" id="accordion2" style="margin-bottom: 0px;">
		<table style="margin: 10px auto; height: 80px;">
				
				<c:forEach var="list3" items="${list2}">
				
				<c:if test="${list.poolname==list3.poolname}">
				
				<tr>
					<td>
						${status.count}
					</td>
				
					<td>
						<div class="accordion-heading">
							<a class="accordion-toggle" data-toggle="collapse"
								href=".${list.poolname}"> ${list.poolname} </a>
						</div>	
					</td>
					<td>${list.aim }</td>
					<td>${list.pay }</td>
					<td>${list.smoking }</td>
					<td>${list.gender }</td>
					<td>${list.termtype }</td>
					<td>${list.status }</td>
				</tr>
				</c:if>
				
				
				</c:forEach>
				
				
		</table>	
		</div>	
		
				<div id="collapseOne" class="${list.poolname} accordion-body collapse">
							<div class="accordion-inner" style="margin-top: 0px;">
							
							<table style="margin: 0px auto; height: 120px;">
							<tr>
										<th>구분</th>
										<th>카풀명</th>
										<th>아이디</th>
										<th>이름</th>
										<th>카풀종류</th>
										<th>연락처</th>
										<th>이메일</th>
										<th>성별</th>
										<th>생년월일</th>
										<th>탈퇴</th>
									</tr>
							<c:forEach var="list2" items="${list2}">
							<c:if test="${list.poolname==list2.poolname}">
									<tr>
										<td>${list2.idx}</td>
										<td>${list2.poolname}</td>
										<td>${list2.id}</td>
										<td>${list2.name}</td>
										<td>${list2.termtype}</td>
										<td>${list2.phonenum}</td>
										<td>${list2.email}</td>
										<td>${list2.sex}</td>
										<td>${list2.birth}</td>
										<td>탈퇴</td>
									</tr>
								</c:if>
								</c:forEach>	
							</table>
								
							</div>
						</div>
				
				</c:forEach>	
						
					
		

	<div style="text-align: center;">
			${pageStr }
	</div>
</div>
	<!-- 아코디언 -->
				<script>
    $(document).on('show','.accordion', function (e) {
        //$('.accordion-heading i').toggleClass(' ');
        console.log(e.target);
        $(e.target).prev('.accordion-heading').addClass('accordion-opened');
   });
   
   $(document).on('hide','.accordion', function (e) {
       console.log(e.target);
       $(this).find('.accordion-heading').not($(e.target)).removeClass('accordion-opened');
       //$('.accordion-heading i').toggleClass('fa-chevron-right fa-chevron-down');
   });
	</script>
</body>
</html>