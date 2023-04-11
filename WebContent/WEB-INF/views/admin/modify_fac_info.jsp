<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap/plugins/summernote/summernote-bs4.min.css"/>



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
                       시설정보수정
                  </div>
                          <form role="form" class="form-horizontal" action="modify.do" method="post"  enctype="multipart/form-data">
                  
                                  <select class="col-sm-2" style="padding:3px; display:inline-block;" name="fac_qufen" id="inputqufen">
    								<option value="운동시설" ${facility.fac_qufen eq "운동시설" ? 'selected' : '' }>운동시설</option>
    								<option value="편의시설" ${facility.fac_qufen eq "편의시설" ? 'selected' : '' }>편의시설</option>
								  </select>
                  
                   				<select class="col-sm-2" style="padding:3px; display:inline-block;" name="fac_floor" id="inputfloor">
    							  	<option value="옥상" ${facility.fac_floor eq "옥상" ? 'selected' : '' }>옥상</option>
    								<option value="4층" ${facility.fac_floor eq "4층" ? 'selected' : '' }>4층</option>
    								<option value="3층" ${facility.fac_floor eq "3층" ? 'selected' : '' }>3층</option>
    								<option value="2층" ${facility.fac_floor eq "2층" ? 'selected' : '' }>2층</option>
    								<option value="1층" ${facility.fac_floor eq "1층" ? 'selected' : '' }>1층</option>
    								<option value="지하 1층" ${facility.fac_floor eq "지하1층" ? 'selected' : '' }>지하 1층</option>
    								<option value="지하 2층" ${facility.fac_floor eq "지하2층" ? 'selected' : '' }>지하 2층</option>
								  </select>
                  
                  
                  
                  <div style="">
                    <div class="card-top row" style="margin:10px 0px;background:white;">
                      <button type="button" id="registBtn" onclick="modify_go();" class="btn btn-default pull-right btn-original text-center" style="margin-left:auto;margin-right: 10px;">수정</button>
                      <button type="button" id="deleteBtn" onclick="history.go(-1);" class="btn btn-default pull-right btn-original text-center">취소</button>
                    </div>
                    <div class="card">
                      <div class="card-body">
                        <!-- search bar -->
                        <section class="content">
                            <div class="card">
                              <div class="card-body">
                                <div class="text-center d-flex align-items-center justify-content-center">
                                  <div class="">
                                    <input type="hidden" name="oldPicture" value="${facility.fac_picture }" />
                                    <input type="file" id="inputFile" onchange="changePicture_go();" name="fac_picture" style="display:none" />
                                    <div class="input-group col-md-12">
                                      <div class="col-md-12" style="text-align: center;">
                                        <div class="manPicture" data-id="${facility.fac_no }" id="pictureView" style="border: 1px solid green; height: 185px; width: 285px; margin: 0 auto; margin-bottom:5px;"></div>
                                        <div class="input-group input-group-sm">
                                          <label for="inputFile" class=" btn btn-dccc btn-sm btn-flat input-group-addon">사진변경</label>
                                         <input id="inputFileName" class="form-control" type="text" name="tempPicture" disabled
                                    value="${facility.fac_picture.split("\\$\\$")[1] }"/>
                              <input id="picture" class="form-control" type="hidden" name="uploadPicture" />
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <div class="">
                                  <div class="form-group col-5">
                                    <label for="inputname">시설명</label>
                                    <input type="text" name="fac_name" id="inputname" class="form-control" value="${facility.fac_name }">
                                  </div>
                                  <input type="hidden" name="fac_no" value="${facility.fac_no }"/>
                                  
                                  
                                  
                                  
                                  
                                  <%-- <div class="form-group">
                                    <input type="text" name="fac_qufen" id="inputPwd" class="form-control" placeholder="운동시설/편의시설중 입력" value="${facility.fac_qufen }">
                                  </div> --%>
                                  
                                  
                                  
                         
                                  
                                 <%--  <div class="form-group">
                                    <input type="text" name="fac_floor" id="inputName" class="form-control" placeholder="B2 - 1층" value="${facility.fac_category }">
                                  </div> --%>
                                  
                              	 
								  
								
                                  
                                  
                                  <div class="form-group col-5">
                                    <label for="inputcapacity">수용인원</label>
                                    <input type="text" name="fac_capacity" id="inputcapacity" class="form-control" value="${facility.fac_capacity }">
                                  </div>
                                  
                                  <div class="form-group col-5">
                                    <label for="inputsize">시설규모</label>
                                    <input type="text" name="fac_size" id="inputsize" class="form-control" value="${facility.fac_size }"> 
                                  </div>
                                 <input type="hidden" name="fac_picture" value="${facility.fac_picture }"/>
                                  <div class="form-group col-5">
                                    <label for="inputkind">시설종류</label>
                                    <input type="text" name="fac_kind" id="inputkind" class="form-control" placeholder="1 : 홈페이지 게시용 / 2 : 대관가능시설 " value="${facility.fac_kind }">
                                  </div>
                                  <div class="form-group col-5">
                                    <label for="inputcategory">카테고리</label>
                                    <input type="text" name="fac_category" id="inputcategory" class="form-control" value="${facility.fac_category }">
                                  </div>
                                  <div class="form-group">
                                    <label for="inputintroduce">시설소개</label>
                                    <textarea id="content" name="fac_introduce" class="form-control" rows="8" style="resize:none;">${facility.fac_introduce }</textarea>
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
     FacilityPictureThumb('<%=request.getContextPath()%>');
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
   
   window.onload=function(){
	   $('#content').summernote({
		   placeholder:'여기에 내용을 적으세요.',
		   lang:'ko-KR',
		   height:250,
		   disableResizeEditor:true
	   });
}
   
   
</script>
