<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link href="./bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
<div class="outer" style="display: table;width:100%;height:36px;background-color:#4C4C4C;">
<h4 style="padding-left:100px; color: white;font-size: 15px;">
<i class="fa fa-car" aria-hidden="true"></i> &nbsp;${cardto.cartype } &nbsp; [${cardto.carnum}]</h4>

</div>
	
		 <table id="mytable" class="table table-bordred table-striped">
		<!-- <table border="1" width="600" height="100">-->
			<thead>
				 <th><input type="checkbox" id="checkall" /></th>
					<th>날짜</th>
					<th>유형</th>
					<th>비고</th>
					<th>금액</th>
					<th>주행거리</th>
					<th style="text-align: center;width: 150px;">수정/삭제</th>				
			<tbody>
				<c:forEach var="list" items="${list}">
					<tr>
					 <td><input type="checkbox" class="checkthis" /></td>
						<td>${list.costday}</td>
						<td>${list.category}</td>
						<td>${list.bigo}</td>
						<td><c:if test="${empty list.cost }">0</c:if>
						${list.cost}&nbsp;원</td>
						<td><c:if test="${empty list.km }">0</c:if>
						${list.km}&nbsp;km</td>
						<td class="text-center">

						<a href="javascript:idx='${list.idx}';alert(idx);" class="btn btn-info btn-xs">
						<span class="glyphicon glyphicon-edit" data-title="Edit" data-toggle="modal" data-target="#edit"></span> Edit</a>
				
						<a onclick="javascript:idx='${list.idx}';" data-title="Delete" data-toggle="modal" data-target="#delete" class="btn btn-danger btn-xs">
						<span class="glyphicon glyphicon-remove"></span> Del</a>
						 

						</td>						
					</tr>
				</c:forEach>
			</tbody>
		</table>