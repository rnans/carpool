<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가장 편리한 카풀 서비스, 풀파티!</title>
<style type="text/css">
.button {
  display: inline-block;
  vertical-align: top;
  padding: 10px 25px;
  font-size: 15px;
  color: #111;
  text-align: center;
  text-decoration: none;
  text-shadow: 0 0 2px rgba(255, 255, 255, 1);
  background-color: #ccc;
  background-clip: padding-box;
  border: 1px solid;
  border-color: #202020 #1a1a1a #111;
  border-radius: 2px;
  background-image: -webkit-linear-gradient(top, #efefef, #777);
  background-image: -moz-linear-gradient(top, #efefef, #777);
  background-image: -o-linear-gradient(top, #efefef, #777);
  background-image: linear-gradient(to bottom, #efefef, #777);
  -webkit-box-shadow: inset 0 1px rgba(255, 255, 255, 0.09), 0 1px 1px rgba(0, 0, 0, 0.3);
  box-shadow: inset 0 1px rgba(255, 255, 255, 0.09), 0px 1px 1px rgba(0, 0, 0, 0.2);
}
.button:hover {
  background-color: #aaaaaa;
  background-image: -webkit-linear-gradient(top, #ccc, #555);
  background-image: -moz-linear-gradient(top, #ccc, #555);
  background-image: -o-linear-gradient(top, #ccc, #555);
  background-image: linear-gradient(to bottom, #ccc, #555);
}
.button:active, .button.active {
  background-color: #b42f32;
  border-color: #1c1c1c #202020 #222;
  -webkit-box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.3), 0 1px rgba(255, 255, 255, 0.09);
  box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.3), 0 1px rgba(255, 255, 255, 0.09);
}

.rounded {border-radius:100em!important;}
.darkGrey {
  color: #bbb;
  text-shadow: 0 0 2px rgba(0, 0, 0, .7);
  background-color: #474747;
  border-color: #1c1c1c #202020 #222;
  background-image: -webkit-linear-gradient(top, #2a2a2a, #1b1b1b);
  background-image: -moz-linear-gradient(top, #2a2a2a, #1b1b1b);
  background-image: -o-linear-gradient(top, #2a2a2a, #1b1b1b);
  background-image: linear-gradient(to bottom, #2a2a2a, #1b1b1b);
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
<script>
var idx=null;

function qnaDel(){
	this.idx=idx;
	var params='idx='+idx;
	sendRequest('QnaDelete.do', params, null, 'GET');
	location.reload();
}
</script>
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
                            고객센터 <small>Q&A</small>
                        </h1>
                    </div>
                </div>
  <div class="btn-group" role="group" aria-label="..." style="margin-left:985px;">
  <a href="qnaWrite.do" class="btn btn-default">글쓰기</a>
</div>
<table border="1" style="margin: 0px auto;" >
<thead>
<tr>
   <th>번호</th>
   <th>제목</th>
   <th>내용</th>
   <th>작성날짜</th>
   <th>비고</th>
</tr>
</thead>
<tbody>
<c:if test="${empty list }">
<tr>
 <td colspan="5" align="center">작성된 글이 없습니다.</td>
</tr>
 </c:if>

<c:forEach var="qna" items="${list }">

<tr>
 <td>${qna.idx }</td>
 <c:url var="qnaContent" value="qnaUpdate.do">
 <c:param name="idx">${qna.idx }</c:param>
 </c:url>
 <td><a href="${qnaContent}">${qna.subject }</a></td>
 <td>${qna.content}</td>
 <td>${qna.writedate }</td>

 <td>
 <a onclick="javascript:idx='${qna.idx}';" data-title="QnaDel" data-toggle="modal" data-target="#delete">
 <button type="button" class="uButton uButtonPoint"
		style="background: #FF5A5A; min-width: 60px; line-height: 20px; margin: 0 3px; font-size: 13px; color: #fff;border:0px;">
	삭제</button>
	</a>
	</td>
 
 
</tr>
 </c:forEach>
</tbody>
<tfoot>
<tr  class="even">
 <td colspan="5" align="center">${pageStr }</td>
 </tr>
 </tfoot>
</table>

</div>
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
					<button type="button" class="btn btn-success" onclick="javascript:qnaDel();" data-dismiss="modal">
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

</body>
</html>