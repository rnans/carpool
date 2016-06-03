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
<script type="text/javascript" src="js/httpRequest.js"></script>
<script>
var idx=null;
function adminDriverReserveDel(){
	var param="?idx="+idx;
	window.open('adminDriverReserveDel.do'+param,'adminDriverReserveDel','width=500 height=400 left=500 top=200');
}
function show(){
	var search=document.a.search.value;
	var select=document.a.select.value;
	
	var params='select='+select+'&search='+search;
	sendRequest('adminDriverReserveSearch.do', params, showResult, 'GET');
}

function showResult(){//응답결과함수
	if(XHR.readyState==4){
		if(XHR.status==200){
			var result=XHR.responseText;
			spans.innerHTML=result;
		}
	}
}
</script>
<body>
<div>헤더
<%@include file="../header.jsp" %>
</div>
<div>메뉴바
<%@include file="../adHeader.jsp" %>
</div>
<div align="center">
<h2>예약 및 결제관리</h2>
<h4>드라이버예약</h4> 
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

<div> 검색창
<form name="a" action="adminDriverReserveSearch.do">

<select name="select" id="select">
<option value="masterid">작성자</option>
<option value="status">예약상태</option>
<option value="aimidx">예약된 게시물 글번호</option>
 </select>
 <input type="text" id="search" name="search">
 <input type="button" value="검색" onclick="show()">
 </form>
 </div>



	
	<div id="spans">
		<table border="1" style="margin: 0px auto;" width="800" height="150" >
			<thead>
			
				<tr>
					<th>번호</th>
					<th>예약된 게시물 글번호</th>
					<th>드라이버아이디</th>
					<th>구하는인원</th>
					<th>현재인원</th>
					<th>모집상태</th>
					<th>요청회원들</th>
					<th>수락한멤버들</th>
					<th>요청한인원수</th>
					<th>비고</th>
				</tr>
				
			</thead>
			<tbody>
			<c:if test="${empty list}">
					<tr class="even">
						<td colspan="10" align="center">등록된 드라이버 카풀이 없습니다.</td>
					</tr>
				</c:if>
				<c:forEach var="list" items="${list}">
				<tr>
					<td>${list.idx }</td>
					<c:url var="aimidxContent" value="adminAimidxContent.do">
          <c:param name="idx">${list.aimidx }</c:param>
          </c:url>
					<td><a href="${aimidxContent}" >${list.aimidx }</a></td>
					<td>${list.masterid }</td>
					<td>${list.mans }</td>
					<td>${list.nowmans }</td>
					<td>${list.status }</td>
					<td>${list.members }</td>
					<td>${list.inmembers }</td>
					<td>${list.reqcount}</td>
		<td><button type="submit" class="uButton uButtonPoint" onclick= "javascript:idx='${list.idx}';adminDriverReserveDel();"
		style="background: #FF5A5A; min-width: 60px; line-height: 20px; margin: 0 3px; font-size: 13px; color: #fff;border:0px;">
	삭제</button>
	</td>
	
				</tr>
				</c:forEach>
			</tbody>
			
			<tfoot>
				<tr  class="even">
				<td colspan="10" align="center">
						${pageStr}
					</td>
				</tr>
			</tfoot>
		</table>
		</div>

<footer>풋</footer>
</body>
</html>