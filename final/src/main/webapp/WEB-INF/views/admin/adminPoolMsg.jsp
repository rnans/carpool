<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
	window.alert('${msg}');
	window.alert('${msg2}');
	opener.location.reload();
	window.self.close();
</script>