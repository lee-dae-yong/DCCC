<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="suggestionList" value="${dataMap.suggestionList }"/>
<c:set var="pageMaker" value="${dataMap.pageMaker}"/>
<c:set var="cri" value="${pageMaker.cri }"/>
      <!-- Main content header -->
        <div class="row">
        	<div class="col-sm-12 p-0">
        		<div class="main-content-header">
        			<div class="wrapper wrap-m-w m-auto">
        			<div class="text-right">
        				<span class="pl-2 pr-2"><i class="fa-solid fa-house"></i></span>
        				<span class="pl-2 pr-2"><i class="fa-solid fa-angle-right"></i></span>
        				<span class="pl-2 pr-2">커뮤니티</span>
        				<span class="pl-2 pr-2"><i class="fa-solid fa-angle-right"></i></span>
        				<span class="pl-2 pr-4">건의사항</span>
        			</div>
        			</div>
        		</div>
        	</div>
        </div>
        
    <!-- Main content -->
    <div class="wrapper wrap-m-w m-auto">
    <div class="">
    <div class="content">
      <div class="container-fluid">
        <div class="row">
        	<!-- Main content aside bar -->
        	<div class="col-sm-3">
        		<div class="row">
        			<div class="col-sm-12">
        				<div class="card-body aside_menu">
	        				<div class="aside-naming">
	        					커뮤니티
	        				</div>
							<button type="button" class="btn btn-default btn-block text-left btn-original" onclick="location.href='../notice/list.do'">공지사항</button>
							<button type="button" class="btn btn-default btn-block text-left btn-original btn-dccc" onclick="location.href='../sug/list.do'">건의사항</button>
							<button type="button" class="btn btn-default btn-block text-left btn-original" onclick="location.href='../photo/list.do'">포토갤러리</button>
							<button type="button" class="btn btn-default btn-block text-left btn-original" onclick="location.href='../fbd/list.do'">자유게시판</button>
						</div>
        			</div>
        		</div>
        	</div>
        	<!-- Main content real -->
        	<div class="col-sm-9">
        		<div class="row">
        			<div class="col-sm-12">
        				<div class="card-body">
        					<div class="aside-naming">
        						건의사항
        					</div>
        					<div>
        						<div class="card shadow-none">
									<div class="card-header border-0">
									<c:if test="${loginUser ne null }">
									<button class="btn btn-default btn-original btn-dccc" onclick="location.href='registForm.do'">글 등록</button>
									</c:if>
										<div id="keyword" class="card-tools">
											<div class="input-group row">
												<select class="form-control col-md-4" name="searchType" id="searchType">
													<option value="">검 색</option>
													<option value="t" ${cri.searchType eq 't' ? 'selected':'' }>제 목</option>
													<option value="c" ${cri.searchType eq 'c' ? 'selected':'' }>내용</option>
													<option value="tc" ${cri.searchType eq 'tc' ? 'selected':'' }>제목+내용</option>
												</select>					
							
												<input class="form-control" type="text" name="keyword" placeholder="검색어를 입력하세요." value="${cri.keyword }" onkeyup="if(window.event.keyCode==13){list_go()}">
												<span class="input-group-append">
													<button class="btn btn-dccc btn-original" type="button" onclick="list_go();" data-card-widget="search">
													<i class="fa fa-fw fa-search"></i>
													</button>
												</span>
											</div>
										</div>						
									</div>
								 
									<div class="card-body pt-1">
										<table class="table table-bordered">
											<colgroup>
												<col width=10%>
												<col>
												<col width=13%>
												<col width=10%>
												<col width=8%>
												<col width=12%>
											</colgroup>
											<thead>
												<tr>
													<th class="text-center">NO</th>
													<th class="text-center">TITLE</th>
													<th class="text-center">등록일</th>
													<th class="text-center">조회수</th>
													<th class="text-center">공개</th>
													<th class="text-center">답변완료</th>
												</tr>
											</thead>
											<tbody>
											
												<c:forEach items="${suggestionList }" var="suggestion">
												<tr style='font-size:0.85em;cursor:pointer;' onclick="detail_go('${suggestion.mem_id}','${loginUser.mem_id }','${suggestion.sug_rock }','${suggestion.sug_no}');">
													<td class="text-center"><fmt:formatNumber value="${suggestion.sug_no.substring(1) }" pattern="########" /></td>
													<td id="boardTitle" class="td_limit_size">
													${suggestion.sug_title }
													</td>
													<td>							
														<fmt:formatDate value="${suggestion.sug_regDate }" pattern="yyyy-MM-dd"/>
													</td>
													<td class="text-center">${suggestion.sug_viewcnt }</td>
													<td class="text-center"><i class="${suggestion.sug_rock eq 'x' ? 'fa-solid fa-lock-open' : 'fa-sharp fa-solid fa-lock'}"></i></td>
													<td class="text-center">${suggestion.sug_replyContent ne null && not empty suggestion.sug_replyContent ? '답변완료' : ''}</td>
												</tr>
												</c:forEach>
											</tbody>
								</table>
								</div>
								
								<div class="clearfix">
									<%@ include file="/WEB-INF/views/module/pagenation.jsp"%>
								</div>
								</div>
        						
        						
        						
        						
        						
        					</div>
        				<div class="card-body">
        			</div>
        		</div>
        	</div>
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    </div>
    
    
    </div>
    <!-- /.content -->
  
  <!-- /.content-wrapper -->

 <!-- onclick="" -->
	</div>
	</div>
	<!-- main-content -->
	<script>
		function detail_go(memId, loginId, rock, no){
			if(memId == loginId || rock == 'x'){
				location.href='detail.do?from=list&no='+no+'&searchType=${cri.searchType}&keyword=${cri.keyword}&perPageNum=&page=${cri.page }'
			}
		}
	</script>
	
