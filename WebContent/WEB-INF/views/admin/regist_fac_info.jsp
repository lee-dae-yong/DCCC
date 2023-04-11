<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap/plugins/summernote/summernote-bs4.min.css"/>



    <!-- Main content -->

    <div>
    <div class="content">
      <div class="container-fluid">
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
        
        <div class="row wrapper wrap-m-w m-auto">
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
        					<div class="aside-naming" style="border-bottom:3px double black;">
        						시설정보관리
        					</div>
        					<div style="height:100%">
        					
        						<div style="padding:10px; text-align:start; border-bottom:3px double black; font-size:1.1rem;">
      								<div class="tab-item" style="display:inline-block;">
										<b>시설정보등록</b>
        							</div>
        						</div>
        					
        					
        					
        	<form role="form" method="post">				
<div class="card-body p-0">
	
  <div class="box-controls">
  	<div style="border-bottom:3px double black;">
  	<div class="row" style="padding:5px 0;">
  	<div class="col-sm-6">
  		<select class="col-sm-3" style="padding:3px;" name="fac_qufen" id="searchType">
    		<option value="none">-- 시설  --</option>
    		<option value="운동시설">운동시설</option>
    		<option value="편의시설">편의시설</option>
		</select>
  		<select class="col-sm-3" style="padding:3px;" name="fac_floor" id="keyword">
    		<option value="none">-- 층 --</option>
    		<option value="옥상">옥상</option>
    		<option value="4층">4층</option>
    		<option value="3층">3층</option>
    		<option value="2층">2층</option>
    		<option value="1층">1층</option>
    		<option value="B1">지하 1층</option>
    		<option value="B2">지하 2층</option>
		</select>
      </div>
		</div>
	</div>
  
  <section class="content">
  	<div >
    	<div class="row">
	      <div class="col-7">
       		<div class="form-group" style="padding-top:10px;" >
          		<label for="inputName">시설 명</label> :
          		<input type="text" id="inputName" name="fac_name" class="form-control">
        	</div>
        	<div class="form-group" >
          		<label for="inputEmail">사진 첨부</label> :
          		<div class="mailbox-attachment-info" style="background:#fff;">
          		<input type="hidden" name="fac_picture">
          			<div class="input-group input-group-sm">
            			<label for="inputFile" class=" btn btn-dccc btn-sm input-group-addon">파일선택</label>
                		<input id="inputFileName" class="form-control" type="text" name="tempPicture" disabled/> 
                		<span class="input-group-append-sm">
                			<button type="button" class="btn btn-dccc btn-sm " onclick="upload_go();">업로드</button>
                    	</span>
           	 		</div>
          		</div>
          		<ul style="list-style-type:none;">
          			<li><b>※&nbsp;&nbsp;&nbsp; 허용 확장자&nbsp;&nbsp; : &nbsp;&nbsp; *.jpg; *.jpeg; *.png; *.bmp;</b></li><br/>
          			<li><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;이미지 사이즈 &nbsp;&nbsp; : &nbsp;&nbsp; 255 * 185</b></li>
          		</ul>
        	</div>
      	</div>
      	<div class="col-5" style="padding-top:10px;">
        	<div class="mailbox-attachments clearfix" style="text-align: center;">
            	<div class=" has-img" id="pictureView" style="border: 1px solid green; max-width:340px;height:300px; margin: 0 auto;"></div>
            </div>
            <br>
        </div>
                              
        <div class="form-group">
          <label for="inputMessage" > 부가정보 </label> :  <br/>
          
          <table border="1" style="width:850px; height:300px;">
          <tr style="width:100px;">
          	<th style="text-align:center; width:100px;">카테고리 </th>
          	<td><input type="text" name="fac_category" value="" class="form-control" style="height:100%;"/></td>
          </tr>
          <tr style="width:100px;">
          	<th style="text-align:center; width:100px;">수용 인원 </th>
          	<td><input type="text" name="fac_capacity" value="" class="form-control" style="height:100%;"/></td>
          </tr>
          <tr >
          	<th style="text-align:center; width:100px;">시설 규모  </th>
          	<td><input type="text" name="fac_size" value="" class="form-control" style="height:100%;"/></td>
          </tr>
          
          
          
           <tr >
          	<th style="text-align:center; width:100px;">시설 종류  </th>
          	<td>
          		홈페이지게시용 :&nbsp;&nbsp;&nbsp; <input type="radio" name="fac_kind" value="1"  style="height:100%;"/>
          		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;대관시설 : &nbsp;&nbsp;<input type="radio" name="fac_kind" value="2" style="height:100%;"/>
          		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;대관불가시설 : &nbsp;&nbsp;<input type="radio" name="fac_kind" value="3 " style="height:100%;"/>
          	</td>
          </tr>
          
          
          
          <tr >
          	<th style="text-align:center; width:100px;">시설 소개  </th>
          	<td>
          		<textarea class="textarea" name="fac_introduce" id="content" class="form-control" style="height:200px;width:100%; resize:none; border:1px solid #dfdfdf;" placeholder="  100자 내외로 작성하세요."/></textarea>
          	</td>
          </tr>
          </table>
        </div>
        
        
        
        <div style="margin:0 auto;">
        <div class="form-group" style="display:inline-block; ">
          <input type="submit" class="btn btn-default btn-original" onclick="regist_go();" value="등록" style="width:100px;" >
        </div>
    	<div class="form-group" style="display:inline-block;">
          <input type="submit" class="btn btn-default btn-original" onclick="location.href='<%=request.getContextPath()%>/admin/facility/list.do'" value="취소" style="width:100px;">
        </div>
        </div>
    	</div>
  	</div>
	</section>
</div>
  
 
								
        					</div>
        					</form>
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
	</div>
	
<form role="imageForm" action="picture.do" method="post" enctype="multipart/form-data">
	<input id="inputFile" name="pictureFile" type="file" class="form-control" style="display:none;" onchange="picture_go();">
	<input id="oldFile" type="hidden" name="oldPicture" value="test" />
	<input type="hidden" name="checkUpload" value="0" />	
</form>

	<!-- main-content -->
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
	//alert("change file");
	var form = $('form[role="imageForm"]');
	var picture = form.find('[name="pictureFile"]')[0];
	
	var fileFormat = 
		picture.value.substr(picture.value.lastIndexOf(".")+1).toUpperCase();
	//이미지 확장자 jpg 확인
	if(!(fileFormat=="JPG" || fileFormat=="JPEG" || fileFormat=="PNG" || fileFormat=="BMP")){
		alert("이미지는 jpg, jpeg, png, bmp 형식만 가능합니다.");
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
	            $('form[role="form"]  input[name="fac_picture"]').val(data);	    	  
	      	 	alert("사진이 업로드 되었습니다.");
	        },
	        error:function(error){
	        	
	        }
	 });
			
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
	
	
	
