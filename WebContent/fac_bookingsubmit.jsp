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

.red-star{
color:red;
}

.bluetowhite{
background-color:white;
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
							<button type="button" class="btn btn-default btn-block btn-original text-left" onclick="location.href='fac_info.jsp'">대관시설정보</button>
							<button type="button" class="btn btn-default btn-block text-left" onclick="location.href='fac_howtobook.jsp'">대관접수안내</button>
							<button type="button" class="btn btn-default btn-block text-left" onclick="location.href='fac_rentalstatus.jsp'">시설대관현황</button>
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
        					<div style="height:1500px;" ><br/>
        					
        					
        					
        						<div class="space-title-wrap" style="white-space:nowrap;">
    								<h3><i class="fa-regular fa-square-full" style="display:inline-block; position:relative;">&nbsp;&nbsp;대관신청</i></h3><br/>
    								
    								
    								
    						<div class="card card-info">
								<div style="position:relative; background-color:white; padding:20px; border-bottom:1px solid #dfdfdf;">
									<div><h3 class="card-title font-black" style="font-weight:bolder;">예약자 정보</h3></div>
									<span style="text-align:end; display:block; color:black; font-weight:bolder;"><i class="fa-solid fa-star-of-life fa-rotate-90 fa-2xs red-star"></i>&nbsp;&nbsp;&nbsp;필수요소</span>
								</div>

								<form class="form-horizontal">
									<div class="card-body">
										<div class="form-group row">
											<label for="inputEmail3" class="col-sm-2 col-form-label">예약자&nbsp;&nbsp;&nbsp;<i class="fa-solid fa-star-of-life fa-rotate-90 fa-2xs red-star"></i></label>
											<div class="col-sm-10">
												<input type="text" class="form-control" placeholder="예약자 이름을 입력해 주세요."/>
											</div>
										</div>
								
									<div class="form-group row">
										<label for="inputPassword3" class="col-sm-2 col-form-label">대관사유&nbsp;&nbsp;&nbsp;<i class="fa-solid fa-star-of-life fa-rotate-90 fa-2xs red-star"></i></label>
										<div class="col-sm-10">
											<textarea class="form-control" placeholder="내용을 구체적으로 입력해 주세요." style="height:800px; resize:none;"></textarea>
										</div>
									</div>
									<div class="form-group row">
										<div class="offset-sm-2 col-sm-10">
											
										</div>
									</div>
									</div>

									<div class="card-footer">
										<button type="submit" class="btn btn-default float-right rounded-lg">결제하기</button>
									</div>
								</form>
							</div>		
    								
    								
    								
    								
    								
    								
    								
    								
    								
    								
    								
    								
    								
    								
    								
    								
    								
    								
    								
    								
    								
    								
    								
    								
    								



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
	
	
	<%@include file="/WEB-INF/views/include/header.jsp" %>
