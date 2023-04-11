<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="adminList" value="${dataMap.adminList }" />
<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${pageMaker.cri }" />
      <!-- Main content header -->
        <div class="row">
        	<div class="col-sm-12">
        		<div class="main-content-header">
        			<div class="wrapper wrap-m-w m-auto">
        			<div class="text-right">
        				<span class="pl-2 pr-2"><i class="fa-solid fa-house"></i></span>
        				<span class="pl-2 pr-2"><i class="fa-solid fa-angle-right"></i></span>
        				<span class="pl-2 pr-2">관리자메뉴</span>
        				<span class="pl-2 pr-2"><i class="fa-solid fa-angle-right"></i></span>
        				<span class="pl-2 pr-4">직원관리</span>
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
	        					관리자메뉴
	        				</div>
                 			<button type="button" class="btn btn-default btn-block btn-original text-left">
								<a href="<%=request.getContextPath()%>/admin/member/list.do"><span style="color:black;">회원관리</span></a></button>
							<button type="button" class="btn btn-default btn-block btn-original text-left">
								<a href="<%=request.getContextPath()%>/admin/admin/list.do"><span style="color:black;">직원관리</span></a></button>
							<button type="button" class="btn btn-default btn-block btn-original text-left">
								<a href="<%=request.getContextPath()%>/admin/teacher/list.do"><span style="color:black;">강사관리</span></a></button>
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
        						직원관리
        					</div>

                  <div style="">
                    <div class="card-header" style="padding:0px;margin-bottom:5px;border-bottom:0;">
                    
                    <c:if test="${loginAdmin.adm_rank eq 2 }">
                      <button type="button" class="btn btn-default btn-original text-center" onclick="location.href='registForm.do'">직원등록</button>
                    </c:if>
                    
                      <button type="button" class="btn btn-default btn-original text-center" onclick="location.href='list.do'">목록</button>
                      <div id="keyword" class="card-tools" style="width:350px;margin-right:0">
                        <div class="input-group row" style="margin:0px">
                          <!-- search bar -->
                          <select class="form-control col-md-5" name="searchType" id="searchType" style="font-size:12px;">
                            <option value="">검색구분</option>
                            <option value="i" ${cri.searchType=='i' ? "selected" :"" }>아이디</option>
                            <option value="n" ${cri.searchType=='n' ? "selected" :"" }>이 름</option>
                            <option value="p" ${cri.searchType=='p' ? "selected" :"" }>전화번호</option>
                          </select>
                          <!-- keyword -->
                          <input class="form-control" type="text" name="keyword" style=font-size:13px placeholder="검색어를 입력하세요." value="${cri.keyword }" />
                          <span class="input-group-append">
                            <button class="btn btn-primary" type="button" id="searchBtn" data-card-widget="search" style="background:#a9d2b4;border-color:#a9d2b4" onclick="list_go(1);">
                              <i class="fa fa-fw fa-search"></i>
                            </button>
                          </span>
                          <!-- end : search bar -->
                        </div>
                      </div>
                    </div>
                    <div class="list-body" style="text-align:center;">
                      <div class="row">
                        <div class="col-sm-12">
                        	
                          <table class="table table-bordered text-center">
                            <tr style="font-size:0.95em;">
                            
                              <th style="width:10%">사진</th>
                              <th style="width:15%">아이디</th>
                              <th style="width:15%">이 름</th>
                              <th style="width:25%">전화번호</th>
                              <th style="width:20%">입사일</th>
                              <th style="width:20%">소속부서</th>
                            </tr>
                <c:forEach items="${adminList }" var="admin">
                <fmt:formatDate value="${admin.adm_startDate }" pattern="yyyy-MM-dd" var="startDate"/>
                    <tr style='cursor:pointer'>
                    
                       <td><div class="manPicture " data-id="${admin.adm_id }" style="width:40px;height:40px;display:block;margin:0 auto;"></div></td>
                       <td><a href="<%=request.getContextPath() %>/admin/admin/detail.do?adm_id=${admin.adm_id }"><span style="color:black;">${admin.adm_id }</span></a></td>
                       <td>${admin.adm_name }</td>
                       <td>${admin.adm_phone }</td>
                       <td>${startDate }</td>
                       <td>${admin.adm_dep }</td>
                    </tr>
                 </c:forEach>   
                          </table>
                        </div> <!-- col-sm-12 -->
                      </div> <!-- row -->
                    </div> <!-- card-body -->
                    
        				<div class="card-body">
        				<%@ include file="/WEB-INF/views/module/pagenation.jsp" %>
             
        			</div>
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
  	AdminPictureThumb('<%=request.getContextPath()%>');
  }
function list_go(page,url){
	  
	   if(!url) url = "list.do";
	  
	   $("form#jobForm input[name='page']").val(page)
	   $("form#jobForm input[name='perPageNum']").val($('select[name="perPageNum"]').val());
	   $("form#jobForm input[name='searchType']").val($('select[name="searchType"]').val());
	   $("form#jobForm input[name='keyword']").val($('div.input-group>input[name="keyword"]').val());

	   $('form#jobForm').attr({
		   action: url,
		   method:'get'
	   }).submit();   

}

</script>