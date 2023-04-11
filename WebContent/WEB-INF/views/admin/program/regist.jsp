
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/wezon.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/basic.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/common.css">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <div class="row">
        	<div class="col-sm-12">
        		<div class="main-content-header">
        			<div class="wrapper wrap-m-w m-auto">
        			<div class="text-right">
        				<span class="pl-2 pr-2"><i class="fa-solid fa-house"></i></span>
        				<span class="pl-2 pr-2"><i class="fa-solid fa-angle-right"></i></span>
        				<span class="pl-2 pr-2">강습 프로그램 관리</span>
        				<span class="pl-2 pr-2"><i class="fa-solid fa-angle-right"></i></span>
        				<span class="pl-2 pr-4">강습 프로그램 등록</span>
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
	        					강습 프로그램 관리
	        				</div>
							<button type="button" class="btn btn-default btn-block text-left" onclick="prgList_go();">강습 프로그램 조회</button>
							<button type="button" class="btn btn-default btn-block text-left" onclick="registForm_go();">강습 프로그램 등록</button>
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
        						강습 프로그램 등록
        					</div>
        					<div class="p-4" style="border:1px solid black;">
        						
        						<div class=""  >
	        						<div class="text-right">
										<div class="tab-item" style="display:inline-block;">
                                 
                                </div>
                                  <div class="tab-item" style="display:inline-block;">
                                       <button type="button" class="btn bg-gradient-secondary" onclick="javascript:history.back();">뒤로가기</button>&nbsp;
                                       
                                   </div>	        							
	        						</div>
	        						<form role="form" action="regist.do" method="post">
	        						<div class="row mt-2" style="height:300px;">
		        						<div class="col-sm-8" style="vertical-align:middle;">
			        						
			        						<div class="row">
			        							<span class="col-sm-3">프로그램 명:</span>
			        							<input class="col-sm-9"type="text" name="prg_name">
			        						</div>
				        						<div class="row mt-2">
			        							<label class="col-sm-3 btn bg-gradient-secondary"  for="inputFile" 
			        							onmouseover="this.style.backgroundColor='#a9d2b4'" onmouseout="this.style.backgroundColor='#dfdfdf'" >파일 선택 </label>
			        							<input id="prg_pictureFileName" type="text" name="tempPicture" class="col-sm-6 form-controll"  disabled>
		        								<button type="button" class="col-sm-3 btn btn-default" onclick="upload_go()">파일 업로드</button>
			        							<input type="hidden" name="prg_picture" value=""/>
			        						</div>
			        						<div class="text-right">
			        						파일은 .jpg, .jpeg 형식만 지원합니다
			        						<br/>
			        						한 파일의 최대용량은 1MB입니다.
			        						</div>
			        						
		        						</div>
		        						<div class="col-sm-4">
		        							<div id="pictureView" style="border:1px solid; height:200px;"></div>
		        						</div>
	        						</div>
									<div class="row">
										<div class="col-sm-8" style="margin:0 auto;">

									<!-- 강습 종목 -->
									<div class="form-group">
									<label for="inputPrg_kind">강습 종목</label>
									<input type="text" name="prg_kind" class="form-control" id="inputPrg_kind" placeholder="강습 종목을 입력하세요" maxlength="20"  data-name="prg_kind">
									<!-- <span id="inputPasswordCK-error" class="error invalid-feedback">비밀번호가 일치하지 않습니다!</span> -->
									</div>
									
									<!-- 강의료 -->
									<div class="form-group position-relative">
									<label for="inputPrg_price">강의료</label>
									<!-- <span class="position-absolute r-0 d-none c-dccc" id="idCheck_OK">사용가능</span><span class="position-absolute r-0 d-none c-red" id="idCheck_NO">사용불가</span> -->
									<input type="text" name="prg_price" class="form-control form-in" id="inputPrg_price" placeholder="강의료를 입력하세요"  style="width:100%;" data-name="prg_price">
									<!-- <button type="button" class="btn btn-dccc btn-original position-absolute t-32-r-0" onclick="idCheck_go()">ID 중복확인</button> -->
									<!-- <span id="inputID-error" class="error invalid-feedback">ID중복확인 해주세요!</span>-->
									</div>

									<!-- 강습요일 -->
									<div class="form-group">
									<label for="inputPrg_day">강습요일</label>
									<div style="display:flex; align-items:center;">
									<span>월</span><input type="checkbox" name="prg_day" class="form-control" id="inputPrg_day" placeholder="강습 요일을 입력해주세요" data-name="prg_day" value="월">
									<span>화</span><input type="checkbox" name="prg_day" class="form-control" id="inputPrg_day" placeholder="강습 요일을 입력해주세요" data-name="prg_day" value="화"/>
									<span>수</span><input type="checkbox" name="prg_day" class="form-control" id="inputPrg_day" placeholder="강습 요일을 입력해주세요" data-name="prg_day" value="수">
									<span>목</span><input type="checkbox" name="prg_day" class="form-control" id="inputPrg_day" placeholder="강습 요일을 입력해주세요" data-name="prg_day" value="목">
									<span>금</span><input type="checkbox" name="prg_day" class="form-control" id="inputPrg_day" placeholder="강습 요일을 입력해주세요" data-name="prg_day" value="금">
									<span>토</span><input type="checkbox" name="prg_day" class="form-control" id="inputPrg_day" placeholder="강습 요일을 입력해주세요" data-name="prg_day" value="토">
									</div>
									<!-- <span id="inputName-error" class="error invalid-feedback">이름을 입력해주세요!</span> -->
									</div>
									
									<!-- 강의시간 -->
									<div class="form-group">
									<label for="inputPrg_time">강습시간</label>
									<div>
									<select class="col-sm-5" name="prg_time">
										<c:forEach begin="10" end="20" var="time" >
											<option>${time }</option>
										</c:forEach>
									</select>
									<select class="col-sm-5" name="prg_time">
										<option>00</option>
										<option>30</option>
									</select>
									</div>
									<!-- <span id="inputPassword-error" class="error invalid-feedback">비밀번호를 8자 이상 20자 이하로 입력해주세요!</span> -->
									</div>
									
									
									
									<!-- 정원-->
									<div class="form-group">
									<label for="inputPrg_capacity">프로그램 정원</label>
									<input type="text" name="prg_capacity" class="form-control" id="inputPrg_capacity" placeholder="프로그램 최대 인원을 입력하세요" data-name="prg_capacity">
									<!-- <span id="inputBirth-error" class="error invalid-feedback">생년월일을 6자리로 올바르게 입력해 주세요!</span> -->
									</div>
									
									<!-- 담당강사 -->
									<div class="form-group">
									<label for="inputTch_id">강사 ID</label>
									<input type="text" name="tch_id" class="form-control" id="inputTch_id" placeholder="담당강사의 아이디를 입력사헤요" onchange="tch_check()" data-name="tch_id">
									<!-- <span id="inputPhone-error" class="error invalid-feedback">전화번호를 11자리로 입력해주세요!</span> -->
									</div>
									
									<!-- email -->
								<!-- 	<div class="form-group position-relative">
									<label for="inputEmail">EMAIL</label>
									<input type="email" name="email" class="form-control" id="inputEmail" placeholder="EMAIL을 입력해주세요 ex)abc123@naver.com" style="width:calc(100% - 102px);" onchange="email_check()" data-name="이메일">
									<button type="button" class="btn btn-dccc btn-original position-absolute t-32-r-0" onclick="email_confirm()">EMAIL 확인</button>							
									<span id="inputEmail-error" class="error invalid-feedback">이메일 형식에 맞게 입력해주세요!</span>
									</div>
									
									<div class="input-group col-sm-6 input-group p-0 ml-auto mb-4 d-none" id="divEmail">
									<input type="text" name="email_ck" placeholder="Email 인증번호 입력" class="form-control">
									<span class="input-group-append">
									<button type="button" class="btn btn-dccc btn-original" onkeyPress="javascript:CheckInputNum();" onclick="email_number_check()">확인</button>
									</span>
									</div> -->
									
									<div class="text-right mt-5">
									<button type="button" class="btn bg-gradient-secondary" onclick="javascript:history.back();">뒤로가기</button>&nbsp;
									<button type="button" class="btn btn-dccc btn-original" onclick="regist_go()">등록하기</button>
									</div>
								
									</div>
									</div>
									
									</form>
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
  </div>
  <!-- /.content-wrapper -->

 
	</div>
	
	<input type="hidden" name="tch_invalid" value="0"/>
	
	<!-- main-content -->
	
	<form role="imageForm" action="uploadPicture.do" method="post" encType="multipart/form-data">
		<input id="inputFile" name="prg_pictureFile" type="file" class="form-controll" style="display:none" onchange="picture_go();"/>
		<input id="oldFile" type="hidden" name="oldPicture" value="test" />
		<input type="hidden" name="checkUpload" value="0" />	
	</form>
<script src="<%=request.getContextPath() %>/resources/js/program.js"></script>


<script>
	var tch_invalid=0;

function tch_check(){
	var tcheck=$('input[name="tch_id"]');
	$.ajax({
		url:"teacherCheck.do",
		method:"get",
		data:"tch_id="+tcheck.val(),
		success:function(result){
			if(result.toUpperCase()=="YES"){
				alert("확인되었습니다");
				tch_invalid=1;
				//alert(tch_invalid);
				return;
			}else{
				alert("존재하지 않는 강사 아이디입니다.");
				tch_invalid=0;
				//alert(tch_invalid);
				return;
			}
		}
			
	});
}




function regist_go(){
	//alert("regist btn");
	if(!$('input[name="prg_name"]').val()){
	    alert("강의명을 입력해주세요.");
	    $('input[name="prg_name"]').focus();
	    return;
	}
	
	var uploadCheck = $('input[name="checkUpload"]').val();  	
	if(uploadCheck=='0'){
	    alert("사진업로드는 필수 입니다");      
	    return;
	}
	
	if(!$('input[name="prg_kind"]').val()){
	    alert("강습 종목을 입력해 주세요.");
	    $('input[name="prg_kind"]').focus();
	    return;
	}
	if(!$('input[name="prg_price"]').val()){
	    alert("강의료를 입력해 주세요.");
	    $('input[name="prg_price"]').focus();
	    return;
	}
	if(!$('input[name="prg_day"]').val()){
	    alert("강습요일을 입력해 주세요.");
	    $('input[name="prg_day"]').focus();
	    return;
	}
	if(!$('select[name="prg_time"]').val()){
	    alert("강습시간을 입력해 주세요.");
	    $('input[name="prg_time"]').focus();
	    return;
	}
	if(!$('input[name="prg_capacity"]').val()){
	    alert("정원을 입력해 주세요.");
	    $('input[name="prg_capacity"]').focus();
	    return;
	}
	if(tch_invalid==0){
		alert("강사아이디를 확인해주세요");
		$('input[name="tch_id"]').focus();
		return;
	}

		
	$('form[role="form"]').submit();
}
</script>	


	

