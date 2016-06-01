function SetEmailTail(emailValue){
	var email = document.all("email");
	var emailTail = document.all("email2");
	
	if(emailValue == "notSelected")
		return;
	else if(emailValue == "etc"){
		emailTail.readOnly=false;
		emailTail.value="";
		emailTail.focus();
	}else {
		emailTail.readOnly = true;
		emailTail.value = emailValue;
	}
	
}