<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
window.alert('${msg}');
window.self.close();
opener.location.href='carBookInfo.do?carnum=${carnum}';


</script>