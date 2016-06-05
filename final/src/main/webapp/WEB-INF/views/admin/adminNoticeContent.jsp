<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./bootstrap/css/font-awesome.min.css">
<link href="/final02/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
<style type="text/css">

.red{
    color:red;
    }
.form-area
{
    background-color: #FAFAFA;
	padding: 10px 40px 60px;
	margin: 10px 0px 60px;
	border: 1px solid GREY;
	}
</style>
</head>
<body>
<div>헤더
<%@include file="../header.jsp" %>
</div>
<div>메뉴바
<%@include file="../adHeader.jsp" %>

</div>
<%-- <div>
<fieldset>
<legend>공지사항</legend>
<form action="NoticeUpdate_ok.do">
글번호:<input type="text" name="idx" value="${list[0].idx}" readonly="readonly" >
작성날짜:<input type="text" name="writedate" value="${list[0].writedate}"><br>
글쓴이:<input type="text" name="writer" value="${list[0].writer}"  > 
조회수:<input type="text" name="readnum" value="${list[0].readnum}" readonly="readonly"><br>
제목:<input type="text" name="subject" value="${list[0].subject}" > <br>
<textarea name="content" cols="55" rows="25" > ${list[0].content}</textarea><br>
<input type="submit" value="수정하기">
<a href="adminNoticeList.do">이전페이지로</a> --%>
<div class="container">
<div class="col-md-5">
    <div class="form-area">  
        <form action="NoticeUpdate_ok.do">
        <br style="clear:both">
                    <h3 style="margin-bottom: 25px; text-align: center;">공지사항</h3>
    				<div class="form-group">
					글번호<input type="text" name="idx" value="${list[0].idx}" readonly="readonly" >
					</div>
					<div class="form-group">
						작성날짜<input type="text" name="writedate" value="${list[0].writedate}"><br>
					</div>
					<div class="form-group">
						글쓴이<input type="text" name="writer" value="${list[0].writer}"  > 
					</div>
					<div class="form-group">
						조회수<input type="text" name="readnum" value="${list[0].readnum}" readonly="readonly"><br>
					</div>
					<div class="form-group">
						제목<input type="text" name="subject" value="${list[0].subject}" > <br>
					</div>
                    <div class="form-group">
                   <textarea name="content" cols="55" rows="25" > ${list[0].content}</textarea><br>
                                      
                    </div>
  
       <input type="submit" value="수정하기">
        </form>
    </div>
</div>
</div>

<!-- </fieldset>
</div> -->


</body>
</html>