<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<div>헤더
<%@include file="../header.jsp" %>
</div>
<div>메뉴바
<%@include file="../adHeader.jsp" %>
</div>
<div align="center">
<h2>예약 및 결제관리</h2>
<h4>결제관리</h4> 
</div>
<div id="content">
            <section class="links">
                <nav class="link-effect-3" id="link-effect-3">
                    <a href="#" data-hover="1.진행중인예약">1.진행중인예약</a>
                    <a href="driverReserveList.do" data-hover="2.드라이버예약">2.드라이버예약</a>
                    <a href="memberReserveList.do" data-hover="3.사용자예약">3.사용자예약</a>
                    <a href="payMentList.do" data-hover="4.결제관리">4.결제관리</a>
                </nav>
            </section>   
        </div>  
<section>
	<article>
	<div>
		<table border="1" style="margin: 0px auto;" width="500">
			<thead>
				<tr>
					<th>구분</th>
					<th>결제자</th>
					<th>결제방법</th>
					<th>금액</th>
					<th>결제내용</th>
					<th>결제취소</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td></td>
				</tr>
			</tbody>
			<tfoot>
				<tr>
				
				</tr>
			</tfoot>
		</table>
		</div>
	</article>
</section>
<footer>풋</footer>
</body>
</html>