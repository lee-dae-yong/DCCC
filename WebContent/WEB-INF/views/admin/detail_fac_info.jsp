<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!-- Main content header -->
		<div class="row">
        	<div class="col-sm-12">
        		<div class="main-content-header">
        			<div class="text-right wrapper wrap-m-w m-auto">
        				<span class="pl-2 pr-2"><i class="fa-solid fa-house"></i></span>
        				<span class="pl-2 pr-2"><i class="fa-solid fa-angle-right"></i></span>
        				<span class="pl-2 pr-4">시설정보관리</span>
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
                    	시설정보관리
                  </div>
                  			
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
                    	시설상세정보
                  </div>
                  <div style="">
                    <div class="card-top row" style="margin:10px 0px;background:white;">
                      <button type="button" id="modifyBtn" onclick="modify_go();" class="btn btn-default pull-right btn-original text-center" style="margin-left:auto;margin-right: 10px;">수정</button>
                      <button type="button" id="deleteBtn" onclick="remove_go();" class="btn btn-default pull-right btn-original text-center" style="margin-right: 10px;">삭제</button>
                      <button type="button" id="listBtn" onclick="location.href='list.do'" class="btn btn-default pull-right btn-original text-center">목록</button>
                    </div>
                    <div class="card">
                      <div class="card-body">
                        <!-- search bar -->
                        <section class="content">

                          <div class="card">
                            <div class="card-body" >
                              <div class="text-center d-flex align-items-center justify-content-center">
                                <div class="mailbox-attachments clearfix col-md-12" style="text-align: center;">							
									<div id="pictureView" class="manPicture" data-id="${facility.fac_no }" style="border: 1px solid green; height: 185px; width: 255px; margin: 0 auto;"></div>														
								</div>
                              </div>
                              <div class="">
                              <div class="form-group">
                                <div class="form-group">
                                  <label for="inputId">시설명</label>
                                  <input type="text" readonly name="fac_name" id="inputId" class="form-control" value="${facility.fac_name }">
                                </div>
                                <div class="form-group">
                                  <label for="inputName">시설구분</label>
                                  <input type="text" readonly name="fac_qufen" id="inputName" class="form-control" value="${facility.fac_qufen }">
                                </div>
                                <div class="form-group">
                                  <label for="inputName">층</label>
                                  <input type="text" readonly name="fac_floor" id="inputName" class="form-control" value="${facility.fac_floor }">
                                </div>
                                <div class="form-group">
                                  <label for="inputName">수용인원</label>
                                  <input type="text" readonly name="fac_capacity" id="inputName" class="form-control" value="${facility.fac_capacity }">
                                </div>
                                <div class="form-group">
                                  <label for="inputName">시설규모</label>
                                  <input type="text" readonly name="fac_size" id="inputName" class="form-control" value="${facility.fac_size }">
                                </div>
                                <div class="form-group">
                                  <label for="inputName">시설종류</label>
                                  <input type="text" readonly name="fac_kind" id="inputName" class="form-control" value="${facility.fac_kind }">
                                </div>
                                <div class="form-group">
                                  <label for="inputName">카테고리</label>
                                  <input type="text" readonly name="fac_category" id="inputName" class="form-control" value="${facility.fac_category }">
                                </div>
                                <div class="form-group">
                                  <label for="inputPhone">시설소개</label>
                                  <input type="text" readonly name="fac_introduce" id="inputPhone" class="form-control" value="${facility.fac_introduce }">
                                </div>
                                </div>
                                <input type="hidden" name="fac_no" value="${facility.fac_no }">
                              </div>
                            </div>
                          </div>
                        </section>
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
  </div>
</div>

<!-- /.content-wrapper -->
<script>
  window.onload = function() {
   FacilityPictureThumb('<%=request.getContextPath()%>');
  }
</script>

<form role="form">
	<input type="hidden" name="fac_no" value="${facility.fac_no }" />
</form>
  
<script>
var formObj = "";
window.onload=function(){
	formObj = $("form[role='form']");
}


var pictureView = document.querySelector("div#pictureView");

pictureView.style.backgroundImage="url('getPicture.do?fac_no=${facility.fac_no}')";		
pictureView.style.backgroundPosition="center";
pictureView.style.backgroundRepeat="no-repeat";
pictureView.style.backgroundSize="cover";





function modify_go(){
	formObj.attr('action','modifyForm.do').submit();
}
function remove_go(){
	var answer = confirm("정말 삭제하시겠습니까?");
	if(answer)	formObj.attr({'action':'remove.do','method':'post'}).submit();
}
</script>