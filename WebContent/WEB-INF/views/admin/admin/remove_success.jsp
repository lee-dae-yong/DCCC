<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
alert("직원정보가 삭제되었습니다.")
window.close();

<c:if test="${empty adm_id}" >
if(window.opener){
	window.opener.location.reload();
}else{		
	location.href="<%=request.getContextPath()%>/admin/admin/list.do";
}
</c:if>
</script>