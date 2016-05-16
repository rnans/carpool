<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="httpRequest.js"></script>
<script>
 function show(){
	 sendRequest('student_json.jsp', null, showResult, 'GET');
 }
 function showResult(){
	    if(XHR.readyState==4){
	    	if(XHR.status==200){
	    		var text=XHR.responseText;
	    		var data=eval('('+text+')');
	    		var students=data.students;
	    		var msg='총학생의수는?'+students.length+'명\n'
	    			
	    		for(var i=0;i<students.length;i++){
	    			var student=students[i];
	    			msg+='이름:'+student.name+'('+student.age+'세)/거주지:'+student.addr+'\n';
	    		}
	    		window.alert(msg);
	    	}
	    }
 }
</script>
</head>
<body>
<input type="button" value="학생정보확인" onclick="show()">
</body>
</html>