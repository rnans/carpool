function idCheck(){
	var id = document.getElementById('id').value;
	var params = 'id='+id;
	sendRequest('idCheck.do', params, idCheckResult, 'POST');
}
function idCheckResult(){
	if(XHR.readyState==4){
		if(XHR.status==200){
			var result = XHR.responseText;
			var span = document.getElementById('idmsg');
			span.innerHTML=result;
		}
	}
}

function pwdCheck(){
	  var pwd = document.getElementById('pwd').value;
	  var pwd2 = document.getElementById('pwd2').value;
	  if(pwd!=pwd2){
	   document.getElementById('pwdmsg').style.color = "red";
	   document.getElementById('pwdmsg').innerHTML = "비밀번호를 다시 확인하세요."; 
	  }else if(pwd=="" || pwd2==""){
		  document.getElementById('pwdmsg').style.color= "green";
		  document.getElementById('pwdmsg').innerHTML = "비밀번호를 입력해주세요.";
	  }else{
	   document.getElementById('pwdmsg').style.color = "blue";
	   document.getElementById('pwdmsg').innerHTML = "비밀번호가 일치합니다.";  
	  }  
}