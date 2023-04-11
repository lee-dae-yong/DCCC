<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
										.modal_bg {
		
		display: none;
		width: 100%;
		height: 100%;
		position: fixed; 
		top: 0;
		left: 0;
		right: 0;
		background: rgba(0, 0, 0, 0.6);
		z-index: 999; 

	}
	
	.modal_wrap {
		
		display: none;
		position: absolute; 
		top: 50%;
		left: 50%;
		transform:translate(-70%,-50%);
		z-index: 1000; 

	}
									</style>			
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bPopup/0.11.0/jquery.bpopup.min.js"></script>
 	<link rel="stylesheet" property="stylesheet" href='<%=request.getContextPath()%>/resources/fullcalendar//main.min.css'/>
    <script src='<%=request.getContextPath()%>/resources/fullcalendar/main.min.js'></script>
      <!-- Main content header -->
        <div class="row">
        	<div class="col-sm-12">
        		<div class="main-content-header">
        			<div class="text-right wrapper wrap-m-w m-auto">
        				<span class="pl-2 pr-2"><i class="fa-solid fa-house"></i></span>
        				<span class="pl-2 pr-2"><i class="fa-solid fa-angle-right"></i></span>
        				<span class="pl-2 pr-2">시설대관안내</span>
        				<span class="pl-2 pr-2"><i class="fa-solid fa-angle-right"></i></span>
        				<span class="pl-2 pr-4">시설대관신청</span>
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
	        				<div class="aside-naming">
	        					시설대관안내
	        				</div>
							<button type="button" class="btn btn-default btn-block text-left btn-original" onclick="location.href='main.do'">대관접수안내</button>
							<button type="button" class="btn btn-default btn-block text-left btn-original btn-dccc" onclick="location.href='search.do'">시설대관신청</button>
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
        						시설대관신청
        					</div>
        					<div class="card card-body">
        						<div class="row">
        							<div class="space-title-wrap" style="white-space:nowrap">
    								<h3><i class="fa-regular fa-square-full" style="display:inline-block; position:relative;">&nbsp;&nbsp;대관현황</i></h3><br>
  									   <p>원하는 시설을 선택하여 대관일을 선택하시면 대관현황을 보실 수 있습니다.</p>
								</div>
        						</div>
        						<div class="row">
        							<div class="col-sm-12" id="back-btn">
										<div class="back_btn d-inline pl-3" onclick="javascript:history.back();">
											<i class="fa-solid fa-arrow-left"></i>뒤로가기
										</div>
									</div>
        							<div class="col-sm-12" id="rental_list2"> 
										<div class="w-100" id="div_rental_list2">
									 		<ul class="rental_row p-2 d-flex renList">
												<c:forEach items="${facilityList }" var="facility">
													<li class="rental_cell">
														<a class="rental-status-inner" data-id="${facility.fac_name }" href="javascript:rental_time_search_go('${facility.fac_name}','${facility.fac_no }');">
															<div class="rental_img_box rentalPicture" data-id="${fac_no}"></div>
															<div class="info">
																<div class="tit-box">
																	<div class="tit" style="color:black;">${facility.fac_name}</div>
																	<div class="color-box cancel-bg"></div>
																</div>
																<span class="state magam">조회</span>
															</div>
														</a>
													</li>
												</c:forEach>
											</ul>
										</div>
									</div>
        						</div>
        						<div id="calendar">
        						</div>
        						<div class="modal_bg" onClick="javascript:popClose();"></div>
									
													
								<div class="modal_wrap">
									<div class="modal-content bg-primary">
									<div class="modal-header">
									<h4 class="modal-title"></h4><h4 class="modal-title pl-5 modal-title-right"></h4>
									<button type="button" class="close" data-dismiss="modal" aria-label="Close" onClick="javascript:popClose();">
									<span aria-hidden="true">×</span>
									</button>
									</div>
									<div class="modal-body">
									
										<c:forEach var="time" begin="10" end="20" step="2">
				                           <li class="time_list" data-id="${time }" onclick="rental_go('${time}');">
				                              <a class=" mb-1" style="display:block; padding:15px 5px;">
				                                 ${time }:00 <span class="float-right d-none">예약완료</span>
				                              </a>
				                              
				                           </li>
				                        </c:forEach>   
									</div>
									<div class="modal-footer justify-content-between">
									<button type="button" class="btn btn-outline-light" data-dismiss="modal">Close</button>
									<button type="button" class="btn btn-outline-light">Save changes</button>
									</div>
									</div>
								</div>

        						
        						
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
	<!-- main-content -->
<form role="form">
	<input type="hidden" name="fac_date">
	<input type="hidden" name="fac_no">
</form>

<form role="rentalForm">
	<input type="text" name="book_date">
	<input type="text" name="facility_no">
	<input type="text" name="member_id" value="${loginUser.mem_id }">
	<input type="text" name="book_time">
</form>
<script>
  window.onload=function(){
	  RentalPictureThumb('<%=request.getContextPath()%>');
  }
  var lastName = "";
  var newFacNo = "";
	  function rental_time_search_go(fac_name,fac_no){
		  console.log("lastName 1= " + lastName);
			if(lastName != ""){
			  $('a[data-id='+lastName+']').removeClass('rental-status-inner-hover');
			};
		  $('a[data-id='+fac_name+']').addClass('rental-status-inner-hover');
		  
		  lastName = fac_name;
		  newFacNo = fac_no;		  
  }
</script>

    <script>

      document.addEventListener('DOMContentLoaded', function() {
        var calendarEl = document.getElementById('calendar');
        var calendar = new FullCalendar.Calendar(calendarEl, {
          initialView: 'dayGridMonth',
          headerToolbar : { // 헤더에 표시할 툴 바
           start : 'prev next today',
           center : 'title',
           end : ''
        },
        titleFormat : function(date) {
           return date.date.year + '년 ' + (parseInt(date.date.month) + 1) + '월';
        },
        //initialDate: '2021-07-15', // 초기 날짜 설정 (설정하지 않으면 오늘 날짜가 보인다.)
        selectable : true, // 달력 일자 드래그 설정가능
        droppable : true,
        editable : true,
        nowIndicator: true, // 현재 시간 마크
        locale: 'ko' // 한국어 설정
        });
        calendar.render();
        
        calendar.on('dateClick', function(info) {
        	  if(lastName == ""){
        		  alert("시설을 먼저 선택해 주세요!");
        		  return;
        	  }
        	  $('.modal-title').text(info.dateStr);
        	  $('.modal-title-right').text(lastName);
        	  
        	  $('form[role="form"] input[name="fac_no"]').val(newFacNo);
        	  $('form[role="form"] input[name="fac_date"]').val(info.dateStr);
        	  var newForm = $('form[role="form"]'); 
        	  $.ajax({
        		  url:'checkTime.do',
        		  data:newForm.serialize(),
        		  method:'get',
        		  success:function(data){
        				  $('li.time_list').removeClass('time_list_selected');
        				  $('li.time_list span.float-right').addClass('d-none');
        			  $(data).each(function(){
        					$('li[data-id='+this.book_time+']').addClass('time_list_selected');
        					$('li[data-id='+this.book_time+'] span.float-right').removeClass('d-none');
        					});
        				
        		  },error:function(error){
        			  alert("에러;");
        		  }
        	  })
        	   
        	  
        	  
        	  
        	  
        	  
        	  popOpen();
        	});

      });

      function popOpen() {

    	    var modalPop = $('.modal_wrap');
    	    var modalBg = $('.modal_bg'); 

    	    $(modalPop).show();
    	    $(modalBg).show();

    	}

    	 function popClose() {
    	   var modalPop = $('.modal_wrap');
    	   var modalBg = $('.modal_bg');

    	   $(modalPop).hide();
    	   $(modalBg).hide();

    	}
    	 
    	 
    	 
    	 function rental_go(data_num){
    		 if($('.time_list[data-id='+data_num+']').hasClass('time_list_selected')){
    			 return;
    		 }
    		$('form[role="rentalForm"] input[name="facility_no"]').val($('form[role="form"] input[name="fac_no"]').val());
       	  	$('form[role="rentalForm"] input[name="book_date"]').val($('form[role="form"] input[name="fac_date"]').val());
	       	$('form[role="rentalForm"] input[name="book_time"]').val(data_num);
	       	var rentalForm = $('form[role="rentalForm"]');
	       	$.ajax({
      		  url:'duplication.do',
      		  data:rentalForm.serialize(),
      		  method:'get',
      		  success:function(data){
      				  if(data == 1){
      					  alert("하루에 한개 시설만 예약 가능합니다!");
      					  return;
      				  }else{
      					var ys = confirm("해당 시간 시설 대관 신청을 하시겠습니까?");
	      		      	  if(ys){
	      		      		  rentalForm.attr({
	      		      			  'action':'regist.do',
	      		      			  'method':'post'
	      		      		  }).submit();
	      		      	  }			      					  
      				  }
      		  },error:function(error){
      			  alert("에러;");
      		  }
      	  })
      	  
      	  
    	 }
    	 
    	 
    	 
    	 
    	 
    	 
    	 
    	 
    	 
    	 
    </script>

    