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
<form name="form1"  action="costUpdate_ok.do" id="costFrm" class="form-horizontal">

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
	<p>
	<input type="hidden" name="idx" value="${list[0].idx }">
	<input type="hidden" name="id" value="${list[0].id}">
	<input type="submit" value="수정하기">
	<input type="button" value="취소" onclick="javascript:window.self.close()">
	</p>
</fieldset>
</form>

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