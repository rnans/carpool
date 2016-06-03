<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="./bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="./bootstrap/css/font-awesome.min.css">
</head>
<style>
.buttonArea li .gSrOnly {
    position: absolute!important;
    top: auto!important;
    bottom: 4px;
    font-size: 17px!important;
    text-align: center;
    line-height: 1.8!important;
    white-space: nowrap;
    color: #777;
}
.buttonArea {
    width: 100%;
    height: 52px;
}
.buttonArea ul {
    float: left;
    margin: 0 0 0 4px;
}

.buttonArea li .gSrOnly {
    position: absolute!important;
    top: auto!important;
    bottom: 4px;
    font-size: 14px!important;
    text-align: center;
    line-height: 1.8!important;
    white-space: nowrap;
    color: #777;
}

    .home li {
    position: relative;
    float: left;
    font-size: 20px;
    padding-right: 10px;
    width:80px;

}

</style>


<script type="text/javascript" src="/final02/js/httpRequest.js"></script>
<script>
window.onload=function(){
	for (var i = 0; i < sel.options.length; i++) {
	if (sel.options[i].value=='${carnum}') {
		sel.options[i].selected=true;
	}
}}


var idx=null;
function show(){		
	var sel=document.getElementById('sel');
	
	var carnum=null;
	for(var i=0;i<sel.options.length;i++)
	{
		if(sel.options[i].selected)
		{
			carnum=sel.options[i].value;			
		}
	}		
	var params='carnum='+carnum
	sendRequest('costA.do', params, showResult, 'GET');
}

function showResult(){
	if(XHR.readyState==4){
		if(XHR.status==200){
			var result = XHR.responseText;
			costdiv.innerHTML=result;
		}
	}
}

function opencostReg(){
	
	var sel=document.getElementById('sel');
		
	var carnum=null;
	for(var i=0;i<sel.options.length;i++)
	{
		if(sel.options[i].selected)
		{
			carnum=sel.options[i].value;			
		}
	}		
	window.open('costReg2.do?carnum='+carnum,'opencostReg','left='+(screen.availWidth-360)/2+',top='+(screen.availHeight-500)/2+', width=350px,height=450px');
	
}

function update(){
	var param="?idx="+idx;
   window.open('costUpdate.do'+param,'update','left='+(screen.availWidth-360)/2+',top='+(screen.availHeight-500)/2+', width=350px,height=450px');
}

function costDel2(){
	this.idx=idx;
	var params='idx='+idx;	
	sendRequest('costDel_ok.do', params, null, 'GET')
	location.reload();
}
</script>
<body>
	<%@include file="../header.jsp"%>
<nav class="navbar navbar-default" >
  <div class="container-fluid"  style=" margin-top:46px; ">   

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1"  >
      <ul class="nav navbar-nav bar">
      	<li><a href="carBookInfo.do"><i class="fa fa-home fa-2x" aria-hidden="true"></i>
     차계부</a></li>
        <li><a href="cost.do"><i class="fa fa-calculator fa-2x" aria-hidden="true"></i>
     내역</a></li>
        <li><a href="graph.do"><i class="fa fa-bar-chart fa-2x" aria-hidden="true"></i>
     그래프</a></li> 
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#">Link</a></li>
      </ul>
    </div>
  </div>
</nav>

<div style="width: 65%; margin: 0px auto">
  <div class="buttonArea" style="color: #4C4C4C; width:100%;">
    

    
    <ul class="nav navbar-nav home">
	<li>
	<i class="fa fa fa-calculator fa-2x" style="float: left;margin-top: 7px;" aria-hidden="true"></i>
	<span class="gSrOnly"  style="">내역</span></li>
     
     <li style=" float: left;position: relative;display: inline-block;">
		<div class="form-group" style="padding-top: 15px; padding-left: 50px;padding-right:50px;width:350px;  position: relative;display: inline-block;margin-bottom: 5px;">
			<a href="#" class="btn btn-info" style="float: left; border:0;">Info</a>
			<select class="btn btn-default dropdown-toggle" style="width: 180px; float: left;"   id=sel name=carnum
				onchange="show()">
				<c:forEach var="carn" items="${cnum }">
					<option value="${carn.carnum }">${carn.carnum}</option>
				</c:forEach>
			</select>
			
		</div>
	</li>
    </ul>
    
    
     
           <div style="float: right;">

       <div class="buttonSubmit" style="float: right; padding-top: 15px; padding-right: 20px;">
							<a href="#" onclick="javascript:opencostReg()" class="btn btn-info" style="float: left; background: #EDD200; border:0;">비용 입력</a>
		</div>
      </div>
    </div>

<div id="costdiv">
<div class="outer" style="display: table;width:100%;height:36px;background-color:#4C4C4C;">
<h4 style="padding-left:100px; color: white;font-size: 15px;"><i class="fa fa-car" aria-hidden="true"></i> &nbsp;${cardto.cartype } &nbsp; [${cardto.carnum}]</h4>

</div>
	
		 <table id="mytable" class="table table-bordred table-striped">
		<!-- <table border="1" width="600" height="100">-->
			<thead>
				 <th><input type="checkbox" id="checkall" /></th>
					<th>날짜</th>
					<th>유형</th>
					<th>비고</th>
					<th>금액</th>
					<th>주행거리</th>
					<th style="text-align: center;width: 150px;">수정/삭제</th>				
			<tbody>
				<c:forEach var="list" items="${list}">
					<tr>
					 <td><input type="checkbox" class="checkthis" /></td>
						<td>${list.costday}</td>
						<td>${list.category}</td>
						<td>${list.bigo}</td>
						<td><c:if test="${empty list.cost }">0</c:if>
						${list.cost}&nbsp;원</td>
						<td><c:if test="${empty list.km }">0</c:if>
						${list.km}&nbsp;km</td>
						<td class="text-center">

						<a href="javascript:idx='${list.idx}';alert(idx);" class="btn btn-info btn-xs">
						<span class="glyphicon glyphicon-edit" data-title="Edit" data-toggle="modal" data-target="#edit"></span> Edit</a>
				
						<a onclick="javascript:idx='${list.idx}';" data-title="Delete" data-toggle="modal" data-target="#delete" class="btn btn-danger btn-xs">
						<span class="glyphicon glyphicon-remove"></span> Del</a>
						 

						</td>						
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>

    <!-- 모달 -->
    
    
<div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
      <div class="modal-dialog">
    <div class="modal-content">
          <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
        <h4 class="modal-title custom_align" id="Heading">Edit Your Detail</h4>
      </div>
          <div class="modal-body">
          <div class="form-group">
        <input class="form-control " type="text" placeholder="Mohsin">
        </div>
        <div class="form-group">
        
        <input class="form-control " type="text" placeholder="Irshad">
        </div>
        <div class="form-group">
        <textarea rows="2" class="form-control" placeholder="CB 106/107 Street # 11 Wah Cantt Islamabad Pakistan"></textarea>
    
        
        </div>
      </div>
          <div class="modal-footer ">
        <button type="button" class="btn btn-warning btn-lg" style="width: 100%;"><span class="glyphicon glyphicon-ok-sign"></span> Update</button>
      </div>
        </div>
    <!-- /.modal-content --> 
  </div>
      <!-- /.modal-dialog --> 
    </div>



	<div class="modal fade" id="delete" tabindex="-1" role="dialog"
		aria-labelledby="edit" aria-hidden="true">
		<div class="modal-dialog" style="width: 350px;padding-top: 150px;">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
					</button>
					<h4 class="modal-title custom_align" id="Heading">삭제</h4>
				</div>
				<div class="modal-body">

					<div class="alert alert-danger">
						<span class="glyphicon glyphicon-warning-sign"></span> ㅋㅋㅋ진짜 지울거냐	??
					</div>

				</div>
				<div class="modal-footer ">
					<button type="button" class="btn btn-success" onclick="javascript:costDel2();" data-dismiss="modal">
						<span class="glyphicon glyphicon-ok-sign"></span> Yes
					</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">
						<span class="glyphicon glyphicon-remove"></span> No
					</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<script>
    $(document).ready(function(){
    	$("#mytable #checkall").click(function () {
    	        if ($("#mytable #checkall").is(':checked')) {
    	            $("#mytable input[type=checkbox]").each(function () {
    	                $(this).prop("checked", true);
    	            });

    	        } else {
    	            $("#mytable input[type=checkbox]").each(function () {
    	                $(this).prop("checked", false);
    	            });
    	        }
    	    });
    	    
    	    $("[data-toggle=tooltip]").tooltip();
    	});

    </script>

</body>
</html>