<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.dropdown2 {
  display: inline-block;
  position: relative;
  overflow: hidden;
  height: 28px;
  width: 150px;
  background: #f2f2f2;
  border: 1px solid;
  border-color: white #f7f7f7 #f5f5f5;
  border-radius: 3px;
  background-image: -webkit-linear-gradient(top, transparent, rgba(0, 0, 0, 0.06));
  background-image: -moz-linear-gradient(top, transparent, rgba(0, 0, 0, 0.06));
  background-image: -o-linear-gradient(top, transparent, rgba(0, 0, 0, 0.06));
  background-image: linear-gradient(to bottom, transparent, rgba(0, 0, 0, 0.06));
  -webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, 0.08);
  box-shadow: 0 1px 1px rgba(0, 0, 0, 0.08);
}
.dropdown2:before, .dropdown2:after {
  content: '';
  position: absolute;
  z-index: 2;
  top: 9px;
  right: 10px;
  width: 0;
  height: 0;
  border: 4px dashed;
  border-color: #888 transparent;
  pointer-events: none;
}
.dropdown2:before {
  border-bottom-style: solid;
  border-top: none;
}
.dropdown2:after {
  margin-top: 7px;
  border-top-style: solid;
  border-bottom: none;
}

.dropdown-select {
  position: relative;
  width: 130%;
  margin: 0;
  padding: 6px 8px 6px 10px;
  height: 28px;
  line-height: 14px;
  font-size: 12px;
  color: #62717a;
  text-shadow: 0 1px white;
  /* Fallback for IE 8 */
  background: #f2f2f2;
  /* "transparent" doesn't work with Opera */
  background: rgba(0, 0, 0, 0) !important;
  border: 0;
  border-radius: 0;
  -webkit-appearance: none;
}
.dropdown-select:focus {
  z-index: 3;
  width: 100%;
  color: #394349;
  outline: 2px solid #49aff2;
  outline: 2px solid -webkit-focus-ring-color;
  outline-offset: -2px;
}
.dropdown-select > option {
  margin: 3px;
  padding: 6px 8px;
  text-shadow: none;
  background: #f2f2f2;
  border-radius: 3px;
  cursor: pointer;
}

/* Fix for IE 8 putting the arrows behind the select element. */
.lt-ie9 .dropdown {
  z-index: 1;
}
.lt-ie9 .dropdown-select {
  z-index: -1;
}
.lt-ie9 .dropdown-select:focus {
  z-index: 3;
}

/* Dirty fix for Firefox adding padding where it shouldn't. */
@-moz-document url-prefix() {
  .dropdown-select {
    padding-left: 6px;
  }
}

.dropdown-dark {
  background: #444;
  border-color: #111 #0a0a0a black;
  background-image: -webkit-linear-gradient(top, transparent, rgba(0, 0, 0, 0.4));
  background-image: -moz-linear-gradient(top, transparent, rgba(0, 0, 0, 0.4));
  background-image: -o-linear-gradient(top, transparent, rgba(0, 0, 0, 0.4));
  background-image: linear-gradient(to bottom, transparent, rgba(0, 0, 0, 0.4));
  -webkit-box-shadow: inset 0 1px rgba(255, 255, 255, 0.1), 0 1px 1px rgba(0, 0, 0, 0.2);
  box-shadow: inset 0 1px rgba(255, 255, 255, 0.1), 0 1px 1px rgba(0, 0, 0, 0.2);
}
.dropdown-dark:before {
  border-bottom-color: #aaa;
}
.dropdown-dark:after {
  border-top-color: #aaa;
}
.dropdown-dark .dropdown-select {
  color: #aaa;
  text-shadow: 0 1px black;
  /* Fallback for IE 8 */
  background: #444;
}
.dropdown-dark .dropdown-select:focus {
  color: #ccc;
}
.dropdown-dark .dropdown-select > option {
  background: #444;
  text-shadow: 0 1px rgba(0, 0, 0, 0.4);
}

	 #custom-search-form {
        margin:0;
        margin-top: 5px;
        padding: 0;
        
    }
 
    #custom-search-form .search-query {
        padding-right: 0px;
        padding-right: 0px;
        padding-left: 3px;
        padding-left: 4px \9;
        /* IE7-8 doesn't have border-radius, so don't indent the padding */
          text-align : center;
        margin-bottom: 0;
        -webkit-border-radius: 3px;
        -moz-border-radius: 3px;
        border-radius: 3px;
    }
 
    #custom-search-form button {
        border: 0;
        background: none;
        /** belows styles are working good */
        padding: 2px 5px;
        margin-top: 2px;
        position: relative;
        left: -28px;
        /* IE7-8 doesn't have border-radius, so don't indent the padding */
        margin-bottom: 0;
        -webkit-border-radius: 3px;
        -moz-border-radius: 3px;
        border-radius: 3px;
    }
 
    .search-query:focus + button {
        z-index: 3;   
    }
#chartdiv {float:right; padding:auto; overflow:hidden; clear:both; margin-left:170px;}
#chartdiv2 {float:right; padding:auto; overflow: hidden; margin-left:170px;}
table a{clear:both; padding: auto; margin:10px 5px; clear:both;}
</style>
<script>
var idx=null;
function memberDelForm(){
	var param="?idx="+idx;
	window.open('memberDelForm.do'+param,'memberDelForm','width=500 height=400 left=500 top=200');
}
function adminAddForm(){
	var param="?idx="+idx;
	window.open('adminAddForm.do'+param,'adminAddForm','width=500 height=400 left=500 top=200');
}
</script>

<script type="text/javascript" src="http://www.amcharts.com/lib/3/amcharts.js"></script>
<script type="text/javascript" src="http://www.amcharts.com/lib/3/pie.js"></script>

<!-- 그래프1 -->
<script type="text/javascript">
AmCharts.makeChart("chartdiv",
		
			{
				"type": "pie",
				"balloonText": "[[title]]<br><span style='font-size:14px'><b>[[value]]</b> ([[percents]]%)</span>",
				"colors": [
					"#495fba","#e8d685","#ae85c9","#c9f0e1","#d48652","#629b6d","#719dc3","#719dc3"
						],
				"titleField": "category",
				"valueField": "column-1",
				"allLabels": [],
				"balloon": {},
			    "legend": {
				"enabled": true,
				"align": "center",
				"color": "#1414CF",
				"markerType": "circle",
				"rollOverColor": "#0000FF"

				
			},
				"titles": [],
				
				"dataProvider": [
					{
						"category": "남성",
						"column-1": "${man}"
						
					},
					{
						"category": "여성",
						"column-1": "${woman}"
					}	
			]
	}
);
</script>

<!-- 그래프2 -->
<script type="text/javascript">
			AmCharts.makeChart("chartdiv2",
					{
						"type": "pie",
						"balloonText": "[[title]]<br><span style='font-size:14px'><b>[[value]]</b> ([[percents]]%)</span>",
						"titleField": "category",
						"valueField": "column-1",
						"theme": "light",
						"allLabels": [],
						"balloon": {},
						"colors": [
									"#495fba","#e8d685","#ae85c9","#c9f0e1","#d48652","#629b6d","#719dc3","#719dc3"
										],
						"legend": {
							"enabled": true,
							"align": "center",
							"markerType": "circle"
						},
						"titles": [],
						"dataProvider": [
							{
							"category": "서울특별시",
							"column-1": "${seoul}"
						},
						{
							"category": "인천광역시",
							"column-1": "${inchean}"
						},
						{
							"category": "부산광역시",
							"column-1": "${busan}"
						},
						{
							"category": "경기도",
							"column-1": "${gyeonggi}"
						},
						{
							"category": "기타",
							"column-1": "${etc}"
						}
						]
					}
				);
		</script>

<!-- 검색 아작스 -->
<script type="text/javascript" src="js/httpRequest.js"></script>
<script>
function show(){
	var search=document.a.search.value;
	var select=document.a.select.value;
	window.alert(search);
	
	var params='select='+select+'&search='+search;
	sendRequest('memberSearch.do', params, showResult, 'GET');
}

function showResult(){//응답결과함수
	if(XHR.readyState==4){
		if(XHR.status==200){
			var result=XHR.responseText;
			span.innerHTML=result;
		}
	}
}
</script>

</head>
<body>
<div>
<%@include file="../header.jsp" %>
</div>
<%@include file="../adHeader.jsp" %>

<div class="container" style="width: 100%; margin: 0px auto;">




	<div id="chartdiv" style="width: 35%; height: 400px; background-color: #FFFFFF;  display: inline-block;"></div>
	<div id="chartdiv2" style="width: 35%; height: 400px; background-color: #FFFFFF;  display: inline-block;"></div>
 
 <div class="container" >
   <div class="row">
        <div class="" >
            <form id="custom-search-form" name="a" class="form-search form-horizontal " action="memberSearch.do">
                <div class="input-append span12" style="margin-left: 470px; float: right;">
						<div class="container"
						style="float: right; margin-right:100px; margin-bottom:10px; display: inline-block; width: 320px; height: 28px;">
							<div class="dropdown2" style=" width: 100px; border: 0; top: 8px;">
								<select name="select" class="dropdown-select" style="width: 130px;">
									<option value="id">아이디</option>
									<option value="sex">성별</option>
									<option value="name">이름</option>
								</select>
							</div>
						</div>
						<input type="text" class="search-query" id="search" name="search" style="width: 150px; float:right; margin-left: 500px; position: absolute;">
                    <button type="button" class="btn" onclick="show();" style="margin-left: 700px; float: right; position: absolute;"><i class="main-icon" data-type="img" > 
                    <img src="http://image005.flaticon.com/28/svg/34/34097.svg" width="20" height="20" alt="Magnifier tool free icon" title="Magnifier tool free icon"></i></button>                 
                </div>
            </form>
        </div>
   </div>
</div> 

		<div id="span" style="margin-left: 165px;">
			<table  border="1" style=" margin-top: 0px;" id="a">
			<thead>
				<tr>
					<th>구분</th>
					<th>이름</th>
					<th>아이디</th>
					<th>지역</th>
					<th>연락처</th>
					<th>이메일</th>
					<th>성별</th>	
					<th>등급</th>
					<th>가입날짜</th>
					<th>등급</th>
					<th>탈퇴</th>
				</tr>
			</thead>
			<!-- for문으로 돌리기. 탈퇴는 버튼으로 만들기 -->
			<tbody>
				<c:set var="memberList" value="${lists}"></c:set>
				<c:if test="${empty memberList}">
					<tr class="even">
						<td colspan="11">등록된 회원이 없습니다.</td>
					</tr>
				</c:if>
				<c:forEach var="list" items="${lists}" >
					<tr>
						<td>${list.idx}</td>
						<td>${list.name}</td>
						<td>${list.id}</td>
						<td>${list.addr }</td>
						<td>${list.phonenum }</td>
						<td>${list.email }</td>
						<td>${list.sex }</td>
						<td>${list.grade}</td>
						<td>${list.joindate}</td>
						<td>
							<input type="button" value="등급조정" onclick="javascript:idx='${list.idx}';adminAddForm();">
						</td>
						<td>
							<input type="button" value="탈퇴시키기" onclick="javascript:idx='${list.idx}';memberDelForm();">
						</td>
					</tr>
				</c:forEach>
				
			</tbody>
			<tfoot>
				<tr class="even">
					<td colspan="11" align="center">
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