<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./bootstrap/css/font-awesome.min.css">
<link href="/final02/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>

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

.dropdown-select>option {
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
@
-moz-document url-prefix () { .dropdown-select { padding-left:6px;
}
}
.dropdown-dark {
	background: #444;
	border-color: #111 #0a0a0a black;
	background-image: -webkit-linear-gradient(top, transparent, rgba(0, 0, 0, 0.4));
	background-image: -moz-linear-gradient(top, transparent, rgba(0, 0, 0, 0.4));
	background-image: -o-linear-gradient(top, transparent, rgba(0, 0, 0, 0.4));
	background-image: linear-gradient(to bottom, transparent, rgba(0, 0, 0, 0.4));
	-webkit-box-shadow: inset 0 1px rgba(255, 255, 255, 0.1), 0 1px 1px
		rgba(0, 0, 0, 0.2);
	box-shadow: inset 0 1px rgba(255, 255, 255, 0.1), 0 1px 1px
		rgba(0, 0, 0, 0.2);
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
.dropdown-dark .dropdown-select>option {
	background: #444;
	text-shadow: 0 1px rgba(0, 0, 0, 0.4);
}
#custom-search-form {
	margin: 0;
	
	padding: 0;
}
#custom-search-form .search-query {
	padding-right: 0px;
	padding-right: 0px;
	padding-left: 3px;
	padding-left: 4px \9;
	/* IE7-8 doesn't have border-radius, so don't indent the padding */
	text-align: center;
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
	right: 50px;
}
.search-query:focus+button {
	z-index: 3;
}
<
style type ="text/css">.links {
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
.btn-glyphicon {
	padding: 8px;
	background: #ffffff;
	margin-right: 4px;
}
.icon-btn {
	padding: 1px 15px 3px 2px;
	border-radius: 50px;
}
</style>
</head>
<script type="text/javascript" src="js/httpRequest.js"></script>
<script>
	var idx = null;
	function oneandoneDel(){
		this.idx=idx;
		var params='idx='+idx;
		sendRequest('oneandoneDelete.do', params, null, 'GET');
		location.reload();
	}

	function show() {
		var search = document.a.search.value;
		var select = document.a.select.value;
		var params = 'select=' + select + '&search=' + search;
		sendRequest('oneandoneSearch.do', params, showResult, 'GET');
	}

	function showResult() {//응답결과함수
		if (XHR.readyState == 4) {
			if (XHR.status == 200) {
				var result = XHR.responseText;
				spans.innerHTML = result;
			}
		}
	}
</script>
<body>

<%@include file="../header.jsp" %>

<div style="width: 100%; ">
<div style="width:20%; margin: 100px 0px 0px 0px;">
<%@include file="../adHeader.jsp" %>
</div>
<div class=""  style="margin: 0px auto; padding-left:292px;display: inline-block; width: 80%; ">
 <div style="">
 <div align="center" style="margin-left:180px;">
<h2 >고객센터관리</h2>
         <h4>1:1문의</h4>
         </div>
         
		<form id="custom-search-form" name="a"
			class="form-search form-horizontal" action="oneandoneSearch.do">

			<div class="container"
				style="margin-top:10px;margin-bottom:15px; margin-left:730px; display: inline-block; width: 320px; height: 28px;">
				<div class="dropdown2" style=" width: 100px; border: 0; top: 10px;">

					<select name="select" style="width: 130px;"
						class="dropdown-select">
						<option value="writer">작성자</option>
						<option value="type">문의유형</option>
						<option value="state">답변현황</option>
					</select>
				</div>

				<input type="text" class="search-query" id="search" name="search"
					style="width: 150px; padding: 0px 0px;">
				<button type="button" class="btn" onclick="show();">
					<i class="main-icon" data-type="img"> <img
						src="http://image005.flaticon.com/28/svg/34/34097.svg"
						width="20" height="20" alt="Magnifier tool free icon"
						title="Magnifier tool free icon"></i>
				</button>
			</div>
		</form>
	</div>
<div id="spans" >
	<table border="1" style="margin: 0px auto; " >
	<thead>
	<tr>
	   <th>번호</th>
	   <th>작성자</th>
	   <th>문의유형</th>
	   <th>제목</th>
	   <th>작성일</th>
	   <th>답변현황</th>
	   <th>비고</th>
	</tr>
	</thead>
	<tbody>
	<c:if test="${empty list }">
	<tr class="even">
	 <td colspan="7" align="center">작성된 글이 없습니다.</td>
	</tr>
	 </c:if>
	<c:forEach var="oneandone" items="${list }">
	<tr class="even">
	 <td>${oneandone.idx}</td>
	 <c:url var="oneandoneAnswer" value="oneandoneAnswer.do">
	 <c:param name="idx">${oneandone.idx }</c:param>
	 </c:url>
	 <td>${oneandone.writer }</td>
	 <td>${oneandone.type }</td>
	 <td><a href="${oneandoneAnswer}">${oneandone.subject}</a></td>
	 <td>${oneandone.writedate }</td>
	 <td>${oneandone.state }</td>
	 <td> 
	 <a onclick="javascript:idx='${oneandone.idx}';" data-title="OneandoneDel" data-toggle="modal" data-target="#delete">
	 <button type="button" class="uButton uButtonPoint"
		style="background: #FF5A5A; min-width: 60px; line-height: 20px; margin: 0 3px; font-size: 13px; color: #fff;border:0px;">
	삭제</button>
	</a>
	</td>
	</tr>
	 </c:forEach>
	</tbody>
	<tfoot>
	<tr class="even">
	 <td colspan="7" align="center">${pageStr }</td>
	 </tr>
	 </tfoot>
	</table>
</div>
</div>
</div>
<hr>
<!-- 삭제 모달 -->
	<div class="modal fade" id="delete" tabindex="-1" role="dialog"
		aria-labelledby="edit" aria-hidden="true">
		<div class="modal-dialog" style="position:absolute; width: 350px;padding-top: 150px; margin: 0px auto;">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
					</button>
					<h4 class="modal-title custom_align" id="Heading">삭제</h4>
				</div>
				<div class="modal-body">

					<div class="alert alert-danger">
						<span class="glyphicon glyphicon-warning-sign">정말 삭제 하시겠습니까?</span> 
					</div>
				</div>
				<div class="modal-footer ">
					<button type="button" class="btn btn-success" onclick="javascript:oneandoneDel();" data-dismiss="modal">
						<span class="glyphicon glyphicon-ok-sign"></span> Yes
					</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">
						<span class="glyphicon glyphicon-remove"></span> No
					</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
<!-- 삭제 모달 -->
<footer>
풋부분
</footer>
</body>
</html>