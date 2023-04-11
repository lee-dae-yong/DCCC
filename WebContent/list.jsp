<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
        				<span class="pl-2 pr-4">강습 프로그램 목록 조회</span>
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
								온라인 수강 신청
	        				</div>
							<button type="button" class="btn btn-default btn-block text-left">온라인 수강접수 안내</button>
							<button type="button" class="btn btn-default btn-block text-left">수강프로그램 조회</button>
						</div>
        			</div>
        		</div>
        	</div>
        	<!-- Main content real -->
        	<div class="col-sm-9">
        		<div class="row">
        			<div class="col-sm-12" >
        				<div class="card-body">
        					<div class="aside-naming">
        						강습프로그램 목록 조회 	
        					</div>
        					<div class="row p-4" style="border:1px solid black;height:800px;">
        						
        						<div class="col-sm-7 " style="background:#dfdfdf;" >
        							<h6 class="text-center">요일별</h6>
        							<div  class="mt-1"style="display:flex; height:8%;justify-content:space-around; align-items: center; flex-wrap:wrap;">
        								<button style="width:13%;">월</button>
	        							<button style="width:13%;">화</button>
	        							<button style="width:13%;">수</button>
	        							<button style="width:13%;">목</button>
	        							<button style="width:13%;">금</button>
	        							<button style="width:13%;">토</button>
	        							<button style="width:13%;">일</button>
        							</div>
        						<hr>
        						<h6 class="text-center">종목별</h6>
        							<div  class="mt-1"style="display:flex; height:50%; align-items: center; flex-wrap:wrap;">
	        							<button>풋살</button>
	        							<button>줄넘기</button>
	        							<button>수영</button>
	        							<button>요가</button>
	        						</div>
	        					<hr>
	        					<h6 class="text-center">시간별</h6>
	        						<div  class="mt-1"style="display:flex;height:20%;justify-content:space-between; align-items: center; flex-wrap:wrap;">
		        						새벽~아침
		        							
		        							<c:forEach begin="5" end="8" var="time">
		        								<button style="width:20%;">
		        									${time }:00
		        								</button>
		        							</c:forEach>
		        						
		        						아침~정오
											
		        							<c:forEach begin="9" end="12" var="time">
		        								<button style="width:20%;">
		        									${time }:00
		        								</button>
		        							</c:forEach>		        							
		        						
		        						정오~오후
											
		        							<c:forEach begin="13" end="16" var="time">
		        								<button style="width:20%;">
		        									${time }:00
		        								</button>
		        							</c:forEach>		        							
		        						
		        						오후~저녁
											
		        							<c:forEach begin="17" end="20" var="time">
		        								<button style="width:20%;">
		        									${time }:00
		        								</button>
		        							</c:forEach>		        							
	        							
		        					</div>
        						</div>
        						<div class="col-sm-5 bg-blue" >
        							<div class="text-right">
        								<select class="custom-select" style="width: auto;" data-sortorder="">
					                        <option value="index" selected="selected">종목별로 정렬</option>
					                        <option value="sortData"> 시간별로 정렬</option>
					                     </select>
        							</div>
        							<hr>
        							<div class="mt-2">
        								<ul class="bg-red p-0">

	        									<li style="width:100%; height:40px; list-style: none; background:#ffffff; color:black;">
														sadasdasda								
    	    									</li>
												<li style="width:100%; height:40px; list-style: none; background:#ffffff; color:black;">
														sadasdasda								
    	    									</li>
    	    									<li style="width:100%; height:40px; list-style: none; background:#ffffff; color:black;">
														sadasdasda								
    	    									</li>
												<li style="width:100%; height:40px; list-style: none; background:#ffffff; color:black;">
														sadasdasda								
    	    									</li>																			
        								</ul>
        								
        							</div>

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
<%@ include file="/WEB-INF/views/include/footer.jsp"%>