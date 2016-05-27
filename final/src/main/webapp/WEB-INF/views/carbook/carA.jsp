<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<fieldset>
	<legend>차량정보</legend>
	<table border="1" width="400" height="100">
		<thead>
			<tr>
				<th>기록시작일</th>
				<td><input type="text" name="날짜" value="날짜"></td>
			</tr>
			<c:set var="cost2" value="${costsum2}" />
			<c:set var="km2" value="${kmsum2}" />

			<tr>
				<th>총 주행거리</th>
				<td>${km2} km</td>
			</tr>
			<tr>
				<th>총 지출금액</th>
				<td>${cost2} 원</td>
			</tr>

		</thead>
	</table>
</fieldset>
</div>
<fieldset>
	<legend>차계부</legend>
	<table border="1" width="400" height="100">
		<tr>
			<th>날짜</th>
			<td></td>
		</tr>
		<c:set var="jooyu2" value="${jooyusum2}" />
		<c:set var="jungbi2" value="${jungbisum2}" />
		<c:set var="buy2" value="${buysum2}" />
		<tr>
			<th>총 주유비용</th>
			<td>${jooyu2 } 원</td>
		</tr>
		<tr>
			<th>총 정비비용</th>
			<td>${jungbi2 } 원</td>
		</tr>
		<tr>
			<th>총 물품구입비용</th>
			<td>${buy2 } 원</td>
		</tr>
	</table>
</fieldset>