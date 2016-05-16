<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
 window.onload=function(){
	 
	 var Member=function(id,name){
		 this.id=id;
		 this.name=name;
	 };
	 Member.prototype.toString=function(){
		 return '[id='+this.id+'/name='+this.name+']';
	 }
	 
	 var mem=new Member('hong','홍길동');
	 window.alert(mem.toString());
	 window.alert(mem.id);
	 window.alert(mem.name);
 }
</script>
</head>
<body>

</body>
</html>