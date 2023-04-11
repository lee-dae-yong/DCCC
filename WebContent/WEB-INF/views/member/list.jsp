<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Main content header -->
<div class="row">
  <div class="col-sm-12">
    <div class="main-content-header">
      <div class="wrapper wrap-m-w m-auto">
        <div class="text-right">
          <span class="pl-2 pr-2"><i class="fa-solid fa-house"></i></span> <span class="pl-2 pr-2"><i class="fa-solid fa-angle-right"></i></span> <span class="pl-2 pr-2">마이페이지</span> <span class="pl-2 pr-2"><i class="fa-solid fa-angle-right"></i></span> <span class="pl-2 pr-4">본인정보조회</span>
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
                    <a href="<%=request.getContextPath()%>/member/list.do"><span style="color: black;">본인정보수정</span></a>
                  </button>
                  <button type="button" class="btn btn-default btn-block btn-original text-left">
                  <a href="<%=request.getContextPath()%>/member/member/relist.do"><span style="color: black;">프로그램예약조회</span></a>
                  </button>
                  <button type="button" class="btn btn-default btn-block btn-original text-left">
                  	<a href="<%=request.getContextPath()%>/member/member/bolist.do"><span style="color: black;">대관예약조회</span></a>
                  </button>
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
                      <button type="button" id="modifyBtn" onclick="modify_go();" class="btn btn-default pull-right btn-original text-center" style="margin-left: auto; margin-right: 10px;">정보수정</button>
                      <button type="button" id="deleteBtn" onclick="remove_go();" class="btn btn-default pull-right btn-original text-center">회원탈퇴</button>
                    </div>
                    <div class="card">

                      <!-- General Form Elements -->
                      <div class="card card-danger">
                        <div class="card-header" style="background:#a9d2b4;">
                          <h3 class="card-title">내정보</h3>
                        </div>
                        <div class="card-body">

                          <div class="form-group">
                            <label>ID</label>
                            <div class="input-group">
                              <div class="input-group-prepend"></div>
                              <input type="text" readonly name="mem_id" class="form-control" value="${loginUser.mem_id }" style="background-color: #fff;">
                            </div>

                          </div>

                          <div class="form-group">
                            <label>PWD</label>
                            <div class="input-group">
                              <div class="input-group-prepend"></div>
                              <input type="password" readonly name="mem_pwd" class="form-control" value="${loginUser.mem_pwd }" style="background-color: #fff;">
                            </div>

                          </div>
                          <div class="form-group">
                            <label>이름</label>
                            <div class="input-group">
                              <div class="input-group-prepend"></div>
                              <input type="text" readonly name="mem_name" class="form-control" value="${loginUser.mem_name }" style="background-color: #fff;">
                            </div>

                          </div>
                          <div class="form-group">
                            <label>생년월일</label>
                            <div class="input-group">
                              <div class="input-group-prepend"></div>
                              <input type="text" readonly name="mem_birth" class="form-control" value="${loginUser.mem_birth }" style="background-color: #fff;">
                            </div>
                          </div>
                          <div class="form-group">
                            <label>이메일</label>
                            <div class="input-group">
                              <div class="input-group-prepend"></div>
                              <input type="text" readonly name="mem_email" class="form-control" value="${loginUser.mem_email }" style="background-color: #fff;">
                            </div>
                          </div>
                          <div class="form-group">
                            <label>전화번호</label>
                            <div class="input-group">
                              <div class="input-group-prepend"></div>
                              <input type="text" readonly name="mem_phone" class="form-control" value="${loginUser.mem_phone }" style="background-color: #fff;">
                            </div>

                          </div>

                        </div>

                      </div>

                    </div>
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
<!-- main-content -->
<form role="form">
  <input type="hidden" name="mem_id" value="${loginUser.mem_id }" />
</form>

<script>
  var formObj = "";
  window.onload = function() {
    formObj = $("form[role='form']");
  }

  function modify_go() {
    alert("정보 수정 화면으로 이동합니다.")
    formObj.attr('action', 'modifyForm.do').submit();
  }

  function remove_go() {
    var answer = confirm("탈퇴 하시겠습니까?");
    if (answer)
      formObj.attr({
        'action': 'remove.do',
        'method': 'post'
      }).submit();
  }
</script>