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
            <h4 class="schedule-list-date">2023년03월 21일(목)$booking.date</h4>

                                                <div class="popup-none-time">
                        <i class="fa-regular fa-calendar-xmark"></i>
                        <span>신청 가능한 시간이 없습니다.</span>
                    </div>
                            


            <div class="row gx-10px">
                <div class="col-6">
                    <button type="button" class="light-btn" data-dismiss="modal" aria-hidden="true">나가기</button>
                </div>
                <div class="col-6">
                                    <a href="javascript:void(0);" class="theme-btn" disabled="" style="text-decoration:none;">신청하기
                  </a>
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