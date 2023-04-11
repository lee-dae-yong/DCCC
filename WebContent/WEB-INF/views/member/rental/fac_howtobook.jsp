<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- Main content -->
    <div class="">
    <div class="content">
      <div class="container-fluid">
      <!-- Main content header -->
        <div class="row">
        	<div class="col-sm-12">
        		<div class="main-content-header">
        			<div class="text-right wrapper wrap-m-w m-auto">
        				<span class="pl-2 pr-2"><i class="fa-solid fa-house"></i></span>
        				<span class="pl-2 pr-2"><i class="fa-solid fa-angle-right"></i></span>
        				<span class="pl-2 pr-2">시설대관안내</span>
        				<span class="pl-2 pr-2"><i class="fa-solid fa-angle-right"></i></span>
        				<span class="pl-2 pr-4">대관접수안내</span>
        			</div>
        		</div>
        	</div>
        </div>
        
        <div class="row wrapper wrap-m-w m-auto">
        	<!-- Main content aside bar -->
        	<div class="col-sm-3">
        		<div class="row">
        			<div class="col-sm-12">
        				<div class="card-body aside_menu">
	        				<div class="aside-naming">
	        					시설대관안내
	        				</div>
							<button type="button" class="btn btn-default btn-block text-left btn-original btn-dccc" onclick="location.href='main.do'">대관접수안내</button>
							<button type="button" class="btn btn-default btn-block text-left btn-original " onclick="location.href='search.do'">시설대관현황</button>
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
        						대관접수안내
        					</div>
        					<div style="height:2000px;"><br/>
        					
        					
						
  
 
        						<div class="card-header">
									<button type="submit" class="btn btn-block btc-dccc" style="width:150px; position:absolute; background:#a9d2b4; top:0; right:0;" onclick="window.location='<%=request.getContextPath()%>/resources/submitFile/시설대관신청서_DCCC.hwp'"><i class="fa-solid fa-download"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;대관 신청서</button>
									<h3 class="card-title">
										<i class="fa-regular fa-square-full" style="display:inline-block; position:relative;">&nbsp;&nbsp;접수안내 및 환불규정</i>
									</h3>
									
								</div>
								
 								<div class="col-md-4">
									<div>
										<div class="card-body" style="width:1200px;">
											<ul style="list-style-type:none;">
												<li><i class="fa-solid fa-play" style="color:#a9d2b4;"></i>&nbsp;&nbsp;&nbsp;&nbsp;접수기간&nbsp;&nbsp;:&nbsp;&nbsp;수시 대관 접수</li><br/>
												<li><i class="fa-solid fa-play" style="color:#a9d2b4;"></i>&nbsp;&nbsp;&nbsp;&nbsp;접수안내&nbsp;&nbsp;:&nbsp;&nbsp;온라인 예약신청 및 현장접수
													<ul style="list-style-type:none;">
														<li style="color:red;"><i class="fa-solid fa-minus" style="color:black;"></i>&nbsp;&nbsp;&nbsp;&nbsp;대관일이 6개월 이후인 경우 오른쪽 상단의 대관 신청서를 인쇄후 작성하여 현장접수해 주시기 바랍니다.</li>
													</ul>
												</li>
												<br/>
												<li><i class="fa-solid fa-play" style="color:#a9d2b4;"></i>&nbsp;&nbsp;&nbsp;&nbsp;환불규정&nbsp;&nbsp;:
													<ul style="list-style-type: none;">
														<li><i class="fa-solid fa-minus"></i>&nbsp;&nbsp;&nbsp;&nbsp;환불을 원하실 경우 환불기준에 따라 금액에 차이가 있으니 반드시 확인하시어 차질이 없으시길 바랍니다.</li>
														<li style="color:red;"><i class="fa-solid fa-minus" style="color:black;"></i>&nbsp;&nbsp;&nbsp;&nbsp;예약당일을 포함하여 3일 이내에 결제(무통장입금, 카드결제)하셔야 센터 대관이 가능합니다.</li>
														<li><i class="fa-solid fa-minus"></i>&nbsp;&nbsp;&nbsp;&nbsp;예약 취소시는 아래와 같은 취소/환불규정을 적용합니다.</li>
													</ul>
												</li>
											</ul>
										</div>
									</div>
								</div>
        					
        				<div class="card-body">
							<table class="table table-bordered">
								<thead>
									<tr>
										<th colspan="2" style="background:#a9d2b4; text-align:center;">취소시기</th>
										<th style="background:#a9d2b4; text-align:center;">환불금액</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td rowspan="6" style="text-align:center;"><br/><br/><br/><br/><br/>이용자가 신청을 취소하는 경우</td>
										<td style="text-align:center;">~&nbsp;이용개시 5일전</td>
										<td>
											<div style="text-align:center;">대관료 전액환불</div>
										</td>
									</tr>
									<tr>
										<td style="text-align:center;">이용개시 4일전</td>
										<td rowspan="2" style="text-align:center;"><br/>대관료의 80% 환불</td>
									</tr>
									<tr>
										<td style="text-align:center;">이용개시 3일전</td>
									</tr>
									<tr>
										<td style="text-align:center;">이용개시 2일전</td>
										<td rowspan="2" style="text-align:center;"><br/>대관료의 70% 환불</td>
									</tr>
									<tr>
										<td style="text-align:center;">이용개시 1일전</td>

									</tr>
									<tr>
										<td style="text-align:center;">당일 취소</td>
										<td>
											<div style="text-align:center;">대관료의 50% 환불</div>
										</td>
									</tr>
									<tr>
										<td colspan="2" style="text-align:center;">천재지변 등으로 이용이 불가능한 경우</td>
										<td>
											<div style="text-align:center;">대관료 전액환불</div>
										</td>
									</tr>
									<tr>
										<td colspan="2" style="text-align:center;">센터의 특별한 사정으로 취소된 경우</td>
										<td>
											<div style="text-align:center;">대관료 전액환불</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
        					
        				<br/>
        				<br/>
        			
        				<div class="col-md-12">
							<div>
								<div class="card-header">
									<h3 class="card-title">
										<i class="fa-regular fa-square-full">&nbsp;&nbsp;대관 제한 사항</i>
									</h3>
								</div>
								<div class="card-body">
									<ul style="list-style-type:none;">
										<li><i class="fa-solid fa-play" style="color:#a9d2b4;"></i>&nbsp;&nbsp;&nbsp;&nbsp;아래 사항에 해당하는 경우에는 대관하지 않으면 기승인된 경우에도 이를 변경 또는 취소할 수 있습니다.</li><br/>
										<li><i class="fa-solid fa-play" style="color:#a9d2b4;"></i>&nbsp;&nbsp;&nbsp;&nbsp;하기 사항에 해당하는 경우 사용자에게 손해가 있을지라도 본 센터는 그 배상에 대한 책임을 지지 않습니다.
											<ul style="list-style-type: none;">
												<li><i class="fa-solid fa-minus"></i>&nbsp;&nbsp;&nbsp;&nbsp;공안 질서를 해할 우려가 있을 때</li>
												<li><i class="fa-solid fa-minus"></i>&nbsp;&nbsp;&nbsp;&nbsp;센서 시설 또는 설비를 훼손할 우려가 있을 때</li>
												<li><i class="fa-solid fa-minus"></i>&nbsp;&nbsp;&nbsp;&nbsp;정치단체집회 및 정치적 목적과 관련된 집회 또는 행사</li>
												<li><i class="fa-solid fa-minus"></i>&nbsp;&nbsp;&nbsp;&nbsp;본 규칙이나 지시를 위반하거나 승인된 사용 목적을 위반하였을 때</li>
											</ul>
										</li>
									</ul>
								</div>
							</div>
						</div>
        					
        				<br/>
        				<br/>
        					
        				<div class="card-header">
							<h3 class="card-title">
								<i class="fa-regular fa-square-full">&nbsp;&nbsp;시설별 주의사항</i>
							</h3>
						</div>
        				<div class="card-body">
							<table class="table table-bordered" >
								<thead>
									<tr>
										<th style="width:200px; text-align:center; background:#a9d2b4;">시설</th>
										<th style="text-align:center; background:#a9d2b4;">주의사항</th>
										<th style="width: 200px; text-align:center; background:#a9d2b4;">비고</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th style="width:200px; text-align:center; background:#a9d2b4;">수영장</th>
											<td>수경, 수영모, 수영복 필수</td>
											<td rowspan="10" style="text-align:start;"><br/><br/><br/><br/><br/><br/><br/>- 음식물 반입 금지<br/> - 실내 절대 금연<br/>- 이용 후에는 쓰레기수거 및 현장정리 <br/> - 체육시설물과 부대시설을 파손하였을 때에는 즉시 원상복구하거나 그 손해를 배상</td>
										</tr>
									<tr>
										<th style="width:200px; text-align:center; background:#a9d2b4;">풋살장</th>
											<td>풋살화, 축구화 착용 필수</td>
									</tr>
									<tr>
										<th style="width:200px; text-align:center; background:#a9d2b4;">탁구장</th>
											<td>탁구 전용화 착용 필수</td>
									</tr>
									<tr>
										<th style="width:200px; text-align:center; background:#a9d2b4;">배드민턴장</th>
											<td>배드민턴화 또는 전용 운동화 착용 필수</td>
									</tr>
									<tr>
										<th style="width:200px; text-align:center; background:#a9d2b4;">농구장</th>
											<td>날카로운 금속이 달린 용품의 사용 금지</td>
									</tr>
									<tr>
										<th style="width:200px; text-align:center; background:#a9d2b4;">시청각실</th>
											<td>휴대폰 통화는 밖에서 하고, 항상 진동모드 요망</td>
									</tr>
									<tr>
										<th style="width:200px; text-align:center; background:#a9d2b4;"><br/>피트니스룸</th>
											<td>- 운동화, 운동복 착용 필수<br/> - 운동 기구 사용 시 부주의로 타인에게 상해를 입히지 않도록 주의</td>
									</tr>
									<tr>
										<th style="width:200px; text-align:center; background:#a9d2b4;">비즈니스 회의룸</th>
											<td>사용 후 뒷정리 필수</td>
									</tr>
									<tr>
										<th style="width:200px; text-align:center; background:#a9d2b4;">테니스장</th>
											<td>경기장 내 인라인스케이트 및 자전거 출입 금지</td>
									</tr>
									<tr>
										<th style="width:200px; text-align:center; background:#a9d2b4;">족구장</th>
											<td>조명 소등, 열쇠 반납</td>
										</tr>
									</tbody>
								</table>
							</div>
        					
        						<br/>
        						<br/>
        					
        					
        					
        					
        					
        					
        					
        					
        					
        					
        					
        					
        						
								
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
	<!-- main-content -->
