<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>헤더</div>
<%@include file="../adHeader.jsp" %>
<section>
	<article><!-- 이용자 카풀 등록 목록보기 -->
		<table border="1" cellspacing="0" width="500">
			<thead>
				<tr>
					<th>구분</th> <!-- idx -->
					<th>아이디</th> <!-- userid -->
					<th>종류</th> <!-- aim -->
					<th>단기/장기</th> <!-- type -->
					<th>성별</th><!-- gender -->
					<th>요일</th><!-- days -->
					<th>출발지</th> <!-- startspot -->
					<th>경유지</th> <!-- route -->
					<th>도착지</th> <!-- endspot -->
					<th>이용기간(시작)</th> <!-- startdate -->
					<th>이용기간(끝)</th> <!-- enddate  -->
					<th>인원수</th> <!-- mannum -->
					<th>상태</th> <!-- status -->
					<th>요금</th> <!-- pay -->
					<th>흡연여부</th> <!-- smoking -->
					<th>기타사항</th> <!-- pluscontent -->
					<th>등록일</th> <!-- writedate -->
					<th>예약취소</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td>
						
					</td>
				</tr>
			</tbody>
			<tfoot>
				<tr>
				
				</tr>
			</tfoot>
		</table>
	</article>
</section>
<footer>풋</footer>
</body>
</html>