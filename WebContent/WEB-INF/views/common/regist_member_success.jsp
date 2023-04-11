<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
	alert("회원가입에 성공했습니다!");
	location.href="<%=request.getContextPath()%>/member/loginForm.do";
</script>