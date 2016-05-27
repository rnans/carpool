<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
var idx=null;
function opencostReg(){
	
   window.open('costReg.do','opencostReg','width=350,height=450');
}
function update(){
	var param="?idx="+idx;
   window.open('costUpdate.do'+param,'update','width=350,height=450');
}
function costDel(){
	var param="?idx="+idx;
   window.open('costDel.do'+param,'costDel','width=350,height=450');
}
</script>
<body>
<%@include file="../header.jsp"%>
<input type="button" name="plus" value="추가" onclick="opencostReg()"><br>
<table border="1" width="600" height="100" >
<thead>
   <tr>
      <th>유형</th>
      <th>날짜</th>
      <th>비고</th>
      <th>금액</th>
      <th>주행거리</th>
      <th>수정</th>
      <th>삭제</th>
   </tr>
</thead>
<tbody>
   <c:forEach var="list" items="${list}">
               <tr>
                  <td>${list.category}</td>
                  <td>${list.costday}</td>
                  <td>${list.bigo}</td>
                  <td>${list.cost}원</td>
                  <td>${list.km}km</td>
                  <td><input type="button" value="수정" onclick="javascript:idx='${list.idx}';update();"></td>
                  <td><input type="button" value="삭제" onclick="javascript:idx='${list.idx}';costDel();"></td>
               </tr>
   </c:forEach>
</tbody>
</table>
</body>
</html>