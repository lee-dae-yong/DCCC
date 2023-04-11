<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
      <!-- Main content header -->
        <div class="row">
        	<div class="col-sm-12">
        		<div class="main-content-header">
        			<div class="wrapper wrap-m-w m-auto">
        			<div class="text-right">
        				<span class="pl-2 pr-2"><i class="fa-solid fa-house"></i></span>
        				<span class="pl-2 pr-2"><i class="fa-solid fa-angle-right"></i></span>
        				<span class="pl-2 pr-2">온라인 수강접수</span>
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
	        					온라인 수강신청
	        				</div>
							<button type="button" class="btn btn-default btn-block text-left" onclick="prg_info_go();">온라인 수강접수 안내</button>
							<button type="button" class="btn btn-default btn-block text-left"onclick="prgList_go();">강습프로그램 조회</button>
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
									<div class="mt-4">
									
									<c:if test="${program.cnt ne program.prg_capacity }">
									<div class="btn btn-primary btn-lg btn-flat"  style="background:#a9d2b4; border: 1px;" onclick="app_go();">
									<i class="fa-solid fa-plus"></i>
									수강신청 하기
									</div>
									</c:if>
									
									<c:if test="${program.cnt eq program.prg_capacity }">
									<div class="btn btn-primary btn-lg btn-flat"  style="background:gray; border: 1px;">
									<i class="fa-solid fa-x"></i>
									정원 초과
									</div>
									</c:if>
									
									<div class="btn btn-default btn-lg btn-flat" onclick="prgList_go();">
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
	</div>
	
	<!-- main-content -->
	<script>
	function app_go(){
		
		var app=confirm("해당 프로그램을 신청 하시겠습니까?");
		if(app==true){
			const urlParams = new URL(location.href).searchParams;
			const name = urlParams.get('prg_code');
			location.href="appli.do?prg_code="+name;			
		}
	
	}
	

	
	
	
	
	
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
	
	
	</script>
<script src="<%=request.getContextPath() %>/resources/js/program.js"></script>