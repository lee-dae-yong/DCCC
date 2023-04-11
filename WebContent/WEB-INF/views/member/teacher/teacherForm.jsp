<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
								<div class="card-body">
									<div class="aside-naming">수강생현황</div>
									<div style="">
										<!-- teacher code -->
										<div class="col-sm-12">
											<div class="row">
												<div class="col-sm-12">
													<div class="card-body" style=height:500px;">
														<div class="login-box m-50-a-50-a">

															<div class="card">
																<div
																	class="card-body login-card-body border-dccc-opacity">
																	<p class="login-box-msg login-header-font">강사 로그인</p>
																	<form action="login.do" method="post" name="teacherForm">

																		<div class="input-group mb-3">
																			<input type="text" class="form-control"
																				placeholder="Id" name="tch_id">
																			<div class="input-group-append">
																				<div class="input-group-text">
																					<span class="fa-solid fa-right-to-bracket"></span>
																				</div>
																			</div>
																		</div>
																		<div class="input-group mb-3">
																			<input type="password" class="form-control"
																				placeholder="Password" name="tch_pwd">
																			<div class="input-group-append">
																				<div class="input-group-text">
																					<span class="fas fa-lock"></span>
																				</div>
																			</div>
																		</div>
																		<div class="row">
																			<div class="col-8">
																				<div class="icheck-primary">
																					<input type="checkbox" id="remember"> <label
																						for="remember"> 로그인 상태 유지 </label>
																				</div>
																			</div>

																			<div class="col-4">
																				<button type="submit"
																					class="btn btn-dccc btn-original btn-block">Sign In</button>
																			</div>

																		</div>
																	</form>
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
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
