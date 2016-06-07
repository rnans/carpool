<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./bootstrap/css/font-awesome.min.css">
<link href="/final02/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
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
<div>헤더
<%@include file="../header.jsp" %>
</div>
<div>메뉴바
<%@include file="../adHeader.jsp" %>
</div>

	<div class=".col-md-8" style="margin-left:100px; display: inline-block; width: 100%; ">
	<div align="center">
<h2>예약 및 결제관리</h2>
<h4>결제관리</h4> 
</div>
<div id="content">
            <section class="links">
                <nav class="link-effect-3" id="link-effect-3">
                    <a href="driverReserveList.do" data-hover="1.진행중인예약">1.진행중인예약</a>
                    <a href="memberReserveList.do" data-hover="2.사용자예약">2.사용자예약</a>
                    <a href="payMentList.do" data-hover="3.결제관리">3.결제관리</a>
                </nav>
            </section>   
        </div>  
	<div>
		<table border="1" style="margin: 0px auto;"  >
			<thead>
			
				<tr>
					<th>번호</th>
					<th>결제아이디</th>
				    <th>모집상태</th>
					<th>글타입</th>
					<th>기간</th>
					<th>글제목</th>
					<th>금액</th>		
				</tr>				
			</thead>
			<tbody>
			<c:if test="${empty list}">
					<tr class="even">
						<td colspan="7" align="center">결제내역이없습니다.</td>
					</tr>
				</c:if>
				<c:forEach var="list" items="${list}">
				<tr>
					<td>${list.idx }</td>				
					<td>${list.userid}</td>
					<td>${list.status }</td>
					<td>${list.pooltype }</td>
					<td>${list.termtype}</td>
					<td>${list.poolname}</td>
					<td>${list.pay }</td>							
				</tr>
				</c:forEach>
			</tbody>
			
			<tfoot>
				<tr  class="even">
				<td colspan="7" align="center">
						${pageStr}
					</td>
				</tr>
			</tfoot>
		</table>
		</div>
		</div>
<footer>풋</footer>
</body>
</html>