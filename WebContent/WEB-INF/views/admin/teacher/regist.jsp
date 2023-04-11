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
                      <button type="button" id="registBtn" onclick="regist_go()" class="btn btn-default pull-right btn-original text-center" style="margin-left:auto;margin-right: 10px;">등록</button>
                      <button type="button" id="deleteBtn" onclick="location.href='list.do'" class="btn btn-default pull-right btn-original text-center">취소</button>
                    </div>
                    
                        <section class="content">
                            	<form role="form" class="form-horizontal" action="regist.do" method="post">
						<input type="hidden" name="tch_picture" value="noImage.jpg" />

                          <div class="card">
                            <div class="regist-card-body row">
                              <div class="col-6 text-center d-flex align-items-center justify-content-center">
                                <div class="">
                                  <div class="input-group mb-3">
                                    <div class="mailbox-attachments clearfix" style="text-align: center;">
                                      <div class="mailbox-attachment-icon has-img" id="pictureView" style="border: 1px solid green; height: 150px; width: 150px; margin: 0 auto;"></div>
                                      <div class="mailbox-attachment-info" style="background:#fff;">
                                        <div class="input-group input-group-sm">
                                          <label for="inputFile" class=" btn btn-dccc btn-sm input-group-addon">파일선택</label>
                                          <input id="inputFileName" class="form-control" type="text" name="tempPicture" disabled> <span class="input-group-append-sm">
                                            <button type="button" class="btn btn-dccc btn-sm " onclick="upload_go();">업로드</button>
                                          </span>
                                        </div>
                                      </div>
                                    </div>
                                    <br>
                                  </div>
                                </div>
                              </div>
                              <div class="col-6" style="flex: 0 0 48%;padding-top:7.5px;">
                                <div class="form-group">
                               <span style="color: red; font-weight: bold;">*</span>
                                  <label for="inputId">ID</label>
                                  <input type="text" name="tch_id" onkeyup="this.value=this.value.replace(/[\ㄱ-ㅎㅏ-ㅣ가-힣]/g, &#39;&#39;);" id="inputId" class="form-control" placeholder="13글자 영문자,숫자 조합" />
                                </div>
                                <div class="form-group">
                                 <span style="color: red; font-weight: bold;">*</span>
                                  <label for="inputPwd">PWD</label>
                                  <input type="password" name="tch_pwd" id="inputPwd" class="form-control" placeholder="20글자 영문자,숫자,특수문자 조합" />
                                </div>
                                <div class="form-group">
                                 <span style="color: red; font-weight: bold;">*</span>
                                  <label for="inputName">이름</label>
                                  <input type="text" name="tch_name" id="inputName" class="form-control" placeholder="이름을 입력하세요" onkeyup="this.value=this.value.trim();" / >
                                </div>
                                <div class="form-group">
                                  <label for="inputPhone">전화번호</label>
                                  <input type="text" name="tch_phone" id="inputPhone" class="form-control" placeholder="'-'없이 숫자만 입력하세요" />
                                </div>
                                <div class="form-group">
                                  <label for="inputLicense">경력 및 자격사항</label>
                                  <textarea name="tch_license" class="form-control" rows="4"></textarea>
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

<!-- /.content-wrapper -->
<form role="imageForm" action="picture.do" method="post" enctype="multipart/form-data">
	<input id="inputFile" name="pictureFile" type="file" class="form-control" style="display:none;" onchange="picture_go();">
	<input id="oldFile" type="hidden" name="oldPicture" value="test" />
	<input type="hidden" name="checkUpload" value="0" />	
</form>

<script>	
	function regist_go(){
		//alert("regist btn");
		
		var uploadCheck = $('input[name="checkUpload"]').val();  	
		if(uploadCheck=='0'){
		    alert("사진업로드는 필수 입니다");      
		    return;
		}
		var form = $('form[role="form"]');
		form.attr("action","regist.do");
		form.submit();
	}
	
	function picture_go(){
		//alert("changee file");
		var form = $('form[role="imageForm"]');
		var picture = form.find('[name=pictureFile]')[0];
    	
		var fileFormat = 
			picture.value.substr(picture.value.lastIndexOf(".")+1).toUpperCase();
		//이미지 확장자 jpg 확인
		if(!(fileFormat=="JPG" || fileFormat=="JPEG")){
			alert("이미지는 jpg 형식만 가능합니다.");
			return;
		} 
		//이미지 파일 용량 체크
		if(picture.files[0].size>1024*1024*1){
			alert("사진 용량은 1MB 이하만 가능합니다.");
			return;
		};
		
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
		
		form.find('[name="checkUpload"]').val(0);
		$('#inputFileName').val(picture.files[0].name);
	}
	
	function upload_go(){
		//alert("upload btn");
		if(!$('input[name="pictureFile"]').val()){
		    alert("사진을 선택하세요.");
		    $('input[name="pictureFile"]').click();
		    return;
		 }  
		
		if($('input[name="checkUpload"]').val()==1){
			alert("이미 업로드된 사진입니다.");
			return;
		}
		
		 var formData = new FormData($('form[role="imageForm"]')[0]);
		 
		 $.ajax({
				url:"picture.do",
				data:formData,
				type:"post",
			    processData:false,
		        contentType:false,
		        success:function(data){
		        	//업로드 확인변수 세팅
		            $('input[name="checkUpload"]').val(1);
		            //저장된 파일명 저장.
		            $('input#oldFile').val(data); // 변경시 삭제될 파일명	          
		            $('form[role="form"]  input[name="tch_picture"]').val(data);	    	  
		      	 	alert("사진이 업로드 되었습니다.");
		        },
		        error:function(error){
		        	
		        }
		 });
				
	}
</script>









