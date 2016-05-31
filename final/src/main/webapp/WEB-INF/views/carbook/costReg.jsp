<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
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
<script src="https://code.jquery.com/jquery-2.2.3.js"></script>
<body>
<script type="text/javascript">
function costsbmit() {
	var costday = $("input[name=costday]").val();
	var cost = $("input[name=cost]").val();
	var km = $("input[name=km]").val();
	if((costday=='')||(cost=='')||(km=='')){
		alert("필수 입력칸을 채워주세요");
	}else{
		$("#costFrm").submit();
	}
	
}
</script>
<form  action="costReg_ok.do" id="costFrm" class="form-horizontal">

  <fieldset>
  
    <legend>비용등록</legend>
    
  <div id="div1">  
    <div><font color="red">*</font>표시는 필수 입력사항입니다.</div><br>
    <div class="form-group">
    	<label for="select" class="col-lg-2 control-label" >유형</label>
      		<div class="col-lg-10">
        		<select class="form-control" name="category" id="select" style="width:150px;">
		          	<option>주유</option>
					<option>정비</option>
					<option>물품구입</option>
        		</select>
      		</div>
      </div>
      
    <div class="form-group">
      <label for="inputCostday" class="col-lg-2 control-label">날짜(<font color="red">*</font>)</label>
      <div class="col-lg-10">
        <input type="text" name="costday" style="width:150px;" class="form-control" id="costday" placeholder="예)2016-01-01">
      </div>
    </div>
    
    <div class="form-group">
      <label for="inputBigo" class="col-lg-2 control-label">비고</label>
      <div class="col-lg-10">
        <input type="text" name="bigo" style="width:150px;" class="form-control" id="bigo">
		</div>
	</div>
	
	<div class="form-group">
      <label for="inputCost" class="col-lg-2 control-label">금액(<font color="red">*</font>)</label>
      <div class="col-lg-10">
        <input type="number" name="cost" style="width:150px;" class="form-control" id="bigo">원
		</div>
	</div>
	
	<div class="form-group">
      <label for="inputkm" class="col-lg-2 control-label">주행거리(<font color="red">*</font>)</label>
      <div class="col-lg-10">
        <input type="number" name="km" style="width:150px;" class="form-control" id="km">km
		</div>
	</div>
</div>
	 <p>
	<input type="hidden" name="id" value="${ sid }">
	<input type="hidden" name="carnum" value="${carnum }">
	<input type="button" value="등록" onclick="costsbmit()">
	<input type="button" value="취소" onclick="javascript:window.self.close()">
	</p>
</fieldset>
</form>
</body>
</html>