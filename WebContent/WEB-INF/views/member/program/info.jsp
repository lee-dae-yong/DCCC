<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        				<span class="pl-2 pr-4">온라인 수강접수 안내</span>
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
							<button type="button" class="btn btn-default btn-block text-left" onclick="prgList_go();">강습프로그램 조회</button>
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
        						온라인 수강접수 안내
        					</div>
        					<div class="p-4"style="border:1px solid black;">
        						<h4 style="font-weight: bolder;">2023년 접수 일정표</h4>
        						<table id="example1" class="table table-bordered table-striped dataTable dtr-inline" aria-describedby="example1_info" style="width:60%;">
									<thead>
										<tr style="background: #a9d2b4;">
											<th class="sorting sorting_asc" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width:14%;">
												구분
											</th>
											
											<th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Browser: activate to sort column ascending"style="width:60%;">
												신청 기간
											</th>
											
											<th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending"style="width:26%">
												비고
											</th>
										</tr>
									</thead>
									
									<tbody>
									
										<tr class="odd">
											<td class="dtr-control sorting_1" tabindex="0">1월</td>
											<td>10일~20일</td>
											<td>2월 수강</td>
										</tr>
										
										<tr class="even">
											<td class="dtr-control sorting_1" tabindex="0">2월</td>
											<td>10일~20일</td>
											<td>3월 수강</td>
										</tr>
										
										<tr class="odd">
											<td class="dtr-control sorting_1" tabindex="0">3월</td>
											<td>10일~20일</td>
											<td>4월 수강</td>
										</tr>
										
										<tr class="even">
											<td class="dtr-control sorting_1" tabindex="0">4월</td>
											<td>10일~20일</td>
											<td>5월 수강</td>
										</tr>
										
										<tr class="odd">
											<td class="sorting_1 dtr-control">5월</td>
											<td>10일~20일</td>
											<td>6월 수강</td>
										</tr>
										
										<tr class="even">
											<td class="sorting_1 dtr-control">6월</td>
											<td>10일~20일</td>
											<td>7월 수강</td>
										</tr>
										
										<tr class="odd">
											<td class="sorting_1 dtr-control">7월</td>
											<td>10일~20일</td>
											<td>8월 수강</td>
										</tr>
										
										<tr class="even">
											<td class="sorting_1 dtr-control">8월</td>
											<td>10일~20일</td>
											<td>9월 수강</td>
										</tr>
										
										<tr class="odd">
											<td class="sorting_1 dtr-control">9월</td>
											<td>10일~20일</td>
											<td>10월 수강</td>
										</tr>
										
										<tr class="even">
											<td class="sorting_1 dtr-control">10월</td>
											<td>10일~20일</td>
											<td>11월 수강</td>
										</tr>
										<tr class="even">
											<td class="sorting_1 dtr-control">11월</td>
											<td>10일~20일</td>
											<td>12월 수강</td>
										</tr>
										<tr class="even">
											<td class="sorting_1 dtr-control">12월</td>
											<td>10일~20일</td>
											<td style="letter-spacing: -1px; ">24년 1월 수강</td>
										</tr>
									</tbody>
								</table>
									<h4 class="mt-1" style="font-weight: bolder;">기존회원 접수 안내</h4>
								<ul>
									<li>반드시 재접수기간 내에만 접수 가능</li>
									<li>접수방법 : 인터넷 / 센터 내 무인기 / 안내데스크</li>
									<li>※ 재등록후 <span style="color:red; font-weight: bolder; font-size: 1.2rem;">신규접수일</span> 부터 환불신청시 10%공제후 환불가능합니다</li>
									<li>모바일 접수는 원활하지 않을 수 있습니다.</li>
									<li> <span style="color:red; font-weight: bolder; font-size: 1.2rem;">※ 반변경은 없으니 신규일에 새로 접수해주시기 바랍니다.</span></li>
								</ul>
								<table id="example1" class="table table-bordered table-striped dataTable dtr-inline mt-2" aria-describedby="example1_info" style="width:100%;">
									<thead>
										<tr style="background: #a9d2b4;">
											<th class="sorting sorting_asc" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width:14%;">
												구분
											</th>
											
											<th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Browser: activate to sort column ascending"style="width:43%;">
												인터넷 접수
											</th>
											
											<th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending"style="width:43%">
												신청받은 접수
											</th>
										</tr>
									</thead>
									
									<tbody>
									
										<tr class="odd">
											<td class="dtr-control sorting_1" tabindex="0" style="vertical-align: middle;text-align: center;">접수 시간</td>
											<td style="vertical-align: middle;">연중무휴 24시간</td>
											<td style="vertical-align: middle;">
												-평일:09:00~18:00
												<br/>
												<span style="color: red">-일요일 ,공휴일 접수 불가</span>
											</td>
										</tr>
										
										<tr class="even">
											<td class="dtr-control sorting_1" tabindex="0" style="vertical-align: middle;text-align: center;">수납 방법</td>
											<td style="vertical-align: middle; text-align: center;">온라인 결제</td>
											<td style="vertical-align: middle;text-align: center;">
												신용카드 수납
											</td>
										</tr>
										
										
									</tbody>
									
								</table>
									<h5 style="font-weight: bolder;">신규회원 접수 안내 : 인터넷, 방문접수, 키오스크 가능  </h5>
									<h6 class="mt-4" style="color:red; font-weight: bolder;">※ 전화접수 불가능, 키오스크는 오전10시 이후 가능 , 본인명의 ID로 수강신청(양도불가) ※</h6>
									<h5 class="mt-4" style="font-weight: bolder;" >신규접수날은 현장상황에 따라 전화 연결이 지연될 수 있으니 양해 부탁드립니다.</h5>
									
									<ul>
										<li>접수기간 : <span style="color:red; font-weight: bolder; font-size: 1.2rem;">신규접수일</span> 개시일 ~ 마감시까지(접수일정표 참고)
										</li>
										<li>할인대상자가 할인적용이 안될경우 온라인 접수 후 1시간내로 현장방문 후 결제요망</li>
										<li><span style="color:red; font-weight: bolder; font-size: 1.2rem;">※ 반변경은 없으니 신규일에 새로 접수해주시기 바랍니다.</span></li>
										<li><span style="color:red; font-weight: bolder; font-size: 1rem;">※ 신규접수일 방문접수 선착순 번호표는 북문 기준 먼저 발급 되오니 참고하여 주시기 바랍니다.</span></li>
										<li>※환불 : 당일 환불 시 100%환불 , 강좌 등록 다음날 환불시 위약금10%가 공제 되오니 신중한 접수 부탁드립니다.
										<br/><span style="color:red; font-weight: bolder; font-size: 1rem;">(소비자분쟁해결기준 공정거래위원회 고시 제2021-07호)</span></li>
									</ul>
									
									<table id="example1" class="table table-bordered table-striped dataTable dtr-inline mt-2" aria-describedby="example1_info" style="width:100%;">
									<thead>
										<tr style="background: #a9d2b4;">
											<th class="sorting sorting_asc" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width:14%;">
												구분
											</th>
											
											<th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Browser: activate to sort column ascending"style="width:43%;">
												인터넷 접수
											</th>
											
											<th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending"style="width:43%">
												신청받은 접수
											</th>
										</tr>
									</thead>
									
									<tbody>
									
										<tr class="odd">
											<td class="dtr-control sorting_1" tabindex="0" style="vertical-align: middle;text-align: center;">접수 대상</td>
											<td style="vertical-align: middle;">-일반 회원</td>
											<td style="vertical-align: middle;">
												-모든 할인 대상자
												<br/>
												<span>(경로우대, 장애인, 국가유공자, 기초생활보장수급자, 도봉구민 다둥이 3자녀)</span>
												<br/>
												-증빙서류 지참 후 방문
											</td>
										</tr>
										
										<tr class="even">
											<td class="dtr-control sorting_1" tabindex="0" style="vertical-align: middle;text-align: center;">접수 강좌</td>
											<td style="vertical-align: middle;">-센터 내에서 이루어지는 1개월 단위 강좌</td>
										</tr>
										
										<tr class="even">
											<td class="dtr-control sorting_1" tabindex="0" style="vertical-align: middle;text-align: center;">접수 시간</td>
											<td style="vertical-align: middle;">
												연중무휴 24시간
											</td>
											<td style="vertical-align: middle;">
												- 평 일 : 09:00 ~ 18:00
												<br>
												<span style="color: red;">- 일요일, 공휴일 접수 불가</span>
											</td>
										</tr>
										<tr class="even">
											<td class="dtr-control sorting_1" tabindex="0" style="vertical-align: middle; text-align: center;">수납 방법</td>
											<td style="vertical-align: middle; text-align: center;">
												온라인 결제
											</td>
											<td style="vertical-align: middle; text-align: center;">
												신용카드 결제
											</td>
										</tr>
										
										
									</tbody>
									
								</table>
								
								<h4 class="mb-4">인터넷 접수방법 안내</h4>
								
								<span>*프로그램 신청 > 수강신청 > 강좌선택 후 결제하기*</span>
								
								<table id="example1" class="table table-bordered table-striped dataTable dtr-inline mt-2" aria-describedby="example1_info" style="width:100%;">
									
									
									
										<tr class="odd">
											<th style="width:25%; text-align: center;vertical-align: middle;">
												STEP.1<br/>
												회원가입
											</th>
											<td>
												<ul>
													<li>
														DCCC 홈페이지에 회원가입을 합니다.
														<br/>
														(반드시 수강하고자 하는 분의 정보로 가입합니다.)
													</li>
													<li>
														이메일 인증 후 회원가입이 완료됩니다.
													</li>
												</ul>
											</td>
										</tr>
										
										<tr class="even">
											<th style="width:25%; text-align: center; vertical-align: middle;">
											STEP.2<br/>
											로그인 및 강좌 신청
												
											</th>
											<td>
												<ul>
													<li>
														DCCC홈페이지에 로그인 합니다.
														(반드시 수강하고자 하는 분의 아이디로 로그인 합니다.)
													</li>
													<li>
														메인페이지에서 상단 메뉴에 있는 온라인 수강접수를 클릭합니다.
													</li>
													<li>
														등록을 원하는 강좌를 클릭하여 상세 페이지 이동 후 신청합니다.
													</li>
												</ul>
											</td>
										</tr>
										
										<tr class="odd">
											<th style="width:25%; text-align: center;vertical-align: middle;">
												STEP.3<br/>
												결제
											</th>
											<td>
												<ul>
													<li></li>
													<li></li>
													<li></li>
												</ul>
											</td>
										</tr>
										<tr class="odd">
											<th style="width:25%; text-align: center;vertical-align: middle;">
											STEP.4<br/>
												접수확인
											</th>
											<td>
												<ul>
													<li>
													
													</li>
												</ul>
											</td>
										</tr>
								</table>
								<h4 style="color:red; font-weight: bolder; font-size: 1.2rem;">※ 반변경은 없으니 신규일에 새로 접수해주시기 바랍니다.</h4>
								
								
 									
									
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
 <script src="<%=request.getContextPath() %>/resources/js/program.js"></script>