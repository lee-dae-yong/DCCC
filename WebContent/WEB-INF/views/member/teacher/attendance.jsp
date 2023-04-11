<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Main content header -->
<div class="row">
	<div class="col-sm-12">
		<div class="main-content-header">
			<div class="wrapper wrap-m-w m-auto">
				<div class="text-right">
					<span class="pl-2 pr-2"><i class="fa-solid fa-house"></i></span> <span
						class="pl-2 pr-2"><i class="fa-solid fa-angle-right"></i></span> <span
						class="pl-2 pr-2">강사현황</span> <span class="pl-2 pr-2"><i
						class="fa-solid fa-angle-right"></i></span> <span class="pl-2 pr-4">수강생현황</span>
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
									<div class="aside-naming">강사현황</div>
									<button type="button" class="btn btn-default btn-block btn-original text-left">
                  						<a href="<%=request.getContextPath()%>/member/teacher/list.do"><span style="color:black;">지도강사소개</span></a></button>
                  					<button type="button" class="btn btn-default btn-block btn-original text-left">
                  						<a href="<%=request.getContextPath()%>/member/teacher/teacherForm.do"><span style="color:black;">수강생현황</span></a></button>
								</div>
							</div>
						</div>
					</div>
					<!-- Main content real -->
					<div class="col-sm-9">
						<div class="row">
							<div class="col-sm-12">
								<div class="card-body" style="height:700px;">
									<div class="aside-naming">수강생현황</div>
									<div style="">
										<!-- attendance -->
										<form id="jobForm">
										<div class="select-bar" style="display:flex;margin-bottom:5px;" >
											<div class="col-sm-4" style="padding-left:0;padding-right:0;">
											<select class="form-control" id="searchType" name="prg_code"  style="font-size:13px; ">
												<option value="" >프로그램</option>
					  							<option value="PRG0001" ${attendanceView.prg_code eq 'PRG0001' ? 'selected':''}>오전 수영</option>
					  							<option value="PRG0002" ${attendanceView.prg_code eq 'PRG0002' ? 'selected':''}>오후 수영</option>
					  							<option value="PRG0003" ${attendanceView.prg_code eq 'PRG0003' ? 'selected':''}>오전 풋살</option>
					  							<option value="PRG0004" ${attendanceView.prg_code eq 'PRG0004' ? 'selected':''}>오후 풋살</option>
					  							<option value="PRG0005" ${attendanceView.prg_code eq 'PRG0005' ? 'selected':''}>오전 배드민턴</option>
					  							<option value="PRG0006" ${attendanceView.prg_code eq 'PRG0006' ? 'selected':''}>오후 배드민턴</option>
					  							<option value="PRG0007" ${attendanceView.prg_code eq 'PRG0007' ? 'selected':''}>오전 줄넘기</option>
					  							<option value="PRG0008" ${attendanceView.prg_code eq 'PRG0008' ? 'selected':''}>오후 줄넘기</option>
					  							<option value="PRG0009" ${attendanceView.prg_code eq 'PRG0009' ? 'selected':''}>오전 농구</option>
					  							<option value="PRG00010" ${attendanceView.prg_code eq 'PRG00010' ? 'selected':''}>오후 농구</option>
											</select>
										</div>
											<div class="col-sm-1" style="margin-left:auto;padding-right: 0;">
											<button type="button" id="selectbtn" class="btn btn-default btn-original btn-original" onclick="alist_go(1);">조 회</button>
										</div>											
									</div>
									</form>
									<div class="list-body" style="text-align:center;">
                      <div class="row">
                        <div class="col-sm-12">
									<table class="table table-bordered text-center" >
										<tr style="font-size:0.85em;margin-left:5px;margin-right:5px;">
											<th style="width:10%;display:none">코드</th>
											<th style="width:25%">프로그램명</th>
											<th style="width:20%">수강생 이름</th>
											<th style="width:20%">나이</th>
											<th style="width:25%">전화번호</th>
										</tr>
										<c:forEach items="${attendanceViewList }" var="attendanceView">
										<tr>
                    							<td style="display:none">${attendanceView.prg_code }</td>
                    							<td>${attendanceView.prg_name }</td>
                    							<td>${attendanceView.mem_name }</td>
                    							<td>${attendanceView.mem_birth }</td>
                    							<td>${attendanceView.mem_phone }</td>
                    							</tr>
               							</c:forEach>   
									</table>
											</div>
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


	</div>
	<!-- main-content -->
</div>

<script>

function alist_go(page,url){
	
	if(!url) url="attendance.do";
	
	$('form#jobForm').attr({
		action:url,
		method:'get'
	}).submit();
}
</script>