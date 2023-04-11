<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
	alert("글이 정상적으로 삭제 되었습니다.");
	location.href="<%=request.getContextPath()%>/member/board/sug/list.do";
</script>