<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String idx=request.getParameter("idx");
    %>
<!DOCTYPE">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>

function bbsdel(){

window.self.close();
opener.location.reload();
}
</script>
<body>


<%=idx %>
<div class="inner">
<article class="lyContent lyMemberBlock" style="width:360px">
<div class="main">
<p class="bTit"><strong>글을 삭제하시겠습니까?</strong></p><div class="selectWrap">
<label for="check1" class="uCheckbox" style="display: none;">

<span class="checkLabel">글 삭제</span>
<span class="fakeCheck"></span>
</label>  </div>
</div>

<footer> 
<form action="bbsdel.do">
<input type="hidden" name="idx" value="<%=idx%>">
<button type="button" class="uButton uButtonDefault" onclick="javascript:window.self.close()">취소</button>
<button type="submit" class="uButton uButtonPoint" onclick="bbsdel()">확인</button>
</form>
</footer>
</article>
</div>

</body>
</html>