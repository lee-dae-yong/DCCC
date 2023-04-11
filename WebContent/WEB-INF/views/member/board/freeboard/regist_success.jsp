<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
	alert("글이 정상적으로 등록 되었습니다.");
	location.href="<%=request.getContextPath()%>/member/board/fbd/list.do";
</script>