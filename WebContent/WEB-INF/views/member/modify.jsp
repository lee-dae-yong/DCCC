<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Main content header -->
<div class="row">
  <div class="col-sm-12">
    <div class="main-content-header">
      <div class="wrapper wrap-m-w m-auto">
        <div class="text-right">
          <span class="pl-2 pr-2"><i class="fa-solid fa-house"></i></span> <span class="pl-2 pr-2"><i class="fa-solid fa-angle-right"></i></span> <span class="pl-2 pr-2">마이페이지</span> <span class="pl-2 pr-2"><i class="fa-solid fa-angle-right"></i></span> <span class="pl-2 pr-4">본인정보수정</span>
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
                  <div class="aside-naming">마이페이지</div>
					<button type="button" class="btn btn-default btn-block btn-original text-left">
						<a href="<%=request.getContextPath()%>/member/list.do"><span style="color:black;">본인정보조회</span></a></button>
                </div>
              </div>
            </div>
          </div>
          <!-- Main content real -->
          <div class="col-sm-9">
            <div class="row">
              <div class="col-sm-12">
                <div class="card-body">
                  <div class="aside-naming">본인정보수정</div>
                  <!-- Main body -->
                  <div style="">
                    <div class="card-top row" style="margin: 10px 0px; background: white;">
                      <button type="button" id="modifyBtn" onclick="modify_go();" class="btn btn-default btn-original  text-center" style="margin-left: auto;margin-right:10px;">수정</button>
                      <button type="button" id="cancelBtn" onclick="history.go(-1);" class="btn btn-default btn-original text-center">취소</button>
                    </div>
                    <div class="card">
                      <div class="card-body">

                        <!-- General Form Elements -->
                        <form role="form" class="form-horizontal" action="modify.do" method="post">
                          <div class="row mb-3">
                            <label for="inputId" class="col-sm-2 col-form-label">아이디</label>
                            <div class="col-sm-10">
                              <input type="text" readonly name="mem_id" class="form-control" value="${loginUser.mem_id }">
                            </div>
                          </div>
                          <div class="row mb-3">
                            <label for="inputPwd" class="col-sm-2 col-form-label">패스워드</label>
                            <div class="col-sm-10">
                              <input type="password" name="mem_pwd" class="form-control" value="${loginUser.mem_pwd }">
                            </div>
                          </div>
                          <div class="row mb-3">
                            <label for="inputName" class="col-sm-2 col-form-label">이름</label>
                            <div class="col-sm-10">
                              <input type="text" name="mem_name" class="form-control" value="${loginUser.mem_name }">
                            </div>
                          </div>
                          <div class="row mb-3">
                            <label for="inputBirth" class="col-sm-2 col-form-label">생년월일</label>
                            <div class="col-sm-10">
                              <input type="text" readonly name="mem_birth" class="form-control" value="${loginUser.mem_birth }">
                            </div>
                          </div>
                          <div class="row mb-3">
                            <label for="inputEmail" class="col-sm-2 col-form-label">이메일</label>
                            <div class="col-sm-10">
                              <input type="text" name="mem_email" class="form-control" value="${loginUser.mem_email }">
                            </div>
                          </div>
                          <div class="row mb-3">
                            <label for="inputPhone" class="col-sm-2 col-form-label">전화번호</label>
                            <div class="col-sm-10">
                              <input type="text" name="mem_phone" class="form-control" value="${loginUser.mem_phone }">
                            </div>
                          </div>
                        </form>
                        <!-- End General Form Elements -->

                      </div>
                    </div>

                  </div>
                  <div class="card-body"></div>

                </div>
              </div>
            </div>
            <!-- /.row -->
          </div>
          <!-- /.container-fluid -->
        </div>
      </div>

    </div>
    <!-- /.content -->

    <!-- /.content-wrapper -->
  </div>
</div>
<!-- main-content -->
<script>
	function modify_go(){
		//alert("click modify btn");
		var form = $('form[role="form"]');		
		form.submit();

	}
	</script>