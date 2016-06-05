<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
  background-color: #22252C;
}
.card {
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  margin: auto;
  width: 400px;
  height: 200px;
  padding: 20px;
  text-align: center;
  font-weight: bold;
  color: #22252C;
  font-size: 20px;
  text-transform: uppercase;
  background-color: #fff;
  background-size: 100%;
  background-size: cover;
  background-repeat: no-repeat;
}
.card .tl, .card .tr, .card .bl, .card .br {
  width: 0;
  height: 0;
  position: absolute;
  border-color: #22252C;
}
.card .tl {
  top: 0;
  left: 0;
  border-top: 15px solid #22252C;
  border-right: 15px solid transparent;
}
.card .tr {
  top: 0;
  right: 0;
  border-top: 15px solid #22252C;
  border-left: 15px solid transparent;
}
.card .bl {
  bottom: 0;
  left: 0;
  border-bottom: 15px solid #22252C;
  border-right: 15px solid transparent;
}
.card .br {
  bottom: 0;
  right: 0;
  border-bottom: 15px solid #22252C;
  border-left: 15px solid transparent;
}

</style>
<script>
function delCancel(){
	window.self.close();
}
</script>
</head>
<body>
<div class="card">
  <div class="tr"></div>
  <div class="tl"></div>
  <div class="br"></div>
  <div class="bl"></div>

	<section>
		<article>
			<form name="useguideDel" action="useguideDelete_ok.do?idx="${idx}>
			<input type="hidden" name="idx" value="${ idx}">
				<fieldset>
					<legend>이용안내글 삭제하기</legend>
					<div> 정말 삭제하시겠습니까?</div>
					<input type="submit" value="글삭제">
					<input type="button" value="취소" onclick="delCancel()">
				</fieldset>
			</form>
		</article>
	</section>
</div>
</body>
</html>