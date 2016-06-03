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
.control-label{
text-align: center;
vertical-align: middle;
}

.col-lg-10{
float:right;
margin-right: 60px;
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
		alert("필수 입력칸을 채워주세요.");
	}else{
		$("#costFrm").submit();
	}
	
}
</script>
<form  action="costReg_ok2.do" id="costFrm" class="form-horizontal">

  <fieldset style="margin-top: 15px;margin-left: 15px;">
  
    <legend>비용등록</legend>
    
  <div id="div1">  
    <div><font color="red">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*</font> 표시는 필수 입력사항이에요.</div><br>
    <div class="form-group">
    	<label for="select" class="col-lg-2 control-label" >유형</label>
      		<div class="col-lg-10">
        		<select class="form-control" name="category" id="select" style="width:150px;">
		          	<option>주유</option>
					<option>정비</option>
					<option>유지</option>					
					<option>기타</option>
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
        <input type="text" name="bigo" style="width:150px;" class="form-control" id="bigo" placeholder="예)강남에서 주유">
		</div>
	</div>
	
	<div class="form-group">
      <label for="inputCost" class="col-lg-2 control-label">금액(<font color="red">*</font>)</label>
      <div class="col-lg-10">
        <input type="number" name="cost" style="width:150px;" class="form-control" id="cost" value="0"><span style="float: right;font-size: 9px; ">원</span>
		</div>
	</div>
	
	<div class="form-group">
      <label for="inputkm" class="col-lg-2 control-label">주행거리(<font color="red">*</font>)</label>
      <div class="col-lg-10">
        <input type="number" name="km" style="width:150px;" class="form-control" id="km"  value="0"><span style="float: right;font-size: 9px; ">km</span>
		</div>
	</div>
</div>
	 <p style="padding-left: 90px;">
	<input type="hidden" name="id" value="${ sid }">
	<input type="hidden" name="carnum" value="${carnum }">
	
	<button type="reset" class="uButton uButtonDefault" onclick="javascript:window.self.close()" 
	style="background: #a1a1a9; min-width: 70px; line-height: 32px; margin: 0 3px; font-size: 13px; color: #fff; border: 0" >취소</button>
	<button type="submit" class="uButton uButtonPoint"  onclick="costsbmit()"
	style="background: #3cd370; min-width: 70px; line-height: 32px; margin: 0 3px; font-size: 13px; color: #fff;border: 0">등록</button>
	
	</p>
</fieldset>
</form>
</body>
</html>