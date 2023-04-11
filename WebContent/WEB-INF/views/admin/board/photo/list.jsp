<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="photoList" value="${dataMap.photoList }"/>
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
        				<span class="pl-2 pr-4">포토갤러리</span>
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
							<button type="button" class="btn btn-default btn-block text-left btn-original" onclick="location.href='../sug/list.do'">건의사항</button>
							<button type="button" class="btn btn-default btn-block text-left btn-original btn-dccc" onclick="location.href='../photo/list.do'">포토갤러리</button>
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
        						포토갤러리
        					</div>
        					<div>
        						<div class="card shadow-none">
									<div class="card-header border-0">
									<button class="btn btn-default btn-original btn-dccc" onclick="location.href='registForm.do'">글 등록</button>
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
										<div class="d-flex flex-wrap justify-content-between">
										
											<c:forEach var="photo" items="${photoList }">
											<c:set value="${photo.pho_content}" var="p_content"/>
											<c:set value="${fn:substring(p_content,fn:indexOf(p_content,'fileName=')+9,fn:indexOf(p_content,'jpg')+3) }" var="pic_name"/>
												<div class="card" style="width:45%; cursor: pointer;" onclick="location.href='detail.do?no=${photo.pho_no}&searchType=${cri.searchType}&keyword=${cri.keyword}&perPageNum=&page=${cri.page }'">
													<div class="card-header">
														<h3 class="card-title">${photo.pho_title }</h3>
													</div>
												
													<div class="card-body text-center">
														<span class="photoPicture photo_picture_size" data-id="${pic_name}"></span>
													</div>
													
													<div class="card-footer">
														<h3 class="card-title float-right"><fmt:formatDate value="${photo.pho_regDate }" pattern="yyyy-MM-dd"/></h3>
													</div>
												</div>
											
											</c:forEach>
										</div>											
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

 
	</div>
	</div>
	<!-- main-content -->
<script>
  window.onload=function(){
	  PhotoPictureThumb('<%=request.getContextPath()%>');
  }
</script>
	
	