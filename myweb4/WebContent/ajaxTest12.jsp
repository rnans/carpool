<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
window.onload=function(){
	/*var fruits={apple:'사과',banana:'바나나',melon:'멜론'};
	
	window.alert('apple은모야?'+fruits.apple);
	
	var coms=['삼성','LG','Del','Mac'];
	
	window.alert('coms의 0번째요소는?'+coms[0])
	*/
	
	var student={name:'홍길동',age:20,record:[80,70,90]};
	
	var msg='응시자:'+student.name+'\n나이는:'+student.age+'세\n'+'시험본과목수:'+student.record.length+'개\n';
	
	window.alert(msg);
	
	
}
</script>
</head>
<body>

</body>
</html>