<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="memberList" value="${dataMap.memberList }" />
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
        				<span class="pl-2 pr-4">회원관리</span>
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
        				<div class="card-body asied_menu">
        					<div class="aside-naming">
        						회원관리
        					</div>

        					<div style="height:700px;">
        				<!-- search bar -->
        				<div class="card-header" style="padding:0px;margin-bottom:5px;border-bottom:0;">
        						<button type="button" class="btn btn-default btn-original text-center" onclick="location.href='list.do'">목록</button>
        					<div id="keyword" class="card-tools" style="width:350px;margin-right:0">
        						 <div class="input-group row" style="margin:0px;" >
        					<select class="form-control col-md-5" name="searchType" id="searchType" style="font-size:12px;">
                      			<option value=""  >검색구분</option>
                     			<option value="i" ${cri.searchType=='i' ? "selected":"" }>아이디</option>
                     			<option value="e" ${cri.searchType=='e' ? "selected":"" }>이메일</option>
                     			<option value="n" ${cri.searchType=='n' ? "selected":"" }>이 름</option>
                     			<option value="p" ${cri.searchType=='p' ? "selected":"" }>전화번호</option>
                  			</select>
                 		 <!-- keyword -->
                      		<input  class="form-control" style=font-size:13px type="text" name="keyword" placeholder="검색어를 입력하세요." value="${cri.keyword }"/>
                  				<span class="input-group-apspend">
                     				<button class="btn btn-primary" type="button" id="searchBtn" style="background:#a9d2b4;border-color:#a9d2b4" data-card-widget="search" onclick="list_go(1);">
                        				<i class="fa fa-fw fa-search"></i>
                    			 	</button>
                 				 </span>
                 			</div>
                 		</div>
                 		</div>
               			<!-- end : search bar -->      
                    <div class="list-body" style="text-align:center;">
                      <div class="row">
                        <div class="col-sm-12">
                          <table class="table table-bordered text-center">
                            <tr style="font-size:0.95em;">
                              <th style="width:15%">아이디</th>
                              <th style="width:15%">이 름</th>
                              <th style="width:20%">이메일</th>
                              <th style="width:25%">전화번호</th>
                              <th style="width:25%">등록일</th>
                            </tr>
                <c:forEach items="${memberList }" var="member">
                <fmt:formatDate value="${member.mem_regDate }" pattern="yyyy-MM-dd" var="regDate"/>
                    <tr>
                       <td>${member.mem_id }</td>
                       <td>${member.mem_name }</td>
                       <td>${member.mem_email }</td>
                       <td>${member.mem_phone }</td>
                       <td>${regDate }</td>
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
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    </div>
    </div>  
    
    </div>
    <!-- /.content -->
  
  <!-- /.content-wrapper -->

</div>
</div>
	<!-- main-content -->
<script>
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