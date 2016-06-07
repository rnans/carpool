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
<script>
var idx=null;
function adminMemberReserveDel(){
	var param="?idx="+idx;
	window.open('adminMemberReserveDel.do'+param,'adminMemberReserveDel','width=500 height=400 left=500 top=200');
}
</script>
<body>
<div>헤더
<%@include file="../header.jsp" %>
</div>
<div>메뉴바
<%@include file="../adHeader.jsp" %>
</div>

        <div class=".col-md-8" style="margin-left:110px; display: inline-block; width: 100%; ">
        <div  align="center">
<h2>예약 및 결제관리</h2>
<h4>사용자예약</h4> 
</div>
<div id="content">
            <div class="links">
                <nav class="link-effect-3" id="link-effect-3">
                    <a href="driverReserveList.do" data-hover="1.진행중인예약">1.진행중인예약</a>
                    <a href="memberReserveList.do" data-hover="2.사용자예약">2.사용자예약</a>
                    <a href="payMentList.do" data-hover="3.결제관리">3.결제관리</a>
                </nav>
            </div>   
        </div>  
        
<div>
		<table border="1" style="margin: 0px auto;" width="800" height="150" >
			<thead>
				<tr>
					<th>번호</th>
					<th>참가자아이디</th>
					<th>작성글번호</th>
					<th>예약한드라이버글번호</th>
					<th>예약진행상태</th>
					<th>예약인원</th>
					<th>비고</th>
				</tr>
			</thead>
			<tbody>
			<c:if test="${empty list}">
					<tr class="even">
						<td colspan="7" align="center">등록된 드라이버 카풀이 없습니다.</td>
					</tr>
				</c:if>
				<c:forEach var="list" items="${list}">
				<tr>
					<td>${list.idx }</td>
					<td>${list.memberid }</td>
					<td>${list.ownidx }</td>
					<td>${list.aimidx }</td>
					<td>${list.status }</td>
					<td>${list.mans }</td>
									<td><button type="submit" class="uButton uButtonPoint" onclick= "javascript:idx='${list.idx}';adminMemberReserveDel();"
		style="background: #FF5A5A; min-width: 60px; line-height: 20px; margin: 0 3px; font-size: 13px; color: #fff;border:0px;">
	삭제</button>
	</td>
	
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