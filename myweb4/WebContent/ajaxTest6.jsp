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
	  sendRequest("getSungjuk.jsp", null, showResult, 'GET');
  }
  function showResult(){
	  if(XHR.readyState==4){
		  if(XHR.status==200){
			  var result=XHR.responseText;
			  var strArr=result.split(',');
			  var intArr=new Array(strArr.length);
			  var min=100;
			  var max=0;
			  var sum=0;
			  for(var i=0;i<strArr.length;i++){
				  intArr[i]=parseInt(strArr[i]);
				  sum+=intArr[i];
				 if(intArr[i]<min){ 
					  min=intArr[i];
				  }  else if(intArr[i]>max){
					   max=intArr[i];
				  }
			  }
			  var avg=sum/intArr.length;
			  var minTd=document.getElementById('min');
			  minTd.innerHTML=min+'점';
			  var maxTd=document.getElementById('max');
			  maxTd.innerHTML=max+'점';
			  var sumTd=document.getElementById('sum');
			  sumTd.innerHTML=sum+'점';
		      var avgTd=document.getElementById('avg');
		      avgTd.innerHTML=avg+'점';
		      if(avg>=80){
		    	  var resultTd=document.getElementById('result');
		    	  resultTd.innerHTML='합격';
		      }else{
		    	  var resultTd=document.getElementById('result');
		    	  resultTd.innerHTML='불합격';
		      }
		  }
	  }
  }
</script>
</head>
<body>
<h2>OOO님성적조회</h2>
<table width="350" border="1" cellspacing="0">
  <tr>
    <th>최고점수</th>
    <td id="max">~~점</td>
  </tr>
  <tr>
    <th>최저점수</th>
    <td id="min">~~점</td>
  </tr>
  <tr>
     <th>총점</th>
     <td id="sum">~~점</td>
  </tr>
  <tr>
    <th>평균점수</th>
    <td id="avg">~~점</td>
  </tr>
   <tr>
   <th>합격여부</th>
   <td id="result"></td>
  </tr>
  <tr>
    <td colspan="2" align="center">
      <input type="button" value="점수 확인" onclick="show()">
  </tr>
 
</table>
</body>
</html>








