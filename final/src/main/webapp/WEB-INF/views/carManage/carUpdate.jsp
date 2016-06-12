<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/previewmodule.js"></script>
<link href="./bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="./bootstrap/css/font-awesome.min.css">
<script type="text/javascript" src="/final02/js/httpRequest.js"></script>
<script>
function addClose(){
	window.location.href = 'carList.do';
}
</script>
<style>
#carLeft{
	float:left;
	width: 200px;
	height: 150px;
	margin-top: 5px;
	margin-left:0px;
	}

#carRight{
	float:right;
	width: 200px;
	height: 150px;
	margin-top: 5px;
	margin-left:20px;
	
}

#box{
    border: 1px solid rgb(200, 200, 200);
    box-shadow: rgba(0, 0, 0, 0.1) 0px 5px 5px 2px;
    background: rgba(200, 200, 200, 0.1);
    border-radius: 4px;
    top:50px;
}

h2{
    text-align:center;
    color:#fff;
}


.image-preview-input, .image-preview-input {
    position: relative;
    overflow: hidden;
    margin: 0px;    
    color: #333;
    background-color: #fff;
    border-color: #ccc;    
}
.image-preview-input input[type=file], .image-preview2-input input[type=file]{
	position: absolute;
	top: 0;
	right: 0;
	margin: 0;
	padding: 0;
	font-size: 20px;
	cursor: pointer;
	opacity: 0;
	filter: alpha(opacity=0);
}
.image-preview-input-title, .image-preview2-input-title {
    margin-left:2px;
}


</style>
<script type="text/javascript" src="js/previewmodule.js"></script>
<script>
window.onload=function(){

	document.getElementById("confirm2").style.display = "none";

 }
function confirm2(){

	document.getElementById("confirm2").style.display = "block";

 }
 function black(){
	 
	 document.getElementById("confirm2").style.display = "none";
 }

</script>
<c:if test="${!(empty msg)}">
<script>
var msg='${msg}';

window.alert('${msg}');
</script>
</c:if>

</head>
<body>
<%@include file="../header.jsp"%>


 <div class="all" style="width: 100%; height: 100%;">
               <div class="row-fluid" style="padding-top:80px; width: 30%; margin-left:auto; margin-right: auto;" >
                     <div class="" id="box" style="height:500px; background-color: #EAEAEA; ">
                      <h2 style="color: #000;">차량 수정</h2>
                            <hr>
                              <form class="form-horizontal" action="carUpdate.do" method="post" id="contact_form" enctype="multipart/form-data">
                                    <fieldset>
                                        <!-- Form Name -->
                                        
                                        
            <!-- Text input(이름)-->

               <div class="form-group">

                    <div class="col-md-12">
                        <div class="input-group">
                        <input type="hidden" name="idx" value="${idxList.idx }">
                            <input type="hidden" name="id" value="${sid }" >
                                 <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                    <input name="driver" readonly="readonly" value="${idxList.driver }" placeholder="Name" class="form-control" type="text">
                        </div>
                    </div>
                 </div>


                                  
                   <!-- Text input(차번호)-->
             <div class="form-group">
                  <div class="col-md-12">
                       <div class="input-group" style="width: 200px; float: left;">
                            <span class="input-group-addon"><i class="fa fa-car fa-3" aria-hidden="true"></i></span>
                                 <input type="text" value="${idxList.carnum}" id="car" maxlength="9" required placeholder="예)12가1234" name="carnum" class="form-control" readonly="readonly">
                 		</div> 
                  </div>
             </div>

              <!-- Text input(차종)-->

            <div class="form-group">
                 <div class="col-md-12">
                       <div class="input-group">
                               <span class="input-group-addon"><i class="fa fa-car fa-3" aria-hidden="true"></i></span>
                               <input name="cartype" value="${idxList.cartype }" placeholder="예)티코" class="form-control" type="text">
                       </div>
                 </div>
            </div>
<br>        
      <div class="input-group image-preview">
                <input type="text" class="form-control image-preview-filename" disabled="disabled"> <!-- don't give a name === doesn't send on POST/GET -->
                <span class="input-group-btn">
                    <!-- image-preview-clear button -->
                    <button type="button" class="btn btn-default image-preview-clear" style="display:none;">
                        <span class="glyphicon glyphicon-remove"></span> 취소
                    </button>
                    <!-- image-preview-input -->
                    <div class="btn btn-default image-preview-input">
                        <span class="glyphicon glyphicon-picture"></span>
                        <span class="image-preview-input-title">차 사진</span>
                        <input type="hidden" name="carphoto" value="${idxList.carphoto }">
                        <input type="file" name="upload"/> <!-- rename it -->
                    </div>
                </span>
            </div><!-- /input-group image-preview [TO HERE]--> 		
			
			
			 
		
			<div id="confirm1" style="min-height:50px; margin-top: 10px;margin-bottom: 10px;">
			
				<font style="padding-top:20px; font-size: 13px;"> &nbsp;&nbsp;차량인증을 해야 원활한 서비스를 이용하실 수 있습니다.</font>
				<button type="button" class="uButton uButtonPoint" onclick="confirm2()"
								style="border:0; background: #3cd370; min-width: 70px; line-height: 32px; float:right; right:10px; font-size: 13px; color: #fff">인증하기</button>

			</div>
			<div id="confirm2">
				 <div class="input-group image-preview2">
                <input type="text" class="form-control image-preview2-filename" disabled="disabled"> <!-- don't give a name === doesn't send on POST/GET -->
                <span class="input-group-btn">
                    <!-- image-preview-clear button -->
                    <button type="button" class="btn btn-default image-preview2-clear" style="display:none;">
                        <span class="glyphicon glyphicon-remove"></span> 취소
                    </button>
                    <!-- image-preview-input -->
                    <div class="btn btn-default image-preview2-input">
                        <span class="glyphicon glyphicon-picture"></span>
                        <span class="image-preview2-input-title">인증 사진</span>
                        <input type="hidden" name="confirmphoto" value="${idxList.confirmphoto }">
                        <input type="file" name="upload2"/> <!-- rename it -->
                    </div>
                </span>
            </div><!-- /input-group image-preview [TO HERE]--> 		

			</div>

            <div class="form-group" style="padding: 10px 10px 10px 10px; text-align: center;">
              
              <div style="width: 200px;height: 100%; margin: 0px auto;">
               	<div style=" margin: 0px auto; text-align: center;">
                    <button type="submit" class="btn btn-warning">등록 <span class="glyphicon glyphicon-send"></span></button>
                    <button type="button"  class="btn btn-warning" onclick="addClose()">취소 <span class="glyphicon glyphicon-remove-sign"></span></button>
              		<input type="hidden" id="carCheck" name="check" value="false">
    			</div>
    			</div>
            </div>
           </fieldset>
        </form>  
     </div> 
</div>  
</div>
<script>
$(document).on('click', '#close-preview', function(){ 
    $('.image-preview').popover('hide');
    // Hover befor close the preview
    $('.image-preview').hover(
        function () {
           $('.image-preview').popover('show');
        }, 
         function () {
           $('.image-preview').popover('hide');
        }
    );    
});


$(function() {
    // Create the close button
    var closebtn = $('<button/>', {
        type:"button",
        text: 'x',
        id: 'close-preview',
        style: 'font-size: initial;',
    });
    closebtn.attr("class","close pull-right");
    // Set the popover default content
    $('.image-preview').popover({
        trigger:'manual',
        html:true,
        title: "<strong>Preview</strong>"+$(closebtn)[0].outerHTML,
        content: "There's no image",
        placement:'bottom'
    });
    // Clear event
    $('.image-preview-clear').click(function(){
        $('.image-preview').attr("data-content","").popover('hide');
        $('.image-preview-filename').val("");
        $('.image-preview-clear').hide();
        $('.image-preview-input input:file').val("");
        $(".image-preview-input-title").text("Browse"); 
    }); 
    // Create the preview image
    $(".image-preview-input input:file").change(function (){     
        var img = $('<img/>', {
            id: 'dynamic',
            width:250,
            height:200
        });      
        var file = this.files[0];
        var reader = new FileReader();
        // Set preview image into the popover data-content
        reader.onload = function (e) {
            $(".image-preview-input-title").text("다른걸로^^");
            $(".image-preview-clear").show();
            $(".image-preview-filename").val(file.name);            
            img.attr('src', e.target.result);
            $(".image-preview").attr("data-content",$(img)[0].outerHTML).popover("show");
        }        
        reader.readAsDataURL(file);
    });  
});

$(document).on('click', '#close-preview2', function(){ 
    $('.image-preview2').popover('hide');
    // Hover befor close the preview
    $('.image-preview2').hover(
        function () {
           $('.image-preview2').popover('show');
        }, 
         function () {
           $('.image-preview2').popover('hide');
        }
    );    
});

$(function() {
    // Create the close button
    var closebtn = $('<button/>', {
        type:"button",
        text: 'x',
        id: 'close-preview2',
        style: 'font-size: initial;',
    });
    closebtn.attr("class","close pull-right");
    // Set the popover default content
    $('.image-preview2').popover({
        trigger:'manual',
        html:true,
        title: "<strong>Preview</strong>"+$(closebtn)[0].outerHTML,
        content: "There's no image",
        placement:'bottom'
    });
    // Clear event
    $('.image-preview2-clear').click(function(){
        $('.image-preview2').attr("data-content","").popover('hide');
        $('.image-preview2-filename').val("");
        $('.image-preview2-clear').hide();
        $('.image-preview2-input input:file').val("");
        $(".image-preview2-input-title").text("Browse"); 
    }); 
    // Create the preview image
    $(".image-preview2-input input:file").change(function (){     
        var img = $('<img/>', {
            id: 'dynamic',
            width:250,
            height:200
        });      
        var file = this.files[0];
        var reader = new FileReader();
        // Set preview image into the popover data-content
        reader.onload = function (e) {
            $(".image-preview2-input-title").text("바꾸기");
            $(".image-preview2-clear").show();
            $(".image-preview2-filename").val(file.name);
            img.attr('src', e.target.result);
            $(".image-preview2").attr("data-content",$(img)[0].outerHTML).popover("show");
        }
        reader.readAsDataURL(file);
    });
});

</script>
</body>
</html>