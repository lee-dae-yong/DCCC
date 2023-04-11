<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        							<div class="w-100" id="rental_list">
									  <ul class="rental_row p-2 d-flex flex-wrap justify-content-between">
									    <c:forEach items="${facilityList }" var="facility">
									    <li class="rental_cell" style="width:49%">
									      <a class="rental-status-inner" href="javascript:rental_search_go('${facility.fac_name }','${facility.fac_no}');">
									        <div class="rental_img_box rentalPicture" data-id="${facility.fac_no}">
									        </div>
									        <div class="info">
									          <div class="tit-box">
									            <div class="tit" style="color:black;">${facility.fac_name }</div>
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

<script>
  window.onload=function(){
	  RentalPictureThumb('<%=request.getContextPath()%>');
  }
  
  function rental_search_go(fac_name,fac_no){
	  location.href='goSearch.do?fac_name='+fac_name+'&fac_no='+fac_no;
  }
</script>

	
