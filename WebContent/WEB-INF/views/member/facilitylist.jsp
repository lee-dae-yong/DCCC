<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="facilityList" value="${dataMap.facilityList }"/>
<c:set var="pageMaker" value="${dataMap.pageMaker }"/>
<c:set var="cri" value="${pageMaker.cri }"/>


<!-- Main content header -->
<div class="row">
  <div class="col-sm-12">
    <div class="main-content-header">
      <div class="wrapper wrap-m-w m-auto">
        <div class="text-right">
          <span class="pl-2 pr-2">
          <i class="fa-solid fa-house"></i></span> 
          <span class="pl-2 pr-2">
          <i class="fa-solid fa-angle-right"></i></span>
           <span class="pl-2 pr-2">시설안내</span> 
           <span class="pl-2 pr-2">
           <i class="fa-solid fa-angle-right"></i></span> 
           <span class="pl-2 pr-4">운동시설안내</span>
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
                <div class="card-body aside_menu">
                  <div class="aside-naming">시설안내</div>
                  
                  <button type="button" class="btn btn-default btn-block text-left btn-original btn-dccc">
                  	<a href="<%=request.getContextPath()%>/member/facilitylist.do"><span style="color:black;">운동시설안내</span></a></button>
                  <button type="button" class="btn btn-default btn-block text-left btn-original">
                  	<a href="<%=request.getContextPath()%>/member/convenient.do"><span style="color:black;">편의시설안내</span></a></button>
                </div>
              </div>
            </div>
          </div>
          <!-- Main content real -->
          <div class="col-sm-9">
            <div class="row">
              <div class="col-sm-12">
                <div class="card-body">
                  <div class="aside-naming">운동시설안내</div>
                  <section class="content">
                  
                  
                  <c:forEach var="facility" items="${facilityList }"  >
                  <c:if test="${facility.fac_kind eq '1'&& facility.fac_qufen eq '운동시설' }">
                    <div class="card">
                      <div class="card-body row" style="padding:1rem;">
                        <div class="col-5 text-center d-flex align-items-center justify-content-center" style="max-width:50%;flex: 0 0 50%;">
                          <div class="">
                            <div class="input-group mb-3">
                              <div class="mailbox-attachments clearfix" style="text-align: center;">
                                <img src="<%=request.getContextPath()%>/resources/images/facility/${facility.fac_picture}" style="border: 1px solid green; max-height: 200px; height:200px; width: 400px; margin: 0 auto;">
                              </div>
                              <br>
                            </div>
                          </div>
                        </div>
                        <div class="col-6">
                          <div class="form-group">
                            <label for="inputfacname">▶ ${facility.fac_name }</label>
                            <ul class="lv3">
                              <li><strong>시설규모</strong> : ${facility.fac_size }  ㎡</li>
                              <li><strong style="color:#222;:">운영시간</strong> :  평일, 주말: 10:00 ~ 22:00</li>
                              <li><strong>대관료</strong> : 평일 : ${facility.weekday_price }원 / 주말 : ${facility.weekend_price }원(1시간 기준 )</li>
                              <li><strong>시설 소개</strong> : ${facility.fac_introduce }</li>
                            </ul>
                          </div>
                        </div>
                      </div>
                    </div>
                    </c:if>
                    </c:forEach>
                    
                    
                    
                    <%-- <div class="card">
                      <div class="card-body row" style="padding:1rem;">
                        <div class="col-5 text-center d-flex align-items-center justify-content-center" style="max-width:50%;flex: 0 0 50%;">
                          <div class="">
                            <div class="input-group mb-3">
                              <div class="mailbox-attachments clearfix" style="text-align: center;">
                                <img src="<%=request.getContextPath()%>/resources/bootstrap/dist/img/basketball.jpg" style="border: 1px solid green; max-height: 200px; height:200px; width: 400px; margin: 0 auto;">
                              </div>
                              <br>
                            </div>
                          </div>
                        </div>
                        <div class="col-6">
                          <div class="form-group">
                            <label for="inputLicense">▶ 농구장</label>
                            <ul class="lv3">
                              <li><strong>시설규모</strong> : 566㎡</li>
                              <li><strong style="color:#222;:">운영시간</strong> : 평일 : 09:00 ~ 22:00 <br />토요일 및 일요일(2, 4주) : 09:00 ~ 18:00</li>
                              <li><strong>대관료</strong> : 평일 : 80,000원/주말 : 100,000원<br />(1시간 기준 풀코드)</li>
                              <li><strong>휴무안내</strong> : 매월 1, 3, 5주 화요일(정기휴관일) 및<br />법정공휴일 휴관(대체 휴일 포함)</li>
                            </ul>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="card">
                      <div class="card-body row" style="padding:1rem;">
                        <div class="col-5 text-center d-flex align-items-center justify-content-center" style="max-width:50%;flex: 0 0 50%;">
                          <div class="">
                            <div class="input-group mb-3">
                              <div class="mailbox-attachments clearfix" style="text-align: center;">
                                <img src="<%=request.getContextPath()%>/resources/bootstrap/dist/img/futsal.jpg" style="border: 1px solid green; max-height: 200px; height:200px; width: 400px; margin: 0 auto;">
                              </div>
                              <br>
                            </div>
                          </div>
                        </div>
                        <div class="col-6">
                          <div class="form-group">
                            <label for="inputLicense">▶ 풋살장</label>
                            <ul class="lv3">
                              <li><strong>시설규모</strong> : 옥상 277.3㎡  펜스높이 4m</li>
                              <li><strong style="color:#222;:">운영시간</strong> : 평일 : 09:00 ~ 22:00 <br />토요일 및 일요일(2, 4주) : 09:00 ~ 18:00</li>
                              <li><strong>대관료</strong> : 평일 : 90,000원/주말 : 117,000원<br />(2시간 기준 )</li>
                              <li><strong>휴무안내</strong> : 매월 1, 3, 5주 화요일(정기휴관일) 및<br />법정공휴일 휴관(대체 휴일 포함)</li>
                            </ul>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="card">
                      <div class="card-body row" style="padding:1rem;">
                        <div class="col-5 text-center d-flex align-items-center justify-content-center" style="max-width:50%;flex: 0 0 50%;">
                          <div class="">
                            <div class="input-group mb-3">
                              <div class="mailbox-attachments clearfix" style="text-align: center;">
                                <img src="<%=request.getContextPath()%>/resources/bootstrap/dist/img/pingpong.jpg" style="border: 1px solid green; max-height: 200px; height:200px; width: 400px; margin: 0 auto;">
                              </div>
                              <br>
                            </div>
                          </div>
                        </div>
                        <div class="col-6">
                          <div class="form-group">
                            <label for="inputLicense">▶ 탁구장</label>
                            <ul class="lv3">
                              <li><strong>시설규모</strong> : 167㎡</li>
                              <li><strong style="color:#222;:">운영시간</strong> : 평일 : 09:00 ~ 22:00 <br />토요일 및 일요일(2, 4주) : 09:00 ~ 18:00</li>
                              <li><strong>대관료</strong> : 평일 : 70,000원/주말 : 80,000원(1시간 기준 )</li>
                              <li><strong>휴무안내</strong> : 매월 1, 3, 5주 화요일(정기휴관일) 및<br />법정공휴일 휴관(대체 휴일 포함)</li>
                            </ul>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="card">
                      <div class="card-body row" style="padding:1rem;">
                        <div class="col-5 text-center d-flex align-items-center justify-content-center" style="max-width:50%;flex: 0 0 50%;">
                          <div class="">
                            <div class="input-group mb-3">
                              <div class="mailbox-attachments clearfix" style="text-align: center;">
                                <img src="<%=request.getContextPath()%>/resources/bootstrap/dist/img/swimmingpool.jpg" style="border: 1px solid green; max-height: 200px; height:200px; width: 400px; margin: 0 auto;">
                              </div>
                              <br>
                            </div>
                          </div>
                        </div>
                        <div class="col-6">
                          <div class="form-group">
                            <label for="inputLicense">▶ 수영장</label>
                            <ul class="lv3">
                              <li><strong>시설규모</strong> : 1383㎡</li>
                              <li><strong style="color:#222;:">운영시간</strong> : 평일 : 09:00 ~ 22:00 <br />토요일 및 일요일(2, 4주) : 09:00 ~ 18:00</li>
                              <li><strong>대관료</strong> : 평일 : 100,000원/레인 주말 : 140,000원/레인 (1시간 기준 )</li>
                              <li><strong>휴무안내</strong> : 매월 1, 3, 5주 화요일(정기휴관일) 및<br />법정공휴일 휴관(대체 휴일 포함)</li>
                            </ul>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="card">
                      <div class="card-body row" style="padding:1rem;">
                        <div class="col-5 text-center d-flex align-items-center justify-content-center" style="max-width:50%;flex: 0 0 50%;">
                          <div class="">
                            <div class="input-group mb-3">
                              <div class="mailbox-attachments clearfix" style="text-align: center;">
                                <img src="<%=request.getContextPath()%>/resources/bootstrap/dist/img/tennis.jpg" style="border: 1px solid green; max-height: 200px; height:200px; width: 400px; margin: 0 auto;">
                              </div>
                              <br>
                            </div>
                          </div>
                        </div>
                        <div class="col-6">
                          <div class="form-group">
                            <label for="inputLicense">▶ 테니스장</label>
                            <ul class="lv3">
                              <li><strong>시설규모</strong> : 566㎡</li>
                              <li><strong style="color:#222;:">운영시간</strong> : 평일 : 09:00 ~ 22:00 <br />토요일 및 일요일(2, 4주) : 09:00 ~ 18:00</li>
                              <li><strong>대관료</strong> : 평일 : 82,000원 주말 : 107,000원 <br />(1시간 기준 )</li>
                              <li><strong>휴무안내</strong> : 매월 1, 3, 5주 화요일(정기휴관일) 및<br />법정공휴일 휴관(대체 휴일 포함)</li>
                            </ul>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="card">
                      <div class="card-body row" style="padding:1rem;">
                        <div class="col-5 text-center d-flex align-items-center justify-content-center" style="max-width:50%;flex: 0 0 50%;">
                          <div class="">
                            <div class="input-group mb-3">
                              <div class="mailbox-attachments clearfix" style="text-align: center;">
                                <img src="<%=request.getContextPath()%>/resources/bootstrap/dist/img/footvolley.jpg" style="border: 1px solid green; max-height: 200px; height:200px; width: 400px; margin: 0 auto;">
                              </div>
                              <br>
                            </div>
                          </div>
                        </div>
                        <div class="col-6">
                          <div class="form-group">
                            <label for="inputLicense">▶ 족구장</label>
                            <ul class="lv3">
                              <li><strong>시설규모</strong> : 484㎡</li>
                              <li><strong style="color:#222;:">운영시간</strong> : 평일 : 09:00 ~ 22:00 <br />토요일 및 일요일(2, 4주) : 09:00 ~ 18:00</li>
                              <li><strong>대관료</strong> : 평일 : 82,000원 주말 : 107,000원<br /> (1시간 기준 )</li>
                              <li><strong>휴무안내</strong> : 매월 1, 3, 5주 화요일(정기휴관일) 및<br />법정공휴일 휴관(대체 휴일 포함)</li>
                            </ul>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="card">
                      <div class="card-body row" style="padding:1rem;">
                        <div class="col-5 text-center d-flex align-items-center justify-content-center" style="max-width:50%;flex: 0 0 50%;">
                          <div class="">
                            <div class="input-group mb-3">
                              <div class="mailbox-attachments clearfix" style="text-align: center;">
                                <img src="<%=request.getContextPath()%>/resources/bootstrap/dist/img/business-room.jpg" style="border: 1px solid green; max-height: 200px; height:200px; width: 400px; margin: 0 auto;">
                              </div>
                              <br>
                            </div>
                          </div>
                        </div>
                        <div class="col-6">
                          <div class="form-group">
                            <label for="inputLicense">▶ 비즈니스 회의룸</label>
                            <ul class="lv3">
                              <li><strong>시설규모</strong> : 20㎡</li>
                              <li><strong style="color:#222;:">운영시간</strong> : 평일 : 09:00 ~ 22:00 <br />토요일 및 일요일(2, 4주) : 09:00 ~ 18:00</li>
                              <li><strong>대관료</strong> : 평일 : 12,000원 주말 : 18,000원 (1시간 기준 )</li>
                              <li><strong>휴무안내</strong> : 매월 1, 3, 5주 화요일(정기휴관일) 및<br />법정공휴일 휴관(대체 휴일 포함)</li>
                            </ul>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="card">
                      <div class="card-body row" style="padding:1rem;">
                        <div class="col-5 text-center d-flex align-items-center justify-content-center" style="max-width:50%;flex: 0 0 50%;">
                          <div class="">
                            <div class="input-group mb-3">
                              <div class="mailbox-attachments clearfix" style="text-align: center;">
                                <img src="<%=request.getContextPath()%>/resources/bootstrap/dist/img/shitingshi.jpg" style="border: 1px solid green; max-height: 200px; height:200px; width: 400px; margin: 0 auto;">
                              </div>
                              <br>
                            </div>
                          </div>
                        </div>
                        <div class="col-6">
                          <div class="form-group">
                            <label for="inputLicense">▶ 시청각실</label>
                            <ul class="lv3">
                              <li><strong>시설규모</strong> : 364.31㎡</li>
                              <li><strong style="color:#222;:">운영시간</strong> : 평일 : 09:00 ~ 22:00 <br />토요일 및 일요일(2, 4주) : 09:00 ~ 18:00</li>
                              <li><strong>대관료</strong> : 평일 : 150,000원 주말 : 200,000원 <br />(1시간 기준 )</li>
                              <li><strong>휴무안내</strong> : 매월 1, 3, 5주 화요일(정기휴관일) 및<br />법정공휴일 휴관(대체 휴일 포함)</li>
                            </ul>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="card">
                      <div class="card-body row" style="padding:1rem;">
                        <div class="col-5 text-center d-flex align-items-center justify-content-center" style="max-width:50%;flex: 0 0 50%;">
                          <div class="">
                            <div class="input-group mb-3">
                              <div class="mailbox-attachments clearfix" style="text-align: center;">
                                <img src="<%=request.getContextPath()%>/resources/bootstrap/dist/img/gx-room.jpg" style="border: 1px solid green; max-height: 200px; height:200px; width: 400px; margin: 0 auto;">
                              </div>
                              <br>
                            </div>
                          </div>
                        </div>
                        <div class="col-6">
                          <div class="form-group">
                            <label for="inputLicense">▶ 피트니스룸</label>
                            <ul class="lv3">
                              <li><strong>시설규모</strong> : 114㎡</li>
                              <li><strong style="color:#222;:">운영시간</strong> : 평일 : 09:00 ~ 22:00 <br />토요일 및 일요일(2, 4주) : 09:00 ~ 18:00</li>
                              <li><strong>대관료</strong> : 평일 : 170,000원 주말 : 250,000원 <br />(1시간 기준 )</li>
                              <li><strong>휴무안내</strong> : 매월 1, 3, 5주 화요일(정기휴관일) 및<br />법정공휴일 휴관(대체 휴일 포함)</li>
                            </ul>
                          </div>
                        </div>
                      </div>
                    </div> --%>
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
