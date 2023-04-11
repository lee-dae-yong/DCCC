<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
	alert("대관 신청이 완료 되었습니다!");
	location.href='<%=request.getContextPath()%>/member/member/bodetail.do?mem_id=${member_id}&book_no=${book_no}';
</script>