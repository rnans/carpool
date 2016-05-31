<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#div1{
	padding-left: 30px
}
p{
	padding-left: 55px
}
</style>
<link href="./bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<form  action="costUpdate_ok.do" id="costFrm" class="form-horizontal">

  <fieldset>
  
    <legend>비용등록</legend>
    
  <div id="div1">  
    <div><font color="red">*</font>표시는 필수 입력사항입니다.</div><br>
    <div class="form-group">
    	<label for="select" class="col-lg-2 control-label" >유형</label>
      		<div class="col-lg-10">
        		<select class="form-control" name="category" id="select" value=${list[0].category } style="width:150px;">
		          	<option>주유</option>
					<option>정비</option>
					<option>물품구입</option>
        		</select>
      		</div>
      </div>
      
    <div class="form-group">
      <label for="inputCostday" class="col-lg-2 control-label">날짜(<font color="red">*</font>)</label>
      <div class="col-lg-10">
        <input type="text" name="costday" value=${list[0].costday } style="width:150px;" class="form-control" id="costday" placeholder="예)2016-01-01">
      </div>
    </div>
    
    <div class="form-group">
      <label for="inputBigo" class="col-lg-2 control-label">비고</label>
      <div class="col-lg-10">
        <input type="text" name="bigo" value=${list[0].bigo } style="width:150px;" class="form-control" id="bigo">
		</div>
	</div>
	
	<div class="form-group">
      <label for="inputCost" class="col-lg-2 control-label">금액(<font color="red">*</font>)</label>
      <div class="col-lg-10">
        <input type="number" name="cost" value=${list[0].cost } style="width:150px;" class="form-control" id="bigo">원
		</div>
	</div>
	
	<div class="form-group">
      <label for="inputkm" class="col-lg-2 control-label">주행거리(<font color="red">*</font>)</label>
      <div class="col-lg-10">
        <input type="number" name="km" value=${list[0].km } style="width:150px;" class="form-control" id="km">km
		</div>
	</div>
</div>
<!--  -------------------------------------
<form action="costUpdate_ok.do">
<fieldset>
	<legend>비용등록</legend>
	<select name="category" value=${list[0].category }>
		<option>유형</option>
		<option>주유</option>
		<option>정비</option>
		<option>물품구입</option>
	</select><br>
	날짜 <input type="text" name="costday" value=${list[0].costday }><br>
	비고<input type="text" name="bigo" value=${list[0].bigo }><br>
	금액<input type="number" name="cost" value=${list[0].cost }><br>
	주행거리<input type="number" name="km" value=${list[0].km }><br>-->
	<p>
	<input type="hidden" name="idx" value="${list[0].idx }">
	<input type="hidden" name="id" value="${list[0].id}">
	<input type="submit" value="수정하기">
	<input type="button" value="취소" onclick="javascript:window.self.close()">
	</p>
</fieldset>
</form>
</body>
</html>