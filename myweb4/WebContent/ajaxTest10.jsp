<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="httpRequest.js"></script>
<script type="text/javascript">
function show(){
	sendRequest('getStudents.jsp', null, showResult, 'GET');
}
function showResult(){
	if(XHR.readyState==4){
		if(XHR.status==200){
			var docXml=XHR.responseXML;
			var studentList=docXml.getElementsByTagName('student');
			
			var msg='총 학생수:'+studentList.length+'명\n';
			
			for(var i=0;i<studentList.length;i++){
				 var student=studentList.item(i);
				 
				 var name=student.getElementsByTagName('name').item(0).lastChild.nodeValue;
				 var age=student.getElementsByTagName('age').item(0).firstChild.nodeValue;
				 var addr=student.getElementsByTagName('addr').item(0).firstChild.nodeValue;
				 msg+=name+'('+age+'세)/'+addr+'\n';
				 
			}
			window.alert(msg);
		}
	}
}
</script>
</head>
<body>
<input type="button" value="학생정보보기" onclick="show()">
</body>
</html>