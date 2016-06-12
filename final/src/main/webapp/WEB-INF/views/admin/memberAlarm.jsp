<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<body>
<%@include file="../header.jsp" %>
<div style="width: 100%; ">
<div style="width: 20%; margin: 60px 0px 0px 0px">
<%@include file="../adHeader.jsp" %>
</div>
<div id="wrapper">
        <div id="page-wrapper">

            <div class="container-fluid">
   <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header" style="margin-top: 20px;border-bottom: 5px solid #eeeeeee;">
                            회원관리<small>회원알람</small>
                        </h1>
                    </div>
                </div>
	
<div>
		<table border="1" style="margin: 0px auto;">
			<thead>
				<tr>
					<th>구분</th>
					<th>아이디</th>
					<th>실시간알람</th>
					<th>예약알람</th>
					<th>추천알람</th>
					<th>평가알람</th>
					<th>커뮤니티알람</th>
					<th>비고</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="dto" items="${lists}">
					<tr>
						<td>${dto.idx }</td>
						<td>${dto.userid }</td>
						<td>${dto.chat }</td>
						<td>${dto.reservation }</td>
						<td>${dto.recommand}</td>
						<td>${dto.rate}</td>
						<td>${dto.community}</td>
						<td></td>
					</tr>
				</c:forEach>
				
			</tbody>
			<tfoot>
				<tr  class="even">
					<td colspan="8" align="center">
					${pageStr }
					</td>
				</tr>
			</tfoot>
		</table>
	</div>
	</div>
</div>
</div>
</div>
<footer>풋</footer>
</body>
</html>