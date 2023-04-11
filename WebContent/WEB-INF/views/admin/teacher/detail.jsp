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
          <span class="pl-2 pr-4">강사관리</span>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- Content Wrapper. Contains page content -->
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
                    	강사관리
                  </div>
                  <div style="">
                    <div class="card-top row" style="margin:10px 0px;background:white;">
                      <button type="button" id="modifyBtn" onclick="modify_go();" class="btn btn-default pull-right btn-original text-center" style="margin-left:auto;margin-right: 10px;">수정</button>
                      <button type="button" id="deleteBtn" onclick="remove_go();" class="btn btn-default pull-right btn-original text-center" style="margin-right: 10px;">삭제</button>
                      <button type="button" id="listBtn" onclick="location.href='list.do'" class="btn btn-default pull-right btn-original text-center">목록</button>
                    </div>
                    <div class="card">
                      <form role="form" class="form-horizontal"  method="post">
                            <div class="card-body row" >
                              <div class="col-5 text-center d-flex align-items-center justify-content-center">
                                <div class="mailbox-attachments clearfix col-md-12" style="text-align: center;">							
									<div id="pictureView" class="manPicture" data-id="${teacher.tch_id }" style="border: 1px solid green; height: 200px; width: 140px; margin: 0 auto;"></div>					
								</div>
                              </div>
                              <div class="col-7">
                                <div class="form-group">
                                  <label for="inputId">ID</label>
                                  <input type="text" name="tch_id" id="inputId" class="form-control" value="${teacher.tch_id }" readonly>
                                </div>
                                <div class="form-group">
                                  <label for="inputName">이름</label>
                                  <input type="text" name="tch_name" id="inputName" class="form-control" value="${teacher.tch_name }" readonly>
                                </div>

                                <div class="form-group">
                                  <label for="inputPhone">전화번호</label>
                                  <input type="text" name="tch_phone" id="inputPhone" class="form-control" value="${teacher.tch_phone }" readonly>
                                </div>
                                <div class="form-group">
                                  <label for="inputLicense">경력 및 자격사항</label>
	                                  <input type="text" name="tch_license" id="inputLicense" class="form-control" value="${teacher.tch_license }" readonly>
	                                </div>
                              </div>
                            </div>
                          </form>
                          </div>
                      </div>
                    </div>
                  </div>
                  <div class="card-footer" style="background:#fff;">
                    <!-- pagination -->

                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

<!-- /.content-wrapper -->
<script src="<%=request.getContextPath() %>/resources/js/common.js"></script>

<script>
	var pictureView = document.querySelector("div#pictureView");
	
	pictureView.style.backgroundImage="url('getPicture.do?tch_id=${teacher.tch_id}')";		
	pictureView.style.backgroundPosition="center";
	pictureView.style.backgroundRepeat="no-repeat";
	pictureView.style.backgroundSize="cover";
</script>
 
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
</script>