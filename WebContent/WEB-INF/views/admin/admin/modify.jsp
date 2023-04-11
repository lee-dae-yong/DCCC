<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
          <span class="pl-2 pr-4">직원수정</span>
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
                      <button type="button" id="registBtn" onclick="modify_go();" class="btn btn-default pull-right btn-original text-center" style="margin-left:auto;margin-right: 10px;">수정</button>
                      <button type="button" id="cancleBtn" onclick="history.go(-1);" class="btn btn-default pull-right btn-original text-center">취소</button>
                    </div>
                    <div class="card">
                      <div class="card-body">
						<form role="form" class="form-horizontal" action="modify.do" method="post"  >
                        <!-- General Form Elements -->
                          <div class="row mb-3">
                            <label for="inputId" class="col-sm-2 col-form-label">아이디</label>
                            <div class="col-sm-10">
                              <input type="text" readonly name="adm_id" id="inputId" class="form-control" style="background:#fff;" value="${admin.adm_id }">
                            </div>
                          </div>
                          <div class="row mb-3">
                            <label for="inputPwd" class="col-sm-2 col-form-label">패스워드</label>
                            <div class="col-sm-10">
                              <input type="password" name="adm_pwd" id="inputPwd" class="form-control" value="${admin.adm_pwd }">
                            </div>
                          </div>
                          <div class="row mb-3">
                            <label for="inputName" class="col-sm-2 col-form-label">이름</label>
                            <div class="col-sm-10">
                              <input type="text" name="adm_name" id="inputName" class="form-control" value="${admin.adm_name }">
                            </div>
                          </div>
                          <div class="row mb-3">
                            <label for="inputPhone" class="col-sm-2 col-form-label">전화번호</label>
                            <div class="col-sm-10">
                              <input type="text" name="adm_phone" id="inputPhone" class="form-control" value="${admin.adm_phone }">
                            </div>
                          </div>
                          <div class="row mb-3">
                            <label for="inputEmail" class="col-sm-2 col-form-label">이메일</label>
                            <div class="col-sm-10">
                              <input type="text" name="adm_email" id="inputEmail" class="form-control" value="${admin.adm_email }">
                            </div>
                          </div>
                          <div class="row mb-3">
                            <label for="inputRank" class="col-sm-2 col-form-label">권한</label>
                            <div class="col-sm-10">
                              <input type="text" name="adm_rank" id="inputRank" class="form-control" value="${admin.adm_rank }">
                            </div>
                          </div>
                          </form>
                            </div>
                          </div>

                        <!-- End General Form Elements -->

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
<!-- main-content -->

<script>
	function modify_go(){
		//alert("click modify btn");
		var form = $('form[role="form"]');		
		form.submit();

	}
	</script>