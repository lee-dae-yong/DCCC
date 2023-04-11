<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/WEB-INF/views/include/header.jsp" %>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/common.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/wezon.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/style_wezon.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/basic.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/index.css">

<style>

.zhong{

text-align:center;

}

</style>

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
        				<span class="pl-2 pr-4">시설대관현황</span>
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
	        					시설대관안내
	        				</div>
							<button type="button" class="btn btn-default btn-block text-left btn-original " onclick="location.href='fac_info.do'">대관시설정보</button>
							<button type="button" class="btn btn-default btn-block text-left btn-original " onclick="location.href='fac_howtobook.do'">대관접수안내</button>
							<button type="button" class="btn btn-default btn-block text-left btn-original btn-dccc" onclick="location.href='fac_rentalstatus.do'">시설대관현황</button>
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
        						시설대관현황
        					</div>
        					<div style="height:1000px;" ><br/>
        					
        					
        					
        						<div class="space-title-wrap" style="white-space:nowrap">
    								<h3><i class="fa-regular fa-square-full" style="display:inline-block; position:relative;">&nbsp;&nbsp;대관현황</i></h3><br/>
  									   <p>달력에 대관일을 선택하시면 대관현황을 보실 수 있습니다.</p>
    								<div class="space-title-tab">
      									<div class="tab-item" style="display:inline-block;">
											<button type="button" class="btn btn-block btn-default" style="display:inline-block; width:150px; border-radius:20px; margin-right:10px;" onclick="location.href='fac_rentalstatus.do'">대관현황</button>
        								</div>
      									<div class="tab-item" style="display:inline-block;">
											<button type="button" class="btn btn-block btn-default" style="display:inline-block; width:150px; border-radius:20px; margin-right:10px;" onclick="location.href='fac_rentalbooking.do'">대관신청</button>
        								</div>
       									
   							   		</div>
								</div>
								
								<div class="inline-state-list" style="white-space:nowrap">
        							<span class="state-item">
           								<span class="color-box approval-bg"></span>
           								<span class="txt">대관가능</span>
       								</span>
        							<span class="state-item">
            							<span class="color-box cancel-bg"></span>
            							<span class="txt">대관불가</span>
        							</span>
    							</div>
        						<br/>
 
 								<div style="display:inline-block; position:relative; white-space:nowrap" >
									<section class="space-reserve-section">
        								<div class="calendar-area">
            								<div id="calendar" class="space-calendar schedule-calendar fc fc-media-screen fc-direction-ltr fc-theme-bootstrap" style="height: 620px; position:relative;">
            									<div class="fc-header-toolbar fc-toolbar fc-toolbar-ltr">
            										<div class="fc-toolbar-chunk">
            											<div style="display:inline-block;"><h2 class="fc-toolbar-title" id="fc-dom-1">2023년 3월</h2></div>
            											<div class="fc-toolbar-chunk" style="display:inline-block; position:absolute; right:0;">
            											
            											
            											<div class="btn-group">
            												<button type="button" aria-pressed="false" class="fc-prev-button btn btn-primary" onclick="location.href='?year=<%%>'">
            													<span class="fa fa-chevron-left"></span>
            												</button>
            												<button type="button" aria-pressed="false" class="fc-next-button btn btn-primary" onclick="nextMonth()">
            													<span class="fa fa-chevron-right"></span>
            												</button>
            											</div>
            											
            											
            											
            											<button type="button" title="오늘" disabled="" aria-pressed="false" class="fc-today-button btn btn-primary btn-default">오늘</button>
            										</div>
            										</div>
            										<div class="fc-toolbar-chunk"></div>
            									</div>
            									<div aria-labelledby="fc-dom-1" class="fc-view-harness fc-view-harness-active" style="white-space:nowrap">
            										<div class="fc-daygrid fc-dayGridMonth-view fc-view" >
            											<table role="grid" class="fc-scrollgrid table-bordered fc-scrollgrid-liquid" >
            												<thead role="rowgroup">
            													<tr role="presentation" class="fc-scrollgrid-section fc-scrollgrid-section-header">
            														<th role="presentation">
            															<div class="fc-scroller-harness">
            																<div class="fc-scroller" style="overflow: hidden;">
            																	<table role="presentation" class="fc-col-header " style="width: 548px;">
            																		<colgroup></colgroup>
            																		<thead role="presentation">
            																		<tr role="row">
            																			<th role="columnheader" class="fc-col-header-cell fc-day fc-day-sun zhong" >
            																				<div class="fc-scrollgrid-sync-inner">
            																					<a aria-label="일요일" class="fc-col-header-cell-cushion " style="color:red;font-weight:bolder;">일</a>
            																				</div>
            																			</th>
            																			<th role="columnheader" class="fc-col-header-cell fc-day fc-day-mon zhong">
            																				<div class="fc-scrollgrid-sync-inner">
            																					<a aria-label="월요일" class="fc-col-header-cell-cushion "style="color:black;font-weight:bolder;">월</a>
            																				</div>
            																			</th>
            																			<th role="columnheader" class="fc-col-header-cell fc-day fc-day-tue zhong">
            																				<div class="fc-scrollgrid-sync-inner">
            																					<a aria-label="화요일" class="fc-col-header-cell-cushion "style="color:black;font-weight:bolder;">화</a>
            																				</div>
            																			</th>
            																			<th role="columnheader" class="fc-col-header-cell fc-day fc-day-wed zhong" >
            																				<div class="fc-scrollgrid-sync-inner">
            																					<a aria-label="수요일" class="fc-col-header-cell-cushion "style="color:black;font-weight:bolder;">수</a>
            																				</div>
            																			</th>
            																			<th role="columnheader" class="fc-col-header-cell fc-day fc-day-thu zhong" >
            																				<div class="fc-scrollgrid-sync-inner">
            																					<a aria-label="목요일" class="fc-col-header-cell-cushion "style="color:black;font-weight:bolder;">목</a>
            																				</div>
            																			</th>
            																			<th role="columnheader" class="fc-col-header-cell fc-day fc-day-fri zhong" >
            																				<div class="fc-scrollgrid-sync-inner">
            																					<a aria-label="금요일" class="fc-col-header-cell-cushion "style="color:black;font-weight:bolder;">금</a>
            																				</div>
            																			</th>
            																			<th role="columnheader" class="fc-col-header-cell fc-day fc-day-sat zhong">
            																				<div class="fc-scrollgrid-sync-inner">
            																					<a aria-label="토요일" class="fc-col-header-cell-cushion "style="font-weight:bolder;">토</a>
            																				</div>
            																			</th>
            																		</tr>
            																	</thead>
            																</table>
            															</div>
            														</div>
            													</th>
            												</tr>
            											</thead>
            											<tbody role="rowgroup">
            												<tr role="presentation" class="fc-scrollgrid-section fc-scrollgrid-section-body  fc-scrollgrid-section-liquid">
            													<td role="presentation">
            														<div class="fc-scroller-harness fc-scroller-harness-liquid">
            															<div class="fc-scroller fc-scroller-liquid-absolute" style="overflow: hidden auto;">
            																<div class="fc-daygrid-body fc-daygrid-body-unbalanced " style="width: 548px;">
            																	<table role="presentation" class="fc-scrollgrid-sync-table" style="width: 548px; height: 523px;">
            																		<colgroup></colgroup>
            																		<tbody role="presentation">
            																			<tr role="row">
            																				<td role="gridcell" class="fc-daygrid-day fc-day fc-day-sun fc-day-disabled" aria-labelledby="fc-dom-2">
            																					<div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
            																						<div class="fc-daygrid-day-events">
            																							<div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
            																						</div>
            																						<div class="fc-daygrid-day-bg"></div>
            																					</div>
            																				</td>
            																				<td role="gridcell" class="fc-daygrid-day fc-day fc-day-mon fc-day-disabled" aria-labelledby="fc-dom-4">
            																					<div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
            																						<div class="fc-daygrid-day-events">
            																							<div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
            																						</div>
            																						<div class="fc-daygrid-day-bg"></div>
            																					</div>
            																				</td>
            																				<td role="gridcell" class="fc-daygrid-day fc-day fc-day-tue fc-day-disabled" aria-labelledby="fc-dom-6">
            																					<div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
            																						<div class="fc-daygrid-day-events">
            																							<div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
            																						</div>
            																						<div class="fc-daygrid-day-bg"></div>
            																					</div>
            																				</td>
            																				<td role="gridcell" class="fc-daygrid-day fc-day fc-day-wed fc-day-past" data-date="2023-03-01" aria-labelledby="fc-dom-8">
            																					<div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
            																						<div class="fc-daygrid-day-top">
            																							<a id="fc-dom-8" class="fc-daygrid-day-number" aria-label="2023년 3월 1일">1일</a>
            																						</div>
            																						<div class="fc-daygrid-day-events">
            																							<div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
            																						</div>
            																						<div class="fc-daygrid-day-bg"></div>
            																					</div>
            																				</td>
            																				<td role="gridcell" class="fc-daygrid-day fc-day fc-day-thu fc-day-past" data-date="2023-03-02" aria-labelledby="fc-dom-10">
            																					<div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
            																						<div class="fc-daygrid-day-top">
            																							<a id="fc-dom-10" class="fc-daygrid-day-number" aria-label="2023년 3월 2일">2일</a>
            																						</div>
            																					<div class="fc-daygrid-day-events">
            																						<div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
            																					</div>
            																					<div class="fc-daygrid-day-bg"></div>
            																					</div>
            																				</td>
            																				<td role="gridcell" class="fc-daygrid-day fc-day fc-day-fri fc-day-past" data-date="2023-03-03" aria-labelledby="fc-dom-12">
            																					<div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
            																						<div class="fc-daygrid-day-top">
            																							<a id="fc-dom-12" class="fc-daygrid-day-number" aria-label="2023년 3월 3일">3일</a>
            																						</div>
            																					<div class="fc-daygrid-day-events">
            																						<div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
            																					</div>
            																					<div class="fc-daygrid-day-bg"></div>
            																					</div>
            																				</td>
            																				<td role="gridcell" class="fc-daygrid-day fc-day fc-day-sat fc-day-past" data-date="2023-03-04" aria-labelledby="fc-dom-14">
            																					<div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
            																						<div class="fc-daygrid-day-top">
            																							<a id="fc-dom-14" class="fc-daygrid-day-number" aria-label="2023년 3월 4일">4일</a>
            																						</div>
            																						<div class="fc-daygrid-day-events">
            																							<div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
            																						</div>
            																						<div class="fc-daygrid-day-bg"></div>
            																					</div>
            																				</td>
            																			</tr>
            																			<tr role="row">
            																				<td role="gridcell" class="fc-daygrid-day fc-day fc-day-sun fc-day-past" data-date="2023-03-05" aria-labelledby="fc-dom-16">
            																					<div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
            																						<div class="fc-daygrid-day-top">
            																							<a id="fc-dom-16" class="fc-daygrid-day-number" aria-label="2023년 3월 5일">5일</a>
            																						</div>
            																						<div class="fc-daygrid-day-events">
            																							<div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
            																						</div>
            																						<div class="fc-daygrid-day-bg"></div>
            																					</div>
            																				</td>
            																			<td role="gridcell" class="fc-daygrid-day fc-day fc-day-mon fc-day-past" data-date="2023-03-06" aria-labelledby="fc-dom-18">
            																				<div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
            																					<div class="fc-daygrid-day-top">
            																						<a id="fc-dom-18" class="fc-daygrid-day-number" aria-label="2023년 3월 6일">6일</a>
            																					</div>
            																					<div class="fc-daygrid-day-events">
            																						<div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
            																					</div>
            																					<div class="fc-daygrid-day-bg"></div>
            																				</div>
            																			</td>
            																			<td role="gridcell" class="fc-daygrid-day fc-day fc-day-tue fc-day-past" data-date="2023-03-07" aria-labelledby="fc-dom-20">
            																				<div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
            																					<div class="fc-daygrid-day-top">
            																						<a id="fc-dom-20" class="fc-daygrid-day-number" aria-label="2023년 3월 7일">7일</a>
            																					</div>
            																					<div class="fc-daygrid-day-events">
            																						<div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
            																					</div>
            																					<div class="fc-daygrid-day-bg"></div>
            																				</div>
            																			</td>
            																			<td role="gridcell" class="fc-daygrid-day fc-day fc-day-wed fc-day-past" data-date="2023-03-08" aria-labelledby="fc-dom-22">
            																			<div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
            																				<div class="fc-daygrid-day-top">
            																					<a id="fc-dom-22" class="fc-daygrid-day-number" aria-label="2023년 3월 8일">8일</a>
            																				</div>
            																				<div class="fc-daygrid-day-events">
            																					<div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
            																				</div>
            																				<div class="fc-daygrid-day-bg"></div>
            																			</div>
            																		</td>
            																		<td role="gridcell" class="fc-daygrid-day fc-day fc-day-thu fc-day-past" data-date="2023-03-09" aria-labelledby="fc-dom-24">
            																			<div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
            																				<div class="fc-daygrid-day-top">
            																					<a id="fc-dom-24" class="fc-daygrid-day-number" aria-label="2023년 3월 9일">9일</a>
            																				</div>
            																				<div class="fc-daygrid-day-events">
            																					<div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
            																				</div>
            																				<div class="fc-daygrid-day-bg"></div>
            																			</div>
            																		</td>
            																		<td role="gridcell" class="fc-daygrid-day fc-day fc-day-fri fc-day-past" data-date="2023-03-10" aria-labelledby="fc-dom-26">
            																			<div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
            																				<div class="fc-daygrid-day-top">
            																					<a id="fc-dom-26" class="fc-daygrid-day-number" aria-label="2023년 3월 10일">10일</a>
            																				</div>
            																				<div class="fc-daygrid-day-events">
            																					<div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
            																				</div>
            																				<div class="fc-daygrid-day-bg"></div>
            																			</div>
            																		</td>
            																		<td role="gridcell" class="fc-daygrid-day fc-day fc-day-sat fc-day-past" data-date="2023-03-11" aria-labelledby="fc-dom-28">
            																			<div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
            																				<div class="fc-daygrid-day-top">
            																					<a id="fc-dom-28" class="fc-daygrid-day-number" aria-label="2023년 3월 11일">11일</a>
            																				</div>
            																				<div class="fc-daygrid-day-events">
            																					<div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
            																				</div>
            																				<div class="fc-daygrid-day-bg"></div>
            																			</div>
            																		</td>
            																	</tr>
            																	<tr role="row">
            																		<td role="gridcell" class="fc-daygrid-day fc-day fc-day-sun fc-day-past" data-date="2023-03-12" aria-labelledby="fc-dom-30">
            																			<div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
            																				<div class="fc-daygrid-day-top">
            																					<a id="fc-dom-30" class="fc-daygrid-day-number" aria-label="2023년 3월 12일">12일</a>
            																				</div>
            																				<div class="fc-daygrid-day-events">
            																					<div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
            																				</div>
            																				<div class="fc-daygrid-day-bg"></div>
            																			</div>
            																		</td>
            																		<td role="gridcell" class="fc-daygrid-day fc-day fc-day-mon fc-day-past" data-date="2023-03-13" aria-labelledby="fc-dom-32">
            																			<div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
            																				<div class="fc-daygrid-day-top">
            																					<a id="fc-dom-32" class="fc-daygrid-day-number" aria-label="2023년 3월 13일">13일</a>
            																				</div>
            																				<div class="fc-daygrid-day-events">
            																					<div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
            																				</div>
            																				<div class="fc-daygrid-day-bg"></div>
            																			</div>
            																		</td>
            																		<td role="gridcell" class="fc-daygrid-day fc-day fc-day-tue fc-day-past" data-date="2023-03-14" aria-labelledby="fc-dom-34">
            																			<div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
            																				<div class="fc-daygrid-day-top">
            																					<a id="fc-dom-34" class="fc-daygrid-day-number" aria-label="2023년 3월 14일">14일</a>
            																				</div>
            																				<div class="fc-daygrid-day-events">
            																					<div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
            																				</div>
            																				<div class="fc-daygrid-day-bg"></div>
            																			</div>
            																		</td>
            																		<td role="gridcell" class="fc-daygrid-day fc-day fc-day-wed fc-day-past" data-date="2023-03-15" aria-labelledby="fc-dom-36">
            																			<div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
            																				<div class="fc-daygrid-day-top">
            																					<a id="fc-dom-36" class="fc-daygrid-day-number" aria-label="2023년 3월 15일">15일</a>
            																				</div>
            																				<div class="fc-daygrid-day-events">
            																					<div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
            																				</div>
            																				<div class="fc-daygrid-day-bg"></div>
            																			</div>
            																		</td>
            																		<td role="gridcell" class="fc-daygrid-day fc-day fc-day-thu fc-day-past" data-date="2023-03-16" aria-labelledby="fc-dom-38">
            																			<div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
            																				<div class="fc-daygrid-day-top">
            																					<a id="fc-dom-38" class="fc-daygrid-day-number" aria-label="2023년 3월 16일">16일</a>
            																				</div>
            																				<div class="fc-daygrid-day-events">
            																					<div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
            																				</div>
            																				<div class="fc-daygrid-day-bg"></div>
            																			</div>
            																		</td>
            																		<td role="gridcell" class="fc-daygrid-day fc-day fc-day-fri fc-day-past" data-date="2023-03-17" aria-labelledby="fc-dom-40">
            																			<div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
            																				<div class="fc-daygrid-day-top">
            																					<a id="fc-dom-40" class="fc-daygrid-day-number" aria-label="2023년 3월 17일">17일</a>
            																				</div>
            																				<div class="fc-daygrid-day-events">
            																					<div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
            																				</div>
            																				<div class="fc-daygrid-day-bg"></div>
            																			</div>
            																		</td>
            																		<td role="gridcell" class="fc-daygrid-day fc-day fc-day-sat fc-day-today  select-day" data-date="2023-03-18" aria-labelledby="fc-dom-42">
            																			<div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
            																				<div class="fc-daygrid-day-top">
            																					<a id="fc-dom-42" class="fc-daygrid-day-number" aria-label="2023년 3월 18일">18일</a>
            																				</div>
            																				<div class="fc-daygrid-day-events">
            																					<div class="fc-daygrid-event-harness" style="margin-top: 0px;">
            																						<a class="fc-daygrid-event fc-daygrid-block-event fc-h-event fc-event fc-event-start fc-event-end fc-event-today fc-btn fc-state-off click_date" href="javascript:void(0)">
            																							<div class="fc-event-main">
            																								<div class="fc-event-main-frame">
            																									<div class="fc-event-title-container">
            																										<div class="fc-event-title fc-sticky">신청불가</div>
            																									</div>
            																								</div>
            																							</div>
            																						</a>
            																					</div>
            																					<div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
            																				</div>
            																				<div class="fc-daygrid-day-bg"></div>
            																			</div>
            																		</td>
            																	</tr>
            																	<tr role="row">
            																	<td role="gridcell" class="fc-daygrid-day fc-day fc-day-mon fc-day-future" data-date="2023-03-19" aria-labelledby="fc-dom-44">
            																			<div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
            																				<div class="fc-daygrid-day-top">
            																					<a id="fc-dom-44" class="fc-daygrid-day-number" aria-label="2023년 3월 19일">19일</a>
            																				</div>
            																			<div class="fc-daygrid-day-events">
            																				<div class="fc-daygrid-event-harness" style="margin-top: 0px;">
            																					<a class="fc-daygrid-event fc-daygrid-block-event fc-h-event fc-event fc-event-start fc-event-end fc-event-future fc-btn fc-state-off " href="javascript:void(0)">
            																						<div class="fc-event-main">
            																							<div class="fc-event-main-frame">
            																								<div class="fc-event-title-container">
            																									<div class="fc-event-title fc-sticky">신청불가</div>
            																								</div>
            																							</div>
            																						</div>
            																					</a>
            																				</div>
            																				<div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
            																			</div>
            																				<div class="fc-daygrid-day-bg"></div>
            																			</div>
            																		</td>
            																		<td role="gridcell" class="fc-daygrid-day fc-day fc-day-mon fc-day-future" data-date="2023-03-20" aria-labelledby="fc-dom-46">
            																			<div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
            																				<div class="fc-daygrid-day-top">
            																					<a id="fc-dom-46" class="fc-daygrid-day-number" aria-label="2023년 3월 20일">20일</a>
            																				</div>
            																			<div class="fc-daygrid-day-events">
            																				<div class="fc-daygrid-event-harness" style="margin-top: 0px;">
            																					<a class="fc-daygrid-event fc-daygrid-block-event fc-h-event fc-event fc-event-start fc-event-end fc-event-future fc-btn fc-state-off " href="javascript:void(0)">
            																						<div class="fc-event-main">
            																							<div class="fc-event-main-frame">
            																								<div class="fc-event-title-container">
            																									<div class="fc-event-title fc-sticky">신청불가</div>
            																								</div>
            																							</div>
            																						</div>
            																					</a>
            																				</div>
            																				<div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
            																			</div>
            																				<div class="fc-daygrid-day-bg"></div>
            																			</div>
            																		</td>
            																	<td role="gridcell" class="fc-daygrid-day fc-day fc-day-tue fc-day-future" data-date="2023-03-21" aria-labelledby="fc-dom-48">
            																		<div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
            																			<div class="fc-daygrid-day-top">
            																				<a id="fc-dom-48" class="fc-daygrid-day-number" aria-label="2023년 3월 21일">21일</a>
            																			</div>
            																		<div class="fc-daygrid-day-events">
            																			<div class="fc-daygrid-event-harness" style="margin-top: 0px;">
            																				<a class="fc-daygrid-event fc-daygrid-block-event fc-h-event fc-event fc-event-start fc-event-end fc-event-future fc-btn fc-state-on " href="/app/space/view?md_id=space&amp;code=&amp;year=2023&amp;month=03&amp;day=21">
            																					<div class="fc-event-main">
            																						<div class="fc-event-main-frame">
            																							<div class="fc-event-title-container">
            																								<div class="fc-event-title fc-sticky">신청가능</div>
            																							</div>
            																						</div>
            																					</div>
            																				</a>
            																			</div>
            																			<div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
            																		</div>
            																		<div class="fc-daygrid-day-bg"></div>
            																		</div>
            																	</td>
            																<td role="gridcell" class="fc-daygrid-day fc-day fc-day-wed fc-day-future" data-date="2023-03-22" aria-labelledby="fc-dom-50">
            																	<div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
            																		<div class="fc-daygrid-day-top">
            																			<a id="fc-dom-50" class="fc-daygrid-day-number" aria-label="2023년 3월 22일">22일</a>
            																		</div>
            																		<div class="fc-daygrid-day-events">
            																			<div class="fc-daygrid-event-harness" style="margin-top: 0px;">
            																				<a class="fc-daygrid-event fc-daygrid-block-event fc-h-event fc-event fc-event-start fc-event-end fc-event-future fc-btn fc-state-on " href="/app/space/view?md_id=space&amp;code=&amp;year=2023&amp;month=03&amp;day=22">
            																					<div class="fc-event-main">
            																						<div class="fc-event-main-frame">
            																							<div class="fc-event-title-container">
            																								<div class="fc-event-title fc-sticky">신청가능</div>
            																							</div>
            																						</div>
            																					</div>
            																				</a>
            																			</div>
            																			<div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
            																		</div>
            																		<div class="fc-daygrid-day-bg"></div>
            																	</div>
            																</td>
            															<td role="gridcell" class="fc-daygrid-day fc-day fc-day-thu fc-day-future" data-date="2023-03-23" aria-labelledby="fc-dom-52">
            															<div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
            																<div class="fc-daygrid-day-top">
            																	<a id="fc-dom-52" class="fc-daygrid-day-number" aria-label="2023년 3월 23일">23일</a>
            																</div>
            																<div class="fc-daygrid-day-events">
            																	<div class="fc-daygrid-event-harness" style="margin-top: 0px;">
            																		<a class="fc-daygrid-event fc-daygrid-block-event fc-h-event fc-event fc-event-start fc-event-end fc-event-future fc-btn fc-state-on " href="/app/space/view?md_id=space&amp;code=&amp;year=2023&amp;month=03&amp;day=23">
            																			<div class="fc-event-main">
            																				<div class="fc-event-main-frame">
            																					<div class="fc-event-title-container">
            																						<div class="fc-event-title fc-sticky">신청가능</div>
            																					</div>
            																				</div>
            																			</div>
            																		</a>
            																	</div>
            																	<div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
            																</div>
            																<div class="fc-daygrid-day-bg"></div>
            															</div>
            														</td>
            														<td role="gridcell" class="fc-daygrid-day fc-day fc-day-fri fc-day-future" data-date="2023-03-24" aria-labelledby="fc-dom-54">
            															<div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
            																<div class="fc-daygrid-day-top">
            																	<a id="fc-dom-54" class="fc-daygrid-day-number" aria-label="2023년 3월 24일">24일</a>
            																</div>
            																<div class="fc-daygrid-day-events">
            																	<div class="fc-daygrid-event-harness" style="margin-top: 0px;">
            																		<a class="fc-daygrid-event fc-daygrid-block-event fc-h-event fc-event fc-event-start fc-event-end fc-event-future fc-btn fc-state-on " href="/app/space/view?md_id=space&amp;code=&amp;year=2023&amp;month=03&amp;day=24">
            																			<div class="fc-event-main">
            																				<div class="fc-event-main-frame">
            																					<div class="fc-event-title-container">
            																						<div class="fc-event-title fc-sticky">신청가능</div>
            																					</div>
            																				</div>
            																			</div>
            																		</a>
            																	</div>
            																	<div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
            																</div>
            																<div class="fc-daygrid-day-bg"></div>
            															</div>
            														</td>
            														<td role="gridcell" class="fc-daygrid-day fc-day fc-day-sat fc-day-future" data-date="2023-03-25" aria-labelledby="fc-dom-56">
            															<div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
            																<div class="fc-daygrid-day-top">
            																	<a id="fc-dom-56" class="fc-daygrid-day-number" aria-label="2023년 3월 25일">25일</a>
            																</div>
            																<div class="fc-daygrid-day-events">
            																	<div class="fc-daygrid-event-harness" style="margin-top: 0px;">
            																		<a class="fc-daygrid-event fc-daygrid-block-event fc-h-event fc-event fc-event-start fc-event-end fc-event-future fc-btn fc-state-on " href="/app/space/view?md_id=space&amp;code=&amp;year=2023&amp;month=03&amp;day=25">
            																			<div class="fc-event-main">
            																				<div class="fc-event-main-frame">
            																					<div class="fc-event-title-container">
            																						<div class="fc-event-title fc-sticky">신청가능</div>
            																					</div>
            																				</div>
            																			</div>
            																		</a>
            																	</div>
            																	<div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
            																</div>
            																<div class="fc-daygrid-day-bg"></div>
            															</div>
            														</td>
            													</tr>
            													<tr role="row">
            														<td role="gridcell" class="fc-daygrid-day fc-day fc-day-mon fc-day-future" data-date="2023-03-26" aria-labelledby="fc-dom-58">
            															<div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
            																<div class="fc-daygrid-day-top">
            																	<a id="fc-dom-58" class="fc-daygrid-day-number" aria-label="2023년 3월 26일">26일</a>
            																</div>
            															<div class="fc-daygrid-day-events">
            																<div class="fc-daygrid-event-harness" style="margin-top: 0px;">
            																	<a class="fc-daygrid-event fc-daygrid-block-event fc-h-event fc-event fc-event-start fc-event-end fc-event-future fc-btn fc-state-off " href="javascript:void(0)">
            																		<div class="fc-event-main">
            																			<div class="fc-event-main-frame">
            																				<div class="fc-event-title-container">
            																					<div class="fc-event-title fc-sticky">신청가능</div>
            																				</div>
            																			</div>
            																		</div>
            																	</a>
            																</div>
            																<div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
            															</div>
            																<div class="fc-daygrid-day-bg"></div>
            															</div>
            														</td>
            														<td role="gridcell" class="fc-daygrid-day fc-day fc-day-mon fc-day-future" data-date="2023-03-27" aria-labelledby="fc-dom-60">
            															<div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
            																<div class="fc-daygrid-day-top">
            																	<a id="fc-dom-60" class="fc-daygrid-day-number" aria-label="2023년 3월 27일">27일</a>
            																</div>
            																<div class="fc-daygrid-day-events">
            																	<div class="fc-daygrid-event-harness" style="margin-top: 0px;">
            																		<a class="fc-daygrid-event fc-daygrid-block-event fc-h-event fc-event fc-event-start fc-event-end fc-event-future fc-btn fc-state-on " href="/app/space/view?md_id=space&amp;code=&amp;year=2023&amp;month=03&amp;day=27">
            																			<div class="fc-event-main">
            																				<div class="fc-event-main-frame">
            																					<div class="fc-event-title-container">
            																						<div class="fc-event-title fc-sticky">신청가능</div>
            																					</div>
            																				</div>
            																			</div>
            																		</a>
            																	</div>
            																	<div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
            																</div>
            																<div class="fc-daygrid-day-bg"></div>
            															</div>
            														</td>
            														<td role="gridcell" class="fc-daygrid-day fc-day fc-day-tue fc-day-future" data-date="2023-03-28" aria-labelledby="fc-dom-62">
            															<div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
            																<div class="fc-daygrid-day-top">
            																	<a id="fc-dom-62" class="fc-daygrid-day-number" aria-label="2023년 3월 28일">28일</a>
            																</div>
            															<div class="fc-daygrid-day-events">
            																<div class="fc-daygrid-event-harness" style="margin-top: 0px;">
            																	<a class="fc-daygrid-event fc-daygrid-block-event fc-h-event fc-event fc-event-start fc-event-end fc-event-future fc-btn fc-state-on " href="/app/space/view?md_id=space&amp;code=&amp;year=2023&amp;month=03&amp;day=28">
            																		<div class="fc-event-main">
            																			<div class="fc-event-main-frame">
            																				<div class="fc-event-title-container">
            																					<div class="fc-event-title fc-sticky">신청가능</div>
            																				</div>
            																			</div>
            																		</div>
            																	</a>
            																</div>
            																<div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
            															</div>
            																<div class="fc-daygrid-day-bg"></div>
            															</div>
            														</td>
            														<td role="gridcell" class="fc-daygrid-day fc-day fc-day-wed fc-day-future" data-date="2023-03-29" aria-labelledby="fc-dom-64">
            															<div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
            																<div class="fc-daygrid-day-top">
            																	<a id="fc-dom-64" class="fc-daygrid-day-number" aria-label="2023년 3월 29일">29일</a>
            																</div>
            																<div class="fc-daygrid-day-events">
            																	<div class="fc-daygrid-event-harness" style="margin-top: 0px;">
            																		<a class="fc-daygrid-event fc-daygrid-block-event fc-h-event fc-event fc-event-start fc-event-end fc-event-future fc-btn fc-state-on " href="/app/space/view?md_id=space&amp;code=&amp;year=2023&amp;month=03&amp;day=29">
            																			<div class="fc-event-main">
            																				<div class="fc-event-main-frame">
            																					<div class="fc-event-title-container">
            																						<div class="fc-event-title fc-sticky">신청가능</div>
            																					</div>
            																				</div>
            																			</div>
            																		</a>
            																	</div>
            																	<div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
            																</div>
            																<div class="fc-daygrid-day-bg"></div>
            															</div>
            														</td>
            														<td role="gridcell" class="fc-daygrid-day fc-day fc-day-thu fc-day-future" data-date="2023-03-30" aria-labelledby="fc-dom-66">
            															<div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
            																<div class="fc-daygrid-day-top">
            																	<a id="fc-dom-66" class="fc-daygrid-day-number" aria-label="2023년 3월 30일">30일</a>
            																</div>
            																<div class="fc-daygrid-day-events">
            																	<div class="fc-daygrid-event-harness" style="margin-top: 0px;">
            																		<a class="fc-daygrid-event fc-daygrid-block-event fc-h-event fc-event fc-event-start fc-event-end fc-event-future fc-btn fc-state-on " href="/app/space/view?md_id=space&amp;code=&amp;year=2023&amp;month=03&amp;day=30">
            																			<div class="fc-event-main">
            																				<div class="fc-event-main-frame">
            																					<div class="fc-event-title-container">
            																						<div class="fc-event-title fc-sticky">신청가능</div>
            																					</div>
            																				</div>
            																			</div>
            																		</a>
            																	</div>
            																	<div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
            																</div>
            																<div class="fc-daygrid-day-bg"></div>
            															</div>
            														</td>
            														<td role="gridcell" class="fc-daygrid-day fc-day fc-day-fri fc-day-future" data-date="2023-03-31" aria-labelledby="fc-dom-68">
            															<div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
            																<div class="fc-daygrid-day-top">
            																	<a id="fc-dom-68" class="fc-daygrid-day-number" aria-label="2023년 3월 31일">31일</a>
            																</div>
            															<div class="fc-daygrid-day-events">
            																<div class="fc-daygrid-event-harness" style="margin-top: 0px;">
            																	<a class="fc-daygrid-event fc-daygrid-block-event fc-h-event fc-event fc-event-start fc-event-end fc-event-future fc-btn fc-state-on " href="/app/space/view?md_id=space&amp;code=&amp;year=2023&amp;month=03&amp;day=31">
            																		<div class="fc-event-main">
            																			<div class="fc-event-main-frame">
            																				<div class="fc-event-title-container">
            																					<div class="fc-event-title fc-sticky">신청가능</div>
            																				</div>
            																			</div>
            																		</div>
            																	</a>
            																</div>
            																<div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
            															</div>
            																<div class="fc-daygrid-day-bg"></div>
            															</div>
            														</td>
            														<td role="gridcell" class="fc-daygrid-day fc-day fc-day-sat fc-day-disabled" aria-labelledby="fc-dom-70">
            															<div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
            																<div class="fc-daygrid-day-events">
            																	<div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
            																</div>
            																<div class="fc-daygrid-day-bg"></div>
            															</div>
            														</td>
            													</tr>
            												</tbody>
            											</table>
            										</div>
            									</div>
            								</div>
            							</td>
            						</tr>
            					</tbody>
            				</table>
            			</div>
            		</div>
            	</div>
       		</div>
       		       		
       		<div class="space-reserve-area card-body" style="white-space:nowrap;">
           		<div class="current-date" s-core="" >
                	<span class="day-num">18일</span>
                    	<span class="day-txt">(토)</span>
            	</div>
           	<div class="rental-status-wrap" style="white-space:nowrap; margin-top:39px;">
            	<ul class="rental-status-list custom-scroll" style="list-style-type:none; white-space:nowrap">
                	<li>
                		<a href="/app/space/schedule_state_popup?md_id=space&amp;code=14&amp;year=2023&amp;month=03&amp;day=18" class="rental-status-inner modal_link off">
                    		<div class="img image__cover_1_1" style="background-image:url('<%=request.getContextPath()%>/resources/images/futsal.jpg')"></div>
                            <div class="info">
                            	<div class="tit-box">
                                	<div class="tit" style="color:black;">풋살장</div>
                                    <div class="color-box cancel-bg"></div>
                                </div>
                                <span class="state magam">마감</span>
                            </div>
                   		</a>
                   	</li>
                    <li>
                    	<a href="/app/space/schedule_state_popup?md_id=space&amp;code=13&amp;year=2023&amp;month=03&amp;day=18" class="rental-status-inner modal_link off">
                        	<div class="img image__cover_1_1" style="background-image:url('<%=request.getContextPath()%>/resources/images/tennis.jpg')"></div>
                            <div class="info">
                                <div class="tit-box">
                                    <div class="tit" style="color:black;">테니스장</div>
                                    <div class="color-box cancel-bg"></div>
                                </div>
                                <span class="state">마감</span>
                           	</div>
                       	</a>
                    </li>
                    <li>
                    	<a href="/app/space/schedule_state_popup?md_id=space&amp;code=15&amp;year=2023&amp;month=03&amp;day=18" class="rental-status-inner modal_link off">
                        	<div class="img image__cover_1_1" style="background-image:url('<%=request.getContextPath()%>/resources/images/swimmingpool.jpg')"></div>
                            <div class="info">
                            	<div class="tit-box">
                                	<div class="tit" style="color:black;">수영장</div>
                                    <div class="color-box cancel-bg"></div>
                                </div>
								<span class="state">마감</span>
                            </div>
                        </a>
                    </li>
                    <li>
                    	<a href="/app/space/schedule_state_popup?md_id=space&amp;code=16&amp;year=2023&amp;month=03&amp;day=18" class="rental-status-inner modal_link off">
                        	<div class="img image__cover_1_1" style="background-image:url('<%=request.getContextPath()%>/resources/images/basketball.jpg')"></div>
                        	<div class="info">
                       			<div class="tit-box">
                           			<div class="tit" style="color:black;">농구장</div>
                               			<div class="color-box cancel-bg"></div>
                          	 	</div>
								<span class="state">마감</span>
                       	 </div>
                       	</a>
                  	</li>
                   	<li>
                    	<a href="/app/space/schedule_state_popup?md_id=space&amp;code=17&amp;year=2023&amp;month=03&amp;day=18" class="rental-status-inner modal_link off">
                        	<div class="img image__cover_1_1" style="background-image:url('<%=request.getContextPath()%>/resources/images/pingpong.jpg')"></div>
                            <div class="info">
                            	<div class="tit-box">
                                	<div class="tit" style="color:black;">탁구장</div>
                                    <div class="color-box cancel-bg"></div>
                            	</div>
								<span class="state">마감</span>
                            </div>
                     	</a>
                	</li>
                  	<li>
                    	<a href="/app/space/schedule_state_popup?md_id=space&amp;code=18&amp;year=2023&amp;month=03&amp;day=18" class="rental-status-inner modal_link off">
                        	<div class="img image__cover_1_1" style="background-image:url('<%=request.getContextPath()%>/resources/images/badminton.jpg')"></div>
                            <div class="info">
                           		<div class="tit-box">
                     				<div class="tit" style="color:black;">배드민턴장</div>
                                    <div class="color-box cancel-bg"></div>
                          		</div>
								<span class="state">마감</span>
                            </div>
                      	</a>
                 	</li>
                    <li>
                    	<a href="/app/space/schedule_state_popup?md_id=space&amp;code=17&amp;year=2023&amp;month=03&amp;day=18" class="rental-status-inner modal_link off">
                        	<div class="img image__cover_1_1" style="background-image:url('<%=request.getContextPath()%>/resources/images/footvolley.jpg')"></div>
                          	<div class="info">
                           		<div class="tit-box">
                                    <div class="tit" style="color:black;">족구장</div>
                                    <div class="color-box cancel-bg"></div>
                              	</div>
								<span class="state">마감</span>
                             </div>
                 		</a>
                  	</li>
                    <li>
                    	<a href="/app/space/schedule_state_popup?md_id=space&amp;code=17&amp;year=2023&amp;month=03&amp;day=18" class="rental-status-inner modal_link off">
                        	<div class="img image__cover_1_1" style="background-image:url('<%=request.getContextPath()%>/resources/images/business-room.jpg')"></div>
                      		<div class="info">
                        		<div class="tit-box">
                            		<div class="tit" style="color:black;">비즈니스 회의룸</div>
                                	<div class="color-box cancel-bg"></div>
                         		</div>
								<span class="state">마감</span>
                    		</div>
                        </a>
               		</li>
                    <li>
                   		<a href="/app/space/schedule_state_popup?md_id=space&amp;code=17&amp;year=2023&amp;month=03&amp;day=18" class="rental-status-inner modal_link off">
                       		<div class="img image__cover_1_1" style="background-image:url('<%=request.getContextPath()%>/resources/images/shitingshi.jpg')"></div>
                            <div class="info">
                            	<div class="tit-box">
                              		<div class="tit" style="color:black;">시청각실</div>
                                    <div class="color-box cancel-bg"></div>
                               	</div>
								<span class="state">마감</span>
                           	</div>
                       	</a>
                   	</li>
                   	<li>
      					<a href="/app/space/schedule_state_popup?md_id=space&amp;code=17&amp;year=2023&amp;month=03&amp;day=18" class="rental-status-inner modal_link off">
           					<div class="img image__cover_1_1" style="background-image:url('<%=request.getContextPath()%>/resources/images/fitness.jpg')"></div>
                            <div class="info">
                          		<div class="tit-box">
                               		<div class="tit" style="color:black;">피트니스 룸</div>
                                    <div class="color-box cancel-bg"></div>
                               	</div>
								<span class="state">마감</span>
                          	</div>
                   		</a>
             		</li>
             	</ul>
			</div>
		</div>
	</section>
									
									
									
									
									
									
									
									
									
									
									
									
									
									
									
				
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
	</div>
	<!-- main-content -->


	
<script src="<%=request.getContextPath()%>/resources/js/alert.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/apps.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/focus-visible.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/jquery.cookie.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/jquery.form.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/jquery-1.9.1.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/jquery-migrate-1.1.0.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/jquery-ui.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/locales-all.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/main.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/moment.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/pace.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/swiper.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/wezon.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/calendar.js"></script>

<!-- <script>
function prevMonth(){
	today = new Date(today.getFullYear(), today.getMonth()-1, today.getDate());
	buildCalendar();
}

function nextMonth(){
	today = new Date(today.getFullYear(), today.getMonth()+1, today.getDate());
	buildCalendar();
}
</script> -->
	
<%@include file="/WEB-INF/views/include/footer.jsp" %>	
	
