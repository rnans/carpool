<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="">
<link rel="stylesheet" type="text/css" href="CSS/message.css">
<script src="js/message.js"></script>
<style>
	
</style>
</head>
<body>
		<%@ include file="../header.jsp" %>
	<div class="container" style="margin-top:80px;">
	<div class="row">
		<section class="content">
			<h1>메시지 창고</h1>
			<div class="col-md-8 col-md-offset-2">
				<div class="panel panel-default">
					<div class="panel-body">
						<div class="pull-right">
							<div class="btn-group">
								<button type="button" class="btn btn-success btn-filter" data-target="pagado">전체삭제</button>
								<button type="button" class="btn btn-warning btn-filter" data-target="pendiente">선택삭제</button>
								<button type="button" class="btn btn-danger btn-filter" data-target="cancelado">Cancelado</button>
								<button type="button" class="btn btn-default btn-filter" data-target="all">Todos</button>
							</div>
						</div>
						
						<c:forEach var="m" items="${lists}">
						<div class="table-container">
							<table class="table table-filter">
								<tbody>
									<tr data-status="pagado">
										<td>
											<div class="ckbox">
												<input type="checkbox" id="checkbox1">
												<label for="checkbox1"></label>
											</div>
										</td>
										<td>
											<a href="javascript:;" class="star">
												<i class="glyphicon glyphicon-star"></i>
											</a>
										</td>
										<td>
											<div class="media">
												<a href="#" class="pull-left">
													<img src="https://s3.amazonaws.com/uifaces/faces/twitter/fffabs/128.jpg" class="media-photo">
												</a>
												<div class="media-body">
													<span class="media-meta pull-right">${m.senddate}</span>
													<h4 class="title">
														${m.sendid}
														<span class="pull-right pagado">${m.receiveid}</span>
													</h4>
													<p class="summary">${m.content}...</p>
												</div>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						</c:forEach>
						
					</div>
				</div>
			</div>
		</section>
	</div>
</div>
</body>
</html>