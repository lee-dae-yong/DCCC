<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<form id="jobForm">
	<input type="hidden" name="searchType" value="">
	<input type="hidden" name="keyword" value="">
	<input type="hidden" name="perPageNum" value="">
	<input type="hidden" name="page" value="">
</form>

	<nav aria-label="Navigation">
		<ul class="pagination justify-content-center m-0">
			<li class="paginate_button page-item ">
				<a href="javascript:list_go(1)" class="page-link">
					<i class="fas fa-angle-double-left"></i>
				</a>
			</li>
			
			<li class="paginate_button page-item ">
				<a href="javascript:list_go(${pageMaker.prev ? pageMaker.startPage-1 : cri.page})" class="page-link">
					<i class="fas fa-angle-left"></i>
				</a>
			</li>
			
			<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="pageNum">
				<li class="paginate_button page-item ${cri.page eq pageNum ? 'active' : '' }">
				<a href="javascript:list_go(${pageNum })" class="page-link">
					${pageNum }
				</a>
			</li>	
			</c:forEach>
			
			<li class="paginate_button page-item ">
				<a href="javascript:list_go(${pageMaker.next ? pageMaker.endPage+1 : cri.page})" class="page-link">
					<i class="fas fa-angle-right"></i>
				</a>
			</li>
			
			<li class="paginate_button page-item ">
				<a href="javascript:list_go(${pageMaker.realEndPage});" class="page-link">
					<i class="fas fa-angle-double-right"></i>
				</a>
			</li>
		</ul>
	</nav>