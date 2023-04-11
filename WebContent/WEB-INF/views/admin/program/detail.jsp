<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/wezon.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/basic.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/common.css">
   <div class="row">
        	<div class="col-sm-12">
        		<div class="main-content-header">
        			<div class="wrapper wrap-m-w m-auto">
        			<div class="text-right">
        				<span class="pl-2 pr-2"><i class="fa-solid fa-house"></i></span>
        				<span class="pl-2 pr-2"><i class="fa-solid fa-angle-right"></i></span>
        				<span class="pl-2 pr-2">강습 프로그램 관리</span>
        				<span class="pl-2 pr-2"><i class="fa-solid fa-angle-right"></i></span>
        				<span class="pl-2 pr-4">강습 프로그램 상세조회</span>
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
	        					강습프로그램 관리
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
        						강습프로그램 상세 조회
        					</div>
        					        					<div style="border:1px solid black;">
        						<div class="card-body">
									<div class="row">
										<div class="col-12 col-sm-6" >
										<div id="pictureView" 
										class="col-12 programPicture" data-id="${program.prg_code}" style="display:flex;height:100%;border:1px solid">
											
										</div>
										
									</div>
									<div class="col-12 col-sm-6">
									
									<div class=" py-2 px-3 mt-4">
										<table class="table table-bordered">
                  <thead>
                    <tr>
                      <th>정보 명</th>
                      <th>내용</th>
                    </tr>
                  </thead>
                  <tbody>

                    <tr>
                      <td>강습 프로그램 명</td>
                      <td>${program.prg_name }</td>
                    </tr>


                    <tr>
                      <td>강습료</td>
                      <td>${program.prg_price }</td>
                    </tr>

                    <tr>
                      <td>강습 요일</td>
                      <td>${program.prg_day }</td>
                    </tr>

                    <tr>
                      <td>강습 시간</td>
                      <td>${program.prg_time }</td>
                    </tr>

                    <tr>
                      <td>신청인원</td>
                      <td>
                        <div class="progress progress-xs progress-striped active">
                          <div id="progress"class="progress-bar bg-success" style="width: 1%" ></div>
                        </div>
                          <span id="innerpeople">${program.cnt}</span>
                          <span>/</span>
                          <span id="capacity">${program.prg_capacity }</span>
                      </td>
                    </tr>

                    <tr>
                      <td>담당 강사</td>
                      <td>${program.tch_name }</td>
                    </tr>
                  </tbody>
                </table>
									</div>
									<div class="mt-4 row">
									
									<div class="btn btn-lg btn-default mb-2"  style="border: 1px;" 
									onclick="location.href='modifyForm.do?prg_code=${program.prg_code}'"
									onmouseover="this.style.backgroundColor='#a9d2b4'" onmouseout="this.style.backgroundColor='#dfdfdf'">
									<i class="fa-solid fa-hammer"></i>
									정보 수정
									</div>
									
									<button type="button" class="btn btn-primary btn-lg btn-default mb-2" style="border: 1px;" 
									onmouseover="this.style.backgroundColor='#a9d2b4'" onmouseout="this.style.backgroundColor='#dfdfdf'"
									data-toggle="modal" data-target="#modal-default" onclick="modal_go();">
										<i class="fa-solid fa-x"></i>
									정보 삭제
									</button>
									
									<!-- <div class="btn btn-primary btn-lg btn-default mb-2 "  style="border: 1px;" onclick="remove_go();"
										onmouseover="this.style.backgroundColor='#a9d2b4'" onmouseout="this.style.backgroundColor='#dfdfdf'">
									<i class="fa-solid fa-x"></i>
									정보 삭제
									</div> -->
									
									<div class="btn btn-default btn-lg btn-flat mb-2" onclick="prgList_go();">
									<i class="fa-solid fa-list"></i>
									목록으로
									</div>
									</div>
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
  
  <!-- /.content-wrapper -->

 
	</div>
	<div class="modal fade show" id="modal-default" style="display: none; padding-right: 11px;" aria-modal="true" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">삭제확인</h4>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
 						<span aria-hidden="true" onclick="modal_go();">×</span>
					</button>
				</div>
				<div class="modal-body">
					<div style="text-align:center">
					<span>비밀번호 확인:</span>
					<input type="password" name="adm_pwd_input"/></div>
					<input type="hidden" name="adm_pwd" value="${loginAdmin.adm_pwd }">
				</div>
				<div class="modal-footer justify-content-between">
					<button type="button" class="btn btn-default" data-dismiss="modal" onclick="modal_go();">닫기</button>
					<button type="button" class="btn btn-primary" onclick="remove_check();">삭제</button>
				</div>
			</div>

		</div>

	</div>
</div>
	
	<script src="<%=request.getContextPath() %>/resources/js/program.js"></script>
	<script>
	window.onload=function(){
		var progress=$('div#progress');
		//progress.css("width")=;
		//alert($('#innerpeople').text());
		//alert($('#capacity').text());
		//alert( ($('#innerpeople').text())/($('#capacity').text())*100);
		var percent=($('#innerpeople').text())/($('#capacity').text())*100
		
		$(progress).width(percent+'%');
		//progress.css("width")=$('#inner')
		ProgramDetailPicture('<%=request.getContextPath()%>');
	}
	
	function remove_go(){
		const urlParams = new URL(location.href).searchParams;
		const name = urlParams.get('prg_code');
		location.href="remove.do?prg_code="+name;	
	}
	
	function modal_go(){
		var modal=document.querySelector("#modal-default");
		if(modal.style.display=="none"){
			
		modal.style.display="block";
		}else{
			modal.style.display="none";
		}
	}
	
	function remove_check(){
		var check=document.querySelector("input[name='adm_pwd_input']");
		if(check.value==document.querySelector("input[name='adm_pwd']").value){
			var ask=confirm('해당 강습프로그램을 삭제 하시겠습니까?');
			if(ask==true){
				remove_go();
			}
		}else{
			alert('비밀번호가 일치하지 않습니다.');
			return;
		}
		
	}
	
	
	
	</script>
