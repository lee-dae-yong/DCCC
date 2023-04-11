<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
alert("강사정보가 삭제되었습니다.")
window.close();

<c:if test="${empty tch_id}" >
if(window.opener){
	window.opener.location.reload();
}else{		
	location.href="<%=request.getContextPath()%>/admin/teacher/list.do";
}
</c:if>
</script>