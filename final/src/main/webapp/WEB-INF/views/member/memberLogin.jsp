<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function loginClose(){
	window.self.close();
}
</script>
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.js"></script>
<script>
$(function(){
 getid();
  $("#saveid").click(function(){
   saveid();
  }); //#chkuser_id.click
 }); //function(){
  
 function saveid() {
   var expdate = new Date();
   // 기본적으로 30일동안 기억하게 함. 일수를 조절하려면 * 30에서 숫자를 조절하면 됨
   if($("#saveid").prop("checked")){
    expdate.setTime(expdate.getTime() + 1000 * 3600 * 24 * 30); // 30일
   } else {
    expdate.setTime(expdate.getTime() - 1); // 쿠키 삭제조건
   }
   setCookie("saveid", $("#id").val(), expdate);
 } //saveid()
 
 function setCookie (name, value, expires) {
    document.cookie = name + "=" + escape (value) +"; path=/; expires=" + expires.toGMTString();
  } //setCookie(name,value,expires)

  function getCookie(Name) {
    var search = Name + "=";
    if (document.cookie.length > 0) { // 쿠키가 설정되어 있다면
      offset = document.cookie.indexOf(search);
      if (offset != -1) { // 쿠키가 존재하면
        offset += search.length;
        // set index of beginning of value
        end = document.cookie.indexOf(";", offset);
        // 쿠키 값의 마지막 위치 인덱스 번호 설정
        if (end == -1)
          end = document.cookie.length;
        return unescape(document.cookie.substring(offset, end));
      }
    }
    return "";
  } //getCookie(Name)

 function getid() {
  var saveId = getCookie("saveid");
  if(saveId != "") {
   $("#id").val(saveId);
   $("#saveid").prop("checked",true);
  }
 } //getid()
</script> 
</head>
<body>
	<section>
		<article>
			<form name="login" action="login.do" method="post">
				<fieldset>
					<legend>로그인</legend>
						<ul>
							<li>ID : <input type="text" name="id" id="id" ></li>
							<li>비밀번호 : <input type="password" name="pwd"></li>
						</ul>
						<p>		
							<input type="checkbox" name="saveid" id="saveid" onClick="javascript:saveid(document.new_user_session);"> ID기억하기
						</p>
						<div>
							<input type="submit" value="로그인">
							<input type="button" value="닫기" onclick="loginClose()">
						</div>
						<div>
							<a href="idFind.do">ID찾기</a> / <a href="pwFind.do">비밀번호찾기</a>
						</div>
				</fieldset>
			</form>
		</article>
	</section>
</body>
</html>