<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
                      <button type="button" id="registBtn" onclick="modify_go();" class="btn btn-default pull-right btn-original text-center" style="margin-left:auto;margin-right: 10px;">수정</button>
                      <button type="button" id="deleteBtn" onclick="history.go(-1);" class="btn btn-default pull-right btn-original text-center">취소</button>
                    </div>
                    <div class="card">
                      <div class="card-body">
                        <!-- search bar -->
                        <section class="content">
                          <form role="form" class="form-horizontal" action="modify.do" method="post"  enctype="multipart/form-data">
                            <div class="card">
                              <div class="card-body row">
                                <div class="col-5 text-center d-flex align-items-center justify-content-center">
                                  <div class="">
                                    <input type="hidden" name="oldPicture" value="${teacher.tch_picture }" />
                                    <input type="file" id="inputFile" onchange="changePicture_go();" name="tch_picture" style="display:none" />
                                    <div class="input-group col-md-12">
                                      <div class="col-md-12" style="text-align: center;">
                                        <div class="manPicture" data-id="${teacher.tch_id }" id="pictureView" style="border: 1px solid green; height: 200px; width: 140px; margin: 0 auto; margin-bottom:5px;"></div>
                                        <div class="input-group input-group-sm">
                                          <label for="inputFile" class=" btn btn-dccc btn-sm btn-flat input-group-addon">사진변경</label>
                                         <input id="inputFileName" class="form-control" type="text" name="tempPicture" disabled
												value="${techer.picture.split("\\$\\$")[1] }"/>
										<input id="picture" class="form-control" type="hidden" name="uploadPicture" />
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <div class="col-7">
                                  <div class="form-group">
                                    <label for="inputId">ID</label>
                                    <input type="text" readonly name="tch_id" id="inputId" class="form-control" placeholder="13글자 영문자,숫자 조합" value="${teacher.tch_id }">
                                  </div>
                                  <div class="form-group">
                                    <label for="inputPwd">PWD</label>
                                    <input type="password" name="tch_pwd" id="inputPwd" class="form-control" placeholder="20글자 영문자,숫자,특수문자 조합" value="${teacher.tch_pwd }">
                                  </div>
                                  <div class="form-group">
                                    <label for="inputName">이름</label>
                                    <input type="text" name="tch_name" id="inputName" class="form-control" placeholder="이름을 입력하세요" value="${teacher.tch_name }">
                                  </div>
                                  <div class="form-group">
                                    <label for="inputPhone">전화번호</label>
                                    <input type="text" name="tch_phone" id="inputPhone" class="form-control" placeholder="'-'없이 숫자만 입력하세요" value="${teacher.tch_phone }">
                                  </div>
                                  <div class="form-group">
                                    <label for="inputLicense">경력 및 자격사항</label>
                                    <textarea id="text" name="tch_license" class="form-control" rows="4" value="${teacher.tch_license }"></textarea>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </form>
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

window.onload=function(){
  	TeacherPictureThumb('<%=request.getContextPath()%>');
  }
  
	function modify_go(){
		//alert("click modify btn");
		var form = $('form[role="form"]');		
		form.submit();

	}
	function changePicture_go(){
		//alert("picture changed");
		var picture = $('input[id="inputFile"]')[0];
		
		if (picture.files && picture.files[0]) {
			var reader = new FileReader();
			
			reader.readAsDataURL(picture.files[0]);
			 
			reader.onload = function (e) {
				var pictureView = $('div#pictureView')[0];
				//이미지 미리보기	        	
			 	pictureView.style.backgroundImage = "url("+e.target.result+")";
			 	pictureView.style.backgroundPosition="center";
			 	pictureView.style.backgroundSize="cover";
			 	pictureView.style.backgroundRepeat="no-repeat";			
			}
		}
	}
</script>

