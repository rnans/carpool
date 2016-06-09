<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="/final02/CSS/poolCommon.css" />
<link rel="stylesheet" type="text/css" href="/final02/CSS/buttons.css" />
<link rel="stylesheet" type="text/css" href="/final02/CSS/set2.css" />
</head>
<body>
<%@ include file="../header.jsp" %>
<fieldset>
<legend>카풀 등록</legend>
<script>
window.onload=function()
{
	var type='${sessionScope.data.termtype}';
	
	var f=document.getElementById('f');
	if(type=='정기')
	{
		f.method='POST';
	}
}
function checkName()
{
	var url='checkPoolName.do'
	var params='poolname='+document.getElementById('poolname').value;
	
	sendRequest(url, params, callback, 'GET');
	
	function callback()
	{
		   if(XHR.readyState==4){
			      if(XHR.status==200){
			         var text = XHR.responseText;
			         document.getElementById('msg').innerHTML=text;
			         
			         
			      }
			   }
	}
}
function submitName()
{
	if(document.getElementById('msg').innerText=='사용 가능한 카풀 이름입니다.')
    {
   	 f.submit();
    }
	else
	{
		window.alert('사용 가능한 카풀 이름을 입력해 주세요.');
	}
}
</script>
<form id="f" name="poolNameform" action="poolMasterAddConfirm.do">
		카풀명<input type="text" id="poolname" name="poolname" placeholder="카폴 이름을 입력하세요." onblur="checkName()"> 
		<br>
		<div id="msg"></div>
		
	<br>
	<input type="button" value="이전"> 
			<input type="button" onclick="submitName()" value="완료">
			</form> 
</fieldset>
			
</body>
</html>