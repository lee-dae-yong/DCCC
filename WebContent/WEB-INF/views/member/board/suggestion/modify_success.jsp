<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
	alert("글이 정상적으로 수정 되었습니다.");
	location.href="<%=request.getContextPath()%>/member/board/sug/detail.do?no=${param.no}&searchType=${param.searchType}&keyword=${param.keyword}&perPageNum=&page=${param.page }";
</script>