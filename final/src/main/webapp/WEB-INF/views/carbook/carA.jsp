<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link href="./bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
<div class="outer" style="display: table;width:100%;height:36px;background-color:#4C4C4C;margin-bottom: 15px;">
<h4 style="padding-left:100px; color: white;padding-top: 10px;font-size: 15px;"><i class="fa fa-car" aria-hidden="true"></i> &nbsp;${cardto.cartype } &nbsp; [${cardto.carnum}]</h4>

</div>
<div style="float:left; height:225px; width: 48%; margin-right: 7px;" >
<img style="width:100%;height:100%;" src="http://localhost:9090/final02/img/${cardto.carphoto}">
</div>

<div style="float:right; height:225px; width: 48%; margin-left: 7px;" >
			<fieldset>
			<legend style="font-size: 17px; font-weight: bold; padding-bottom: 5px;">차량정보</legend> 
			<table class="table table-striped table-hover tabletd" style="height: 154.44px;border-top: 3px solid #4C4C4C; border-bottom:3px solid #4C4C4C;">
				<!--  <table border="1" width="400" height="100" >-->
				<thead>
					<tr>
						<td style="width: 50%;">기록시작일</td>
						

						<td style="width: 50%;">2016-01-01</td>
					</tr>
				</thead>
				<tbody>
					<c:set var="cost" value="${costsum}" />
					<c:set var="km" value="${kmsum}" />
				<tr>
					<td>운전자</td>
					<td>${cardto.driver }</td>
				</tr>
				<tr>
				<td>시작 주행거리</td>
				<td>0km</td>
				</tr>
					<tr>
						<td>총 주행거리</td>
						<td  class="info" name="number">${km}km</td>
					</tr>
					<tr>
						<td>총 지출금액</td>
						<td  class="info" name="number">${cost}원</td>
					</tr>
				</tbody>

			</table>
		</fieldset> 
	</div>

		<fieldset>
			<legend style="font-size: 17px; font-weight: bold; padding-bottom: 5px;">차계부
  
			</legend>
			<table class="table table-striped table-hover " style="height: 154.44px;
			border-top: 3px solid #4C4C4C; border-bottom:3px solid #4C4C4C;">
				<thead>
					<!--  <table border="1" width="400" height="100" >-->
					<tr>
						<th>날짜</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:set var="jooyu" value="${jooyusum}" />
					<c:set var="jungbi" value="${jungbisum}" />
					<c:set var="buy" value="${buysum}" />
					<tr>
						<td>총 주유비용</td>
						<td  class="info" name="number">${jooyu }원</td>
					</tr>
					<tr>
						<td>총 정비비용</td>
						<td  class="info" name="number">${jungbi }원</td>
					</tr>
					<tr>
						<td>총 물품구입비용</td>
						<td  class="info" name="number">${buy }원</td>
					</tr>
				</tbody>
			</table>
		</fieldset>
