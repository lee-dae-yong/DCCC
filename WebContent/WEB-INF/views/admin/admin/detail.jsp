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
          <span class="pl-2 pr-2"><i class="fa-solid fa-angle-right"></i></span>
          <span class="pl-2 pr-4">상세보기</span>
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
                <div class="card-body">
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
                    <div class="card-top row" style="margin:10px 0px;background:white;">
                    <c:if test="${loginAdmin.adm_id eq admin.adm_id}">
                      <button type="button" id="modifyBtn" onclick="modify_go();" class="btn btn-default pull-right btn-original text-center" style="margin-left:auto;margin-right: 10px;">수정</button>
                    </c:if>
                    
                    <c:if test="${loginAdmin.adm_rank eq 2 }">
                      <button type="button" id="deleteBtn" onclick="remove_go();" class="btn btn-default pull-right btn-original text-center" style="margin-right: 10px;">삭제</button>
                    </c:if>
                      <button type="button" id="listBtn" onclick="location.href='list.do'" class="btn btn-default pull-right btn-original text-center">목록</button>
                    </div>
                    <div class="card">
                      <div class="card-body">
	        
					<br />
					
                        		<div class="col-sm-5 mb-4 manPicture" data-id="${admin.adm_id }"style="border: solid 1px; height:300px; margin:0 auto;"></div>
					
	                <div class="form-group row" >
	                  <label for="inputId" class="col-sm-3 control-label text-left">아이디</label>
	                  <div class="col-sm-9">
	                    <input name="adm_id" type="text" class="form-control" id="inputId"  value="${admin.adm_id }">
	                  </div>
	                </div>	
	                               
	                <div class="form-group row">
	                  <label for="inputName" class="col-sm-3 control-label text-left">이  름</label>
	                  <div class="col-sm-9">
	                    <input name="adm_name" type="text" class="form-control" id="inputName" value="${admin.adm_name }">
	                  </div>
	                </div>
	                
	                 <div class="form-group row">
	                  <label for="inputPhone" class="col-sm-3 control-label text-left">전화번호</label>
	                  <div class="col-sm-9">   
	                  	<input name="adm_phone" type="text" class="form-control" id="inputPhone" value="${admin.adm_phone }">	                
	                  </div>                  
	                </div>     
	                          
	                 <div class="form-group row">
	                  <label for="inputEmail" class="col-sm-3 control-label text-left">이메일</label>
	                  <div class="col-sm-9">
	                    <input name="adm_email" type="email" class="form-control" id="inputEmail" value="${admin.adm_email }">
	                  </div>
	                </div>
	                
	                <div class="form-group row">
	                  <label for="inputRank" class="col-sm-3 control-label text-left">권한</label>
	                  <div class="col-sm-9">
	                    <input name="adm_rank" type="text" class="form-control" id="inputRank" value="${admin.adm_rank }">
	                  </div>
	                </div>
	                
	               <div class="form-group row">
	                  <label for="inputStartDate" class="col-sm-3 control-label text-left"  >입사일</label>
	                  <div class="col-sm-9">
	                  	<span class="form-control" id="startDate"><fmt:formatDate value="${admin.adm_startDate }" pattern="yyyy-MM-dd" /></span>
	                  </div>
	                </div>
	                
	                
	              </div>  
                        
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
<!-- main-content -->


<form role="form">
	<input type="hidden" name="adm_id" value="${admin.adm_id }" />
</form>
  
<script>
var formObj = "";
window.onload=function(){
	formObj = $("form[role='form']");
}

function modify_go(){
	formObj.attr('action','modifyForm.do').submit();
}
function remove_go(){
	var answer = confirm("정말 삭제하시겠습니까?");
	if(answer)	formObj.attr({'action':'remove.do','method':'post'}).submit();
}


window.onload=function(){
	
	AdminPictureThumb('<%=request.getContextPath()%>');
}
</script>