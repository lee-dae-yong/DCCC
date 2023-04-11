<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/common.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/wezon.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/style_wezon.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/basic.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/index.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="modal-dialog modal-sm modal-dialog-centered">
    <div class="modal-content">
        <div class="modal-header">
            <h4 class="modal-title" id="modal_title">$facility.fac_name</h4>
        </div>
        <div class="modal-body">
            <h4 class="schedule-list-date">2023년03월 24일(목)$booking.date</h4>      

                            <div class="schedule-list-box">
                                          <div class="schedule-list-item ">
                        <span class="date">09:00 ~ 10:00                        </span>
                        <span class="state">신청가능 $booking_enable if문 </span>       
                      </div>
                                          <div class="schedule-list-item ">
                        <span class="date">10:00 ~ 11:00                        </span>
                        <span class="state">신청가능$booking_enable if문</span>
                      </div>
                                          <div class="schedule-list-item ">
                        <span class="date">11:00 ~ 12:00                        </span>
                        <span class="state">신청가능$booking_enable if문</span>
                      </div>
                                          <div class="schedule-list-item ">
                        <span class="date">12:00 ~ 13:00                        </span>
                        <span class="state">신청가능$booking_enable if문</span>
                      </div>
                                          <div class="schedule-list-item ">
                        <span class="date">13:00 ~ 14:00                        </span>
                        <span class="state">신청가능$booking_enable if문</span>
                      </div>
                                          <div class="schedule-list-item ">
                        <span class="date">14:00 ~ 15:00                        </span>
                        <span class="state">신청가능$booking_enable if문</span>
                      </div>
                                          <div class="schedule-list-item ">
                        <span class="date">15:00 ~ 16:00                        </span>
                        <span class="state">신청가능$booking_enable if문</span>
                      </div>
                                          <div class="schedule-list-item disabled">
                        <span class="date">16:00 ~ 17:00                        </span>
                        <span class="state">신청불가$booking_enable if문</span>
                      </div>
                                          <div class="schedule-list-item disabled">
                        <span class="date">17:00 ~ 18:00                        </span>
                        <span class="state">신청불가$booking_enable if문</span>
                      </div>
                                        
                      		</div>
            


            <div class=" gx-10px">
                <div class="col-6" >
                    <button type="button" class="light-btn" data-dismiss="modal" aria-hidden="true">나가기</button>
                </div>
                <div class="col-6">
                  <a href="/app/space/view?md_id=space&amp;code=16&amp;year=2023&amp;month=03&amp;day=24" class="theme-btn light-btn" 
                  onmouseover="this.style.backgroundColor='#a9d2b4'" onmouseout="this.style.backgroundColor='#ffffff'" style="transition:0.3s; color:black; text-decoration:none;">신청하기</a>
               	</div>
            </div>
        </div>
    </div>
    <script>
        $(document).ready(function () {

        });
    </script>
    <script src="/assets/common/js/wezon_modal.php?directory=/app&amp;class=reserve_form&amp;params=%3Fmd_id%3Dspace"></script>
</div>

</body>
</html>