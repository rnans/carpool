<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <form id="frm" name="frm" action="uploadimg.do" method="post" enctype="multipart/form-data">

        <input type="file" name="upload">
        <br/><br/>
         
	<input type="submit" value="업로드">
    </form>
    
<img style="width:100px;height:150px;" src="http://localhost:9090/final02/img/iu.jpg">
</body>
</html>