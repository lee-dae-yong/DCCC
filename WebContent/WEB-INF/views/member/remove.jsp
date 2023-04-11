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
						class="pl-2 pr-2">마이페이지</span> <span class="pl-2 pr-2"><i
						class="fa-solid fa-angle-right"></i></span> <span class="pl-2 pr-4">본인정보수정</span>
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
									<div class="aside-naming">마이페이지</div>
									<button type="button"
										class="btn btn-default btn-block btn-original text-left">
										<a href="<%=request.getContextPath()%>/member/list.do"><span
											style="color: black;">본인정보조회</span></a>
									</button>
									<button type="button"
										class="btn btn-default btn-block btn-original text-left">
										<a href="<%=request.getContextPath()%>/member/modify.do"><span
											style="color: black;">본인정보수정</span></a>
									</button>
								</div>
							</div>
						</div>
					</div>
					<!-- Main content real -->
					<div class="col-sm-9">
						<div class="row">
							<div class="col-sm-12">
								<div class="card-body">
									<div class="aside-naming">본인정보수정</div>
									<!-- Main body -->
									<div style="">

										<div class="card">
											<div class="card card-info">
												<div class="card-header">
													<h3 class="card-title">Horizontal Form</h3>
												</div>


												<form class="form-horizontal">
													<div class="card-body">
														<div class="form-group row">
															<label for="inputEmail3" class="col-sm-2 col-form-label">Email</label>
															<div class="col-sm-10">
																<input type="email" class="form-control"
																	id="inputEmail3" placeholder="Email">
															</div>
														</div>
														<div class="form-group row">
															<label for="inputPassword3"
																class="col-sm-2 col-form-label">Password</label>
															<div class="col-sm-10">
																<input type="password" class="form-control"
																	id="inputPassword3" placeholder="Password">
															</div>
														</div>
														<div class="form-group row">
															<div class="offset-sm-2 col-sm-10">
																<div class="form-check">
																	<input type="checkbox" class="form-check-input"
																		id="exampleCheck2"> <label
																		class="form-check-label" for="exampleCheck2">Remember
																		me</label>
																</div>
															</div>
														</div>
													</div>

													<div class="card-footer">
														<button type="submit" class="btn btn-info">Sign
															in</button>
														<button type="submit" class="btn btn-default float-right">Cancel</button>
													</div>

												</form>
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
	</div>
	<!-- main-content -->