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
        <div class="row ">
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
							<button type="button" class="btn btn-default btn-block btn-original text-left" onclick="location.href='fac_info.do'">대관시설정보</button>
							<button type="button" class="btn btn-default btn-block btn-original text-left" onclick="location.href='fac_howtobook.do'">대관접수안내</button>
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
        					<div style="height:2000px;" ><br/>
        					
        					
        					
        						<div class="space-title-wrap" style="white-space:nowrap">
    								<h3><i class="fa-regular fa-square-full" style="display:inline-block; position:relative;">&nbsp;&nbsp;대관신청</i></h3><br/>
    								
    								<div class="event-visual-area" style="">
    									<div class="event-swiper-wrap" style="position:relative; width:612.89px;">
        									<div class="event-swiper swiper-container swiper-container-initialized swiper-container-horizontal" style="left:0;">
        									<img src="<%=request.getContextPath()%>/resources/images/futsal.jpg" class="img-fluid " alt="futsal" style="width:612.91px; height:330px; "/>
        									</div>
    									</div>
    									<div class="event-info-wrap">
        									<h2 class="info-title">facility.fac_name</h2>
        									<div class="info-list card-body" style="border:1px solid #d8dce4; border-radius:8px; width:600px;"><br/>
           	 									<dl class="info-item">
                									<dt>규모</dt>
                									<dd>facility.fac_size<dd>
            									</dl>
            									<dl class="info-item">
                									<dt>대관료</dt>
                									<dd>※ &nbsp; 1시간 기준 <br/>평일 : facility_price.weekday_price<br/>주말 : facility_price.weekend_price</dd>
            									</dl>
            									<dl class="info-item">
                									<dt>운영시간</dt>
                									<dd>평일 : 09:00 ~ 22:00,&nbsp; <br/>토요일 및 일요일(2, 4주) :  &nbsp;09:00 ~ 18:00</dd>
            									</dl>
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
    								
    								<section class="space-reserve-section">
                <div class="calendar-area" style="width:642.59px;">
                    <div id="calendar" class="space-calendar fc fc-media-screen fc-direction-ltr fc-theme-bootstrap" style="height: 620px; position:relative; width:612.91px;">
  <div class="fc-header-toolbar fc-toolbar fc-toolbar-ltr" style="">
    <div class="fc-toolbar-chunk" style="display:inline-block;"><h2 class="fc-toolbar-title" id="fc-dom-1">2023년 3월</h2></div>
    <div class="fc-toolbar-chunk" style="display:inline-block; position:absolute; right:0;">
      <div class="btn-group">
        <button type="button" aria-pressed="false" class="fc-prev-button btn btn-primary">
          <span class="fa fa-chevron-left"></span>
        </button>
        <button type="button" aria-pressed="false" class="fc-next-button btn btn-primary">
          <span class="fa fa-chevron-right"></span>
         </button>
       </div>
      <button type="button" title="오늘" disabled="" aria-pressed="false" class="fc-today-button btn btn-primary">오늘</button> 
    </div>     
  </div>
  <div aria-labelledby="fc-dom-1" class="fc-view-harness fc-view-harness-active">
    <div class="fc-daygrid fc-dayGridMonth-view fc-view">
      <table role="grid" class="fc-scrollgrid table-bordered fc-scrollgrid-liquid">
        <thead role="rowgroup">
          <tr role="presentation" class="fc-scrollgrid-section fc-scrollgrid-section-header ">
            <th role="presentation">
              <div class="fc-scroller-harness">
                <div class="fc-scroller" style="overflow: hidden;">
                  <table role="presentation" class="fc-col-header " style="width: 837px;">
                    <colgroup></colgroup>
                    <thead role="presentation">
                      <tr role="row">
                      	<th role="columnheader" class="fc-col-header-cell fc-day fc-day-sun zhong">
                        <div class="fc-scrollgrid-sync-inner">
                          <a aria-label="일요일" class="fc-col-header-cell-cushion " style="color:red;font-weight:bolder;">일</a> 
                        </div> 
                        </th>
                        <th role="columnheader" class="fc-col-header-cell fc-day fc-day-mon zhong">
                          <div class="fc-scrollgrid-sync-inner">
                            <a aria-label="월요일" class="fc-col-header-cell-cushion " style="color:black;font-weight:bolder;">월</a> 
                          </div> 
                        </th> 
                        <th role="columnheader" class="fc-col-header-cell fc-day fc-day-tue zhong"> 
                          <div class="fc-scrollgrid-sync-inner"> 
                            <a aria-label="화요일" class="fc-col-header-cell-cushion " style="color:black;font-weight:bolder;">화</a> 
                          </div> 
                        </th> 
                        <th role="columnheader" class="fc-col-header-cell fc-day fc-day-wed zhong"> 
                          <div class="fc-scrollgrid-sync-inner"><a aria-label="수요일" class="fc-col-header-cell-cushion " style="color:black;font-weight:bolder;">수</a> 
                          </div> 
                        </th> 
                        <th role="columnheader" class="fc-col-header-cell fc-day fc-day-thu zhong"> 
                          <div class="fc-scrollgrid-sync-inner"> 
                            <a aria-label="목요일" class="fc-col-header-cell-cushion " style="color:black;font-weight:bolder;" >목</a> 
                          </div> 
                        </th> 
                        <th role="columnheader" class="fc-col-header-cell fc-day fc-day-fri zhong"> 
                          <div class="fc-scrollgrid-sync-inner"> 
                            <a aria-label="금요일" class="fc-col-header-cell-cushion " style="color:black;font-weight:bolder;">금</a> 
                          </div> 
                        </th> 
                        <th role="columnheader" class="fc-col-header-cell fc-day fc-day-sat zhong "> 
                          <div class="fc-scrollgrid-sync-inner"> 
                            <a aria-label="토요일" class="fc-col-header-cell-cushion " style="font-weight:bolder;">토</a> 
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
                  <div class="fc-daygrid-body fc-daygrid-body-unbalanced " style="width: 837px;"> 
                    <table role="presentation" class="fc-scrollgrid-sync-table" style="width: 837px; height: 523px;"> 
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
                          <td role="gridcell" class="fc-daygrid-day fc-day fc-day-wed fc-day-past zhong" data-date="2023-03-01" aria-labelledby="fc-dom-8"> 
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
                          <td role="gridcell" class="fc-daygrid-day fc-day fc-day-thu fc-day-past zhong" data-date="2023-03-02" aria-labelledby="fc-dom-10"> 
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
                          <td role="gridcell" class="fc-daygrid-day fc-day fc-day-fri fc-day-past zhong" data-date="2023-03-03" aria-labelledby="fc-dom-12"> 
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
                          <td role="gridcell" class="fc-daygrid-day fc-day fc-day-sat fc-day-past zhong" data-date="2023-03-04" aria-labelledby="fc-dom-14"> 
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
                          <td role="gridcell" class="fc-daygrid-day fc-day fc-day-sun fc-day-past zhong" data-date="2023-03-05" aria-labelledby="fc-dom-16"> 
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
                          <td role="gridcell" class="fc-daygrid-day fc-day fc-day-mon fc-day-past zhong" data-date="2023-03-06" aria-labelledby="fc-dom-18"> 
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
                          <td role="gridcell" class="fc-daygrid-day fc-day fc-day-tue fc-day-past zhong" data-date="2023-03-07" aria-labelledby="fc-dom-20"> 
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
                          <td role="gridcell" class="fc-daygrid-day fc-day fc-day-wed fc-day-past zhong" data-date="2023-03-08" aria-labelledby="fc-dom-22"> 
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
                          <td role="gridcell" class="fc-daygrid-day fc-day fc-day-thu fc-day-past zhong" data-date="2023-03-09" aria-labelledby="fc-dom-24"> 
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
                          <td role="gridcell" class="fc-daygrid-day fc-day fc-day-fri fc-day-past zhong" data-date="2023-03-10" aria-labelledby="fc-dom-26"> 
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
                          <td role="gridcell" class="fc-daygrid-day fc-day fc-day-sat fc-day-past zhong" data-date="2023-03-11" aria-labelledby="fc-dom-28"> 
                            <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"> 
                              <div class="fc-daygrid-day-top"> 
                                <a id="fc-dom-28" class="fc-daygrid-day-number" aria-label="2023년 3월 11일">11일</a> 
                              </div> 
                              <div class="fc-daygrid-day-events"> 
                                <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"> 
                                </div> 
                              </div> 
                              <div class="fc-daygrid-day-bg"></div> 
                            </div> 
                          </td> 
                        </tr> 
                        <tr role="row"> 
                          <td role="gridcell" class="fc-daygrid-day fc-day fc-day-sun fc-day-past zhong" data-date="2023-03-12" aria-labelledby="fc-dom-30"> 
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
                          <td role="gridcell" class="fc-daygrid-day fc-day fc-day-mon fc-day-past zhong" data-date="2023-03-13" aria-labelledby="fc-dom-32"> 
                            <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"> 
                              <div class="fc-daygrid-day-top"> 
                                <a id="fc-dom-32" class="fc-daygrid-day-number" aria-label="2023년 3월 13일">13일</a> 
                              </div> 
                              <div class="fc-daygrid-day-events"> 
                                <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"> 
                                </div> 
                              </div> 
                              <div class="fc-daygrid-day-bg"></div> 
                            </div> 
                          </td> 
                          <td role="gridcell" class="fc-daygrid-day fc-day fc-day-tue fc-day-past zhong" data-date="2023-03-14" aria-labelledby="fc-dom-34"> 
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
                          <td role="gridcell" class="fc-daygrid-day fc-day fc-day-wed fc-day-past zhong" data-date="2023-03-15" aria-labelledby="fc-dom-36"> 
                            <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"> 
                              <div class="fc-daygrid-day-top"> 
                                <a id="fc-dom-36" class="fc-daygrid-day-number" aria-label="2023년 3월 15일">15일</a> 
                              </div> 
                              <div class="fc-daygrid-day-events"> 
                                <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"> 
                                </div> 
                              </div> 
                              <div class="fc-daygrid-day-bg"></div> 
                            </div> 
                          </td> 
                          <td role="gridcell" class="fc-daygrid-day fc-day fc-day-thu fc-day-past zhong" data-date="2023-03-16" aria-labelledby="fc-dom-38"> 
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
                          <td role="gridcell" class="fc-daygrid-day fc-day fc-day-fri fc-day-past zhong" data-date="2023-03-17" aria-labelledby="fc-dom-40"> 
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
                          <td role="gridcell" class="fc-daygrid-day fc-day fc-day-sat fc-day-past zhong" data-date="2023-03-18" aria-labelledby="fc-dom-42"> 
                            <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"> 
                              <div class="fc-daygrid-day-top"> 
                                <a id="fc-dom-42" class="fc-daygrid-day-number" aria-label="2023년 3월 18일">18일</a> 
                              </div> 
                              <div class="fc-daygrid-day-events"> 
                                <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div> 
                              </div> 
                              <div class="fc-daygrid-day-bg"></div> 
                            </div> 
                          </td> 
                        </tr> 
                        <tr role="row"> 
                          <td role="gridcell" class="fc-daygrid-day fc-day fc-day-sun fc-day-past zhong" data-date="2023-03-19" aria-labelledby="fc-dom-44" style="padding-bottom:40px;"> 
                            <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"> 
                              <div class="fc-daygrid-day-top"> 
                                <a id="fc-dom-44" class="fc-daygrid-day-number" aria-label="2023년 3월 19일">19일</a> 
                              </div> 
                              <div class="fc-daygrid-day-events"> 
                                <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div> 
                              </div> 
                              <div class="fc-daygrid-day-bg"></div> 
                            </div> 
                          </td> 
                          <td role="gridcell" class="fc-daygrid-day fc-day fc-day-mon fc-day-today zhong" data-date="2023-03-20" aria-labelledby="fc-dom-46"> 
                            <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"> 
                              <div class="fc-daygrid-day-top"> 
                                <a id="fc-dom-46" class="fc-daygrid-day-number" aria-label="2023년 3월 20일">20일</a> 
                              </div> 
                              <div class="fc-daygrid-day-events"> 
                                <div class="fc-daygrid-event-harness" style="margin-top: 0px;"> 
                                  <a class="fc-daygrid-event fc-daygrid-block-event fc-h-event fc-event fc-event-start fc-event-end fc-event-today fc-btn apply-off" href="javascript:void(0)"> 
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
                          <td role="gridcell" class="fc-daygrid-day fc-day fc-day-tue fc-day-future zhong" data-date="2023-03-21" aria-labelledby="fc-dom-48"> 
                            <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"> 
                              <div class="fc-daygrid-day-top"> 
                                <a id="fc-dom-48" class="fc-daygrid-day-number" aria-label="2023년 3월 21일">21일</a> 
                              </div> 
                              <div class="fc-daygrid-day-events"> 
                                <div class="fc-daygrid-event-harness" style="margin-top: 0px;"> 
                                  <a class="fc-daygrid-event fc-daygrid-block-event fc-h-event fc-event fc-event-start fc-event-end fc-event-future fc-btn apply-off" href="javascript:void(0)"> 
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
                          <td role="gridcell" class="fc-daygrid-day fc-day fc-day-wed fc-day-future zhong" data-date="2023-03-22" aria-labelledby="fc-dom-50"> 
                            <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"> 
                              <div class="fc-daygrid-day-top"> 
                                <a id="fc-dom-50" class="fc-daygrid-day-number" aria-label="2023년 3월 22일">22일</a> 
                              </div> 
                              <div class="fc-daygrid-day-events"> 
                                <div class="fc-daygrid-event-harness" style="margin-top: 0px;"> 
                                  <a class="fc-daygrid-event fc-daygrid-block-event fc-h-event fc-event fc-event-start fc-event-end fc-event-future fc-btn apply-off" href="javascript:void(0)"> 
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
                          <td role="gridcell" class="fc-daygrid-day fc-day fc-day-thu fc-day-future zhong" data-date="2023-03-23" aria-labelledby="fc-dom-52"> 
                            <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"> 
                              <div class="fc-daygrid-day-top"> 
                                <a id="fc-dom-52" class="fc-daygrid-day-number" aria-label="2023년 3월 23일">23일</a> 
                              </div> 
                              <div class="fc-daygrid-day-events"> 
                                <div class="fc-daygrid-event-harness" style="margin-top: 0px;"> 
                                  <a class="fc-daygrid-event fc-daygrid-block-event fc-h-event fc-event fc-event-start fc-event-end fc-event-future fc-btn apply-on" href="/app/space/view?md_id=space&amp;code=17&amp;year=2023&amp;month=03&amp;day=23"> 
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
                          <td role="gridcell" class="fc-daygrid-day fc-day fc-day-fri fc-day-future zhong" data-date="2023-03-24" aria-labelledby="fc-dom-54"> 
                            <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"> 
                              <div class="fc-daygrid-day-top"> 
                                <a id="fc-dom-54" class="fc-daygrid-day-number" aria-label="2023년 3월 24일">24일</a> 
                              </div> 
                              <div class="fc-daygrid-day-events"> 
                                <div class="fc-daygrid-event-harness" style="margin-top: 0px;"> 
                                  <a class="fc-daygrid-event fc-daygrid-block-event fc-h-event fc-event fc-event-start fc-event-end fc-event-future fc-btn apply-on" href="/app/space/view?md_id=space&amp;code=17&amp;year=2023&amp;month=03&amp;day=24"> 
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
                          <td role="gridcell" class="fc-daygrid-day fc-day fc-day-sat fc-day-future zhong" data-date="2023-03-25" aria-labelledby="fc-dom-56"> 
                            <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"> 
                              <div class="fc-daygrid-day-top"> 
                                <a id="fc-dom-56" class="fc-daygrid-day-number" aria-label="2023년 3월 25일">25일</a> 
                              </div> 
                              <div class="fc-daygrid-day-events"> 
                                <div class="fc-daygrid-event-harness" style="margin-top: 0px;"> 
                                  <a class="fc-daygrid-event fc-daygrid-block-event fc-h-event fc-event fc-event-start fc-event-end fc-event-future fc-btn apply-on" href="/app/space/view?md_id=space&amp;code=17&amp;year=2023&amp;month=03&amp;day=25"> 
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
                          <td role="gridcell" class="fc-daygrid-day fc-day fc-day-sun fc-day-future zhong" data-date="2023-03-26" aria-labelledby="fc-dom-58" style="padding-bottom:40px;"> 
                            <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"> 
                              <div class="fc-daygrid-day-top"> 
                                <a id="fc-dom-58" class="fc-daygrid-day-number" aria-label="2023년 3월 26일">26일</a> 
                              </div> 
                              <div class="fc-daygrid-day-events"> 
                                <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div> 
                              </div> 
                              <div class="fc-daygrid-day-bg"></div> 
                            </div> 
                          </td> 
                          <td role="gridcell" class="fc-daygrid-day fc-day fc-day-mon fc-day-future zhong" data-date="2023-03-27" aria-labelledby="fc-dom-60"> 
                            <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"> 
                              <div class="fc-daygrid-day-top"> 
                                <a id="fc-dom-60" class="fc-daygrid-day-number" aria-label="2023년 3월 27일">27일</a> 
                              </div> 
                              <div class="fc-daygrid-day-events"> 
                                <div class="fc-daygrid-event-harness" style="margin-top: 0px;"> 
                                  <a class="fc-daygrid-event fc-daygrid-block-event fc-h-event fc-event fc-event-start fc-event-end fc-event-future fc-btn apply-on" href="/app/space/view?md_id=space&amp;code=17&amp;year=2023&amp;month=03&amp;day=27"> 
                                    <div class="fc-event-main"> 
                                      <div class="fc-event-main-frame"> 
                                        <div class="fc-event-title-container"> 
                                          <div class="fc-event-title fc-sticky">신청가능</div> 
                                        </div> 
                                      </div> 
                                    </div> 
                                  </a> 
                                </div> 
                                <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"> 
                                </div> 
                              </div> 
                              <div class="fc-daygrid-day-bg"></div> 
                            </div> 
                          </td> 
                          <td role="gridcell" class="fc-daygrid-day fc-day fc-day-tue fc-day-future zhong" data-date="2023-03-28" aria-labelledby="fc-dom-62"> 
                            <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"> 
                              <div class="fc-daygrid-day-top"> 
                                <a id="fc-dom-62" class="fc-daygrid-day-number" aria-label="2023년 3월 28일">28일</a> 
                              </div> 
                              <div class="fc-daygrid-day-events"> 
                                <div class="fc-daygrid-event-harness" style="margin-top: 0px;"> 
                                  <a class="fc-daygrid-event fc-daygrid-block-event fc-h-event fc-event fc-event-start fc-event-end fc-event-future fc-btn apply-on" href="/app/space/view?md_id=space&amp;code=17&amp;year=2023&amp;month=03&amp;day=28"> 
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
                          <td role="gridcell" class="fc-daygrid-day fc-day fc-day-wed fc-day-future zhong" data-date="2023-03-29" aria-labelledby="fc-dom-64"> 
                            <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"> 
                              <div class="fc-daygrid-day-top"> 
                                <a id="fc-dom-64" class="fc-daygrid-day-number" aria-label="2023년 3월 29일">29일</a> 
                              </div> 
                              <div class="fc-daygrid-day-events"> 
                                <div class="fc-daygrid-event-harness" style="margin-top: 0px;"> 
                                  <a class="fc-daygrid-event fc-daygrid-block-event fc-h-event fc-event fc-event-start fc-event-end fc-event-future fc-btn apply-on" href="/app/space/view?md_id=space&amp;code=17&amp;year=2023&amp;month=03&amp;day=29"> 
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
                          <td role="gridcell" class="fc-daygrid-day fc-day fc-day-thu fc-day-future zhong" data-date="2023-03-30" aria-labelledby="fc-dom-66"> 
                            <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"> 
                              <div class="fc-daygrid-day-top"> 
                                <a id="fc-dom-66" class="fc-daygrid-day-number" aria-label="2023년 3월 30일">30일</a> 
                              </div> 
                              <div class="fc-daygrid-day-events"> 
                                <div class="fc-daygrid-event-harness" style="margin-top: 0px;"> 
                                  <a class="fc-daygrid-event fc-daygrid-block-event fc-h-event fc-event fc-event-start fc-event-end fc-event-future fc-btn apply-on" href="/app/space/view?md_id=space&amp;code=17&amp;year=2023&amp;month=03&amp;day=30"> 
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
                              <div class="fc-daygrid-day-bg"> 
                              </div> 
                            </div> 
                          </td> 
                          <td role="gridcell" class="fc-daygrid-day fc-day fc-day-fri fc-day-future zhong" data-date="2023-03-31" aria-labelledby="fc-dom-68"> 
                            <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"> 
                              <div class="fc-daygrid-day-top"> 
                                <a id="fc-dom-68" class="fc-daygrid-day-number" aria-label="2023년 3월 31일">31일</a> 
                              </div> 
                              <div class="fc-daygrid-day-events"> 
                                <div class="fc-daygrid-event-harness" style="margin-top: 0px;"> 
                                  <a class="fc-daygrid-event fc-daygrid-block-event fc-h-event fc-event fc-event-start fc-event-end fc-event-future fc-btn apply-on" href="/app/space/view?md_id=space&amp;code=17&amp;year=2023&amp;month=03&amp;day=31"> 
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
                <div class="space-reserve-area" style="height:700px;">
                    <div class="current-date" s-core=""style="padding:21px;">
                        <span class="day-num">24일</span>
                      <span class="day-txt">(금)</span>
                    </div>
                    <div id="reserve_detail">
<form action="https://www.commonz042.kr/app/space/space_detail" id="form_apply" enctype="multipart/form-data" method="post" accept-charset="utf-8">
<input type="hidden" name="code" value="17">
<input type="hidden" name="year" value="2023">
<input type="hidden" name="month" value="03">
<input type="hidden" name="day" value="24">
<input type="hidden" name="temporary_code" value="">
<div class="reserve-list-wrap">
    <div class="reserve-list-tit" style="background:#dfdfdf;">예약가능 시간선택</div>
            <ul class="reserve-list-box">
                            <li>
                    <div class="reserve-item" style="padding:10px;">
                        <div class="reserve-ckbox">
                            <input type="checkbox" id="space_detail_code_84" name="space_detail_code[]" data-start_time="09:00:00" data-time_value="09:00 ~ 10:00" value="84" class="space_detail_code">
                            <label for="space_detail_code_84" >
                                09:00                                ~
                                10:00</label>
                        </div>
                        <span class="reserve-state ">신청가능</span>
                    </div>
                </li>
                            <li>
                    <div class="reserve-item" style="padding:10px;">
                        <div class="reserve-ckbox">
                            <input type="checkbox" id="space_detail_code_85" name="space_detail_code[]" data-start_time="10:00:00" data-time_value="10:00 ~ 11:00" value="85" class="space_detail_code" disabled="">
                            <label for="space_detail_code_85">
                                10:00                                ~
                                11:00</label>
                        </div>
                        <span class="reserve-state disabled">신청불가</span>
                    </div>
                </li>
                            <li>
                    <div class="reserve-item" style="padding:10px;">
                        <div class="reserve-ckbox">
                            <input type="checkbox" id="space_detail_code_86" name="space_detail_code[]" data-start_time="11:00:00" data-time_value="11:00 ~ 12:00" value="86" class="space_detail_code" disabled="">
                            <label for="space_detail_code_86">
                                11:00                                ~
                                12:00</label>
                        </div>
                        <span class="reserve-state disabled">신청불가</span>
                    </div>
                </li>
                            <li>
                    <div class="reserve-item" style="padding:10px;">
                        <div class="reserve-ckbox">
                            <input type="checkbox" id="space_detail_code_87" name="space_detail_code[]" data-start_time="12:00:00" data-time_value="12:00 ~ 13:00" value="87" class="space_detail_code" disabled="">
                            <label for="space_detail_code_87">
                                12:00                                ~
                                13:00</label>
                        </div>
                        <span class="reserve-state disabled">신청불가</span>
                    </div>
                </li>
                            <li>
                    <div class="reserve-item" style="padding:10px;">
                        <div class="reserve-ckbox">
                            <input type="checkbox" id="space_detail_code_88" name="space_detail_code[]" data-start_time="13:00:00" data-time_value="13:00 ~ 14:00" value="88" class="space_detail_code">
                            <label for="space_detail_code_88">
                                13:00                                ~
                                14:00</label>
                        </div>
                        <span class="reserve-state ">신청가능</span>
                    </div>
                </li>
                            <li>
                    <div class="reserve-item" style="padding:10px;">
                        <div class="reserve-ckbox">
                            <input type="checkbox" id="space_detail_code_89" name="space_detail_code[]" data-start_time="14:00:00" data-time_value="14:00 ~ 15:00" value="89" class="space_detail_code">
                            <label for="space_detail_code_89">
                                14:00                                ~
                                15:00</label>
                        </div>
                        <span class="reserve-state ">신청가능</span>
                    </div>
                </li>
                            <li>
                    <div class="reserve-item" style="padding:10px;">
                        <div class="reserve-ckbox">
                            <input type="checkbox" id="space_detail_code_90" name="space_detail_code[]" data-start_time="15:00:00" data-time_value="15:00 ~ 16:00" value="90" class="space_detail_code">
                            <label for="space_detail_code_90">
                                15:00                                ~
                                16:00</label>
                        </div>
                        <span class="reserve-state ">신청가능</span>
                    </div>
                </li>
                            <li>
                    <div class="reserve-item" style="padding:10px;">
                        <div class="reserve-ckbox">
                            <input type="checkbox" id="space_detail_code_91" name="space_detail_code[]" data-start_time="16:00:00" data-time_value="16:00 ~ 17:00" value="91" class="space_detail_code">
                            <label for="space_detail_code_91">
                                16:00                                ~
                                17:00</label>
                        </div>
                        <span class="reserve-state ">신청가능</span>
                    </div>
                </li>
                            <li>
                    <div class="reserve-item" style="padding:10px;">
                        <div class="reserve-ckbox">
                            <input type="checkbox" id="space_detail_code_92" name="space_detail_code[]" data-start_time="17:00:00" data-time_value="17:00 ~ 18:00" value="92" class="space_detail_code">
                            <label for="space_detail_code_92">
                                17:00                                ~
                                18:00</label>
                        </div>
                        <span class="reserve-state ">신청가능</span>
                    </div>
                </li>
                            <li>
                    <div class="reserve-item" style="padding:10px;">
                        <div class="reserve-ckbox">
                            <input type="checkbox" id="space_detail_code_93" name="space_detail_code[]" data-start_time="18:00:00" data-time_value="18:00 ~ 19:00" value="93" class="space_detail_code">
                            <label for="space_detail_code_93">
                                18:00                                ~
                                19:00</label>
                        </div>
                        <span class="reserve-state ">신청가능</span>
                    </div>
                </li>
                            <li>
                    <div class="reserve-item" style="padding:10px;">
                        <div class="reserve-ckbox">
                            <input type="checkbox" id="space_detail_code_94" name="space_detail_code[]" data-start_time="19:00:00" data-time_value="19:00 ~ 20:00" value="94" class="space_detail_code">
                            <label for="space_detail_code_94">
                                19:00                                ~
                                20:00</label>
                        </div>
                        <span class="reserve-state ">신청가능</span>
                    </div>
                </li>
                            <li>
                    <div class="reserve-item" style="padding:10px;">
                        <div class="reserve-ckbox">
                            <input type="checkbox" id="space_detail_code_95" name="space_detail_code[]" data-start_time="20:00:00" data-time_value="20:00 ~ 21:00" value="95" class="space_detail_code">
                            <label for="space_detail_code_95">
                                20:00                                ~
                                21:00</label>
                        </div>
                        <span class="reserve-state btn-default">신청가능</span>
                    </div>
                </li>
                    </ul>
    </div>

    <!-- 신청버튼 -->
        <div class="col-md-6" style="margin-left:auto;">
        <div style="right:0;">
            <a href="javascript:void(0);" class="theme-btn reserve_btn btn-default" onmouseover="this.style.backgroundColor='#a9d2b4'" onmouseout="this.style.backgroundColor='#E9E9E9'" style="transition:0.3s; color:black; text-decoration:none; border:none; ">신청하기</a>
	    </div>
	    </div>
</form>



<script>
    $(document).ready(function () {
        $(".refresh_btn").on('click', function () {
            var link = "/app/space/space_detail?md_id=space&code=17&year=2023&month=03&day=24";

            $('#reserve_detail').load(link, function () {
            });
        });

        $(".space_detail_code").on('click', function () {
            var checkList = $(".space_detail_code:checked");

            var reserve_time_info_text = '';

            checkList.each(function (index, element) {
                var li = $(element).closest('li');
                var time = li.find('label').text();
                time = time.trim();
                reserve_time_info_text +=
                    `<div>${time}</div>`;
            });

            $('.reserve_select_time').html(reserve_time_info_text);
        });


                $(".reserve_btn").on('click', function () {
            var link = "/app/space/reserve_verification?md_id=space&code=17&year=2023&month=03&day=24";

            var check_code = 0;

            var space_detail_code_checked = [];
            $(".space_detail_code:checked").each(function () {
                space_detail_code_checked.push($(this).val());
                check_code++;
            });

            if (check_code == 0) {
                alert("예약 가능 시간을 선택해주세요.");
                return false;
            }

            var formData = {
                'space_detail_code': space_detail_code_checked, // only this part has a problem
            };

            $.ajax({
                url: link,
                type: "POST",
                data: formData,
                dataType: "text",
                async: false,
                success: function (data) {
                    if (data == 'login') {
                        var url = "/app/space/view?md_id=space&code=17&year=2023&month=03&day=24";
                        let result = confirm('로그인이 필요한 서비스입니다. 로그인하시겠습니까?');
                        if (result) {
                            location.replace('/app/auth/login?returnUrl=' + encodeURIComponent(url));
                        }
                    } else if (data == 'check') {
                        alert('다수의 신청 페이지로 접근한 내역이 존재합니다. 잠시 후 이용해 주세요.');
                        window.location.reload();
                    } else if (data == 'error') {
                        alert('잘못된 접근입니다.');
                        window.location.reload();
                    } else {

                        var link = "/app/reserve_form/reserve_temporary_write?md_id=reserve_form&code=17&year=2023&month=03&day=24";

                        $.ajax({
                            url: link,
                            type: "POST",
                            data: formData,
                            dataType: "json",
                            async: false,
                            success: function (data) {
                                if (data.result == 'true') {
                                    var form = document.getElementById("form_apply");

                                    form.action = "/app/reserve_form/write?md_id=reserve_form";
                                    form.temporary_code.value = data.temporary_code;
                                    form.method = "POST";

                                    form.submit();

                                } else if (data.result == 'error') {
                                    alert('잘못된 접근입니다.');
                                    window.location.reload();
                                }
                            }
                        });

                    }
                }
            });
        });
            });
</script>
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
	
	
	
<%@include file="/WEB-INF/views/include/footer.jsp" %>