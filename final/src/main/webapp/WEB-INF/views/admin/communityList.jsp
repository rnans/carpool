<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
	<link href="./bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
	<script src="/final02/bootstrap/js/bootstrap.js"></script>
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
</style>
</head>
<body>
	<div>헤더</div>
	<%@include file="../adHeader.jsp"%>

	<c:forEach var="list" items="${lists}">

					<div class="accordion" id="accordion2">
						<div class="accordion-heading">
							<a class="accordion-toggle" data-toggle="collapse"
								href=".${list.idx}"> ${list.poolname} </a>
						</div>
						
						<div id="collapseOne" class="${list.idx} accordion-body collapse">
							<div class="accordion-inner">
							<table>
								<thead>
									<tr>
										<th>구분</th>
										<th>카풀명</th>
										<th>아이디</th>
										<th>탈퇴</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>${list.idx}</td>
										<td>${list.name}</td>
										<td>${list.idx}</td>
										<td>${list.idx}</td>
									</tr>
								</tbody>
							</table>
							</div>
						</div>
						
					</div>


				
			
		
	</c:forEach>



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