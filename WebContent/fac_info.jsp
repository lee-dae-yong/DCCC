<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="facilityList" value="${dataMap.facilityList }"/>
<c:set var="pageMaker" value="${dataMap.pageMaker }"/>
<c:set var="cri" value="${pageMaker.cri }"/>


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
        				<span class="pl-2 pr-4">대관시설정보</span>
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
							<button type="button" class="btn btn-default btn-block text-left btn-original btn-dccc" onclick="location.href='fac_info.do'">대관시설정보</button>
							<button type="button" class="btn btn-default btn-block text-left btn-original" onclick="location.href='fac_howtobook.do'">대관접수안내</button>
							<button type="button" class="btn btn-default btn-block text-left btn-original " onclick="location.href='fac_rentalstatus.do'">시설대관현황</button>
						</div>
        			</div>
        		</div>
        	</div>
        	<!-- Main content real -->
        	<div class="col-sm-9">
        		<div class="row">0
        			<div class="col-sm-12">
        				<div class="card-body">
        					<div class="aside-naming">
        						대관시설정보
        						<select class="form-control col-md-3" name="perPageNum" id="perPageNum" onchange="">
        							<option value="10" ${cri.perPageNum eq '10' ? 'selected' : '' }>정렬개수</option>
        							<option value="3" ${cri.perPageNum eq '3' ? 'selected' : '' }>3개씩</option>
        							<option value="5" ${cri.perPageNum eq '5' ? 'selected' : '' }>5개씩</option>
        						</select>
        					</div>
        					<div style="height:6100px;"><br/>
        					
        					
        					
        					
        					<c:forEach var="facility" items="${facilityList }">
        						<i class="fa-regular fa-square-full">&nbsp;&nbsp;${facility.fac_name }</i><br/><br/>
        						<img src=${facility.fac_picture } class="img-fluid" style="width:400px; height:200px;"/><br/><br/>
        						<div class="box-body">
									<table class="table table-bordered">
										<tbody>
										<tr>
											<th style="width: 100px; text-align:center; background:#a9d2b4">시설규모</th>
											<td>${facility.fac_size }</td>
										</tr>
										
										<tr>
											<th style="width: 100px; text-align:center; background:#a9d2b4"><br/>대관료</th>
											<td>※ &nbsp; 2시간 기준 <br/>평일 : ${facility_price.weekday_price }원<br/>주말 : ${facility_price.weekend_price }원 </td>
										</tr>
										
										<tr>
											<th style="width: 100p; text-align:center; background:#a9d2b4">운영시간</th>
											<td>평일 : 09:00 ~ 22:00,&nbsp; <br/>토요일 및 일요일(2, 4주) :  &nbsp;09:00 ~ 18:00</td>
										</tr>
										
										<tr>
											<th style="width: 100px; text-align:center; background:#a9d2b4">휴무안내</th>
											<td>매월 1, 3, 5주 화요일(정기휴관일) 및 법정공휴일 휴관(대체 휴일 포함)</td>
										</tr>
										</tbody>
									</table>
								</div>
        					</c:forEach>
        					
        					
        					
        					
        					
        					
        					
        					
        					
        					
        					
        					
        					
        					
        					
        						<%-- <i class="fa-regular fa-square-full">&nbsp;&nbsp;풋살장</i><br/><br/>
        						<img src="<%=request.getContextPath()%>/resources/images/futsal.jpg" class="img-fluid" alt="futsal" style="width:400px; height:200px;"/><br/><br/>
        						<div class="box-body">
									<table class="table table-bordered">
										<tbody>
										<tr>
											<th style="width: 100px; text-align:center; background:#a9d2b4">시설규모</th>
											<td>옥상 384.3㎡, &nbsp;&nbsp;펜스높이 4m</td>
										</tr>
										
										<tr>
											<th style="width: 100px; text-align:center; background:#a9d2b4"><br/>대관료</th>
											<td>※ &nbsp; 2시간 기준 <br/>평일 : 90,000원<br/>주말 : 117,000원 </td>
										</tr>
										
										<tr>
											<th style="width: 100p; text-align:center; background:#a9d2b4">운영시간</th>
											<td>평일 : 09:00 ~ 22:00,&nbsp; <br/>토요일 및 일요일(2, 4주) :  &nbsp;09:00 ~ 18:00</td>
										</tr>
										
										<tr>
											<th style="width: 100px; text-align:center; background:#a9d2b4">휴무안내</th>
											<td>매월 1, 3, 5주 화요일(정기휴관일) 및 법정공휴일 휴관(대체 휴일 포함)</td>
										</tr>
										</tbody>
									</table>
								</div>
								
								<br/>
								<br/>
								
        					
        						<i class="fa-regular fa-square-full">&nbsp;&nbsp;테니스장</i><br/><br/>
        						<img src="<%=request.getContextPath()%>/resources/images/tennis.jpg" class="img-fluid" alt="" style="width:400px; height:200px;"/><br/><br/>
        						<div class="box-body">
									<table class="table table-bordered">
										<tbody>
										<tr>
											<th style="width: 100px; text-align:center; background:#a9d2b4">시설규모</th>
											<td>833.34㎡</td>
										</tr>
										
										<tr>
											<th style="width: 100px; text-align:center; background:#a9d2b4"><br/>대관료</th>
											<td>※ &nbsp; 1시간 기준 <br/>평일 : 82,000원<br/>주말 : 107,000원</td>
										</tr>
										
										<tr>
											<th style="width: 100p; text-align:center; background:#a9d2b4">운영시간</th>
											<td>평일 : 09:00 ~ 22:00,&nbsp; <br/>토요일 및 일요일(2, 4주) :  &nbsp;09:00 ~ 18:00</td>
										</tr>
										
										<tr>
											<th style="width: 100px; text-align:center; background:#a9d2b4">휴무안내</th>
											<td>매월 1, 3, 5주 화요일(정기휴관일) 및 법정공휴일 휴관(대체 휴일 포함)</td>
										</tr>
										</tbody>
									</table>
								</div>
								
								<br/>
								<br/>
								
								<i class="fa-regular fa-square-full">&nbsp;&nbsp;수영장</i><br/><br/>
        						<img src="<%=request.getContextPath()%>/resources/images/swimmingpool.jpg" class="img-fluid" alt="" style="width:400px; height:200px;"/><br/><br/>
        						<div class="box-body">
									<table class="table table-bordered">
										<tbody>
										<tr>
											<th style="width: 100px; text-align:center; background:#a9d2b4">시설규모</th>
											<td>673.99㎡</td>
										</tr>
										
										<tr>
											<th style="width: 100px; text-align:center; background:#a9d2b4"><br/>대관료</th>
											<td>※ &nbsp; 1시간 기준 <br/>평일 : 100,000원/레인<br/>주말 : 140,000원/레인</td>
										</tr>
										
										<tr>
											<th style="width: 100p; text-align:center; background:#a9d2b4">운영시간</th>
											<td>평일 : 09:00 ~ 22:00,&nbsp; <br/>토요일 및 일요일(2, 4주) :  &nbsp;09:00 ~ 18:00</td>
										</tr>
										
										<tr>
											<th style="width: 100px; text-align:center; background:#a9d2b4">휴무안내</th>
											<td>매월 1, 3, 5주 화요일(정기휴관일) 및 법정공휴일 휴관(대체 휴일 포함)</td>
										</tr>
										</tbody>
									</table>
								</div>
								
								<br/>
								<br/>
								
								<i class="fa-regular fa-square-full">&nbsp;&nbsp;농구장</i><br/><br/>
        						<img src="<%=request.getContextPath()%>/resources/images/basketball.jpg" class="img-fluid" alt="" style="width:400px; height:200px;"/><br/><br/>
        						<div class="box-body">
									<table class="table table-bordered">
										<tbody>
										<tr>
											<th style="width: 100px; text-align:center; background:#a9d2b4">시설규모</th>
											<td>601.09㎡</td>
										</tr>
										
										<tr>
											<th style="width: 100px; text-align:center; background:#a9d2b4"><br/>대관료</th>
											<td>※ &nbsp; 1시간 기준 (풀코트) <br/>평일 : 80,000원<br/>주말 : 100,000원</td>
										</tr>
										
										<tr>
											<th style="width: 100p; text-align:center; background:#a9d2b4">운영시간</th>
											<td>평일 : 09:00 ~ 22:00,&nbsp; <br/>토요일 및 일요일(2, 4주) :  &nbsp;09:00 ~ 18:00</td>
										</tr>
										
										<tr>
											<th style="width: 100px; text-align:center; background:#a9d2b4">휴무안내</th>
											<td>매월 1, 3, 5주 화요일(정기휴관일) 및 법정공휴일 휴관(대체 휴일 포함)</td>
										</tr>
										</tbody>
									</table>
								</div>
								
								<br/>
								<br/>
								
								<i class="fa-regular fa-square-full">&nbsp;&nbsp;탁구장</i><br/><br/>
        						<img src="<%=request.getContextPath()%>/resources/images/pingpong.jpg" class="img-fluid" alt="" style="width:400px; height:200px;"/><br/><br/>
        						<div class="box-body">
									<table class="table table-bordered">
										<tbody>
										<tr>
											<th style="width: 100px; text-align:center; background:#a9d2b4">시설규모</th>
											<td>557.06㎡</td>
										</tr>
										
										<tr>
											<th style="width: 100px; text-align:center; background:#a9d2b4"><br/>대관료</th>
											<td>※ &nbsp; 1시간 기준 <br/>평일 : 70,000원<br/>주말 : 80,000원</td>
										</tr>
										
										<tr>
											<th style="width: 100p; text-align:center; background:#a9d2b4">운영시간</th>
											<td>평일 : 09:00 ~ 22:00,&nbsp; <br/>토요일 및 일요일(2, 4주) :  &nbsp;09:00 ~ 18:00</td>
										</tr>
										
										<tr>
											<th style="width: 100px; text-align:center; background:#a9d2b4">휴무안내</th>
											<td>매월 1, 3, 5주 화요일(정기휴관일) 및 법정공휴일 휴관(대체 휴일 포함)</td>
										</tr>
										</tbody>
									</table>
								</div>
								
								<br/>
								<br/>
								
								<i class="fa-regular fa-square-full">&nbsp;&nbsp;배드민턴장</i><br/><br/>
        						<img src="<%=request.getContextPath()%>/resources/images/badminton.jpg" class="img-fluid" alt="" style="width:400px; height:200px;"/><br/><br/>
        						<div class="box-body">
									<table class="table table-bordered">
										<tbody>
										<tr>
											<th style="width: 100px; text-align:center; background:#a9d2b4">시설규모</th>
											<td>667.05㎡</td>
										</tr>
										
										<tr>
											<th style="width: 100px; text-align:center; background:#a9d2b4"><br/>대관료</th>
											<td>※ &nbsp; 1시간 기준 <br/>평일 : 70,000원<br/>주말 : 80,000원</td>
										</tr>
										
										<tr>
											<th style="width: 100p; text-align:center; background:#a9d2b4">운영시간</th>
											<td>평일 : 09:00 ~ 22:00,&nbsp; <br/>토요일 및 일요일(2, 4주) :  &nbsp;09:00 ~ 18:00</td>
										</tr>
										
										<tr>
											<th style="width: 100px; text-align:center; background:#a9d2b4">휴무안내</th>
											<td>매월 1, 3, 5주 화요일(정기휴관일) 및 법정공휴일 휴관(대체 휴일 포함)</td>
										</tr>
										</tbody>
									</table>
								</div>
								
								<br/>
								<br/>
								
								<i class="fa-regular fa-square-full">&nbsp;&nbsp;족구장</i><br/><br/>
        						<img src="<%=request.getContextPath()%>/resources/images/footvolley.jpg" class="img-fluid" alt="" style="width:400px; height:200px;"/><br/><br/>
        						<div class="box-body">
									<table class="table table-bordered">
										<tbody>
										<tr>
											<th style="width: 100px; text-align:center; background:#a9d2b4">시설규모</th>
											<td>755.5㎡</td>
										</tr>
										
										<tr>
											<th style="width: 100px; text-align:center; background:#a9d2b4"><br/>대관료</th>
											<td>※ &nbsp; 1시간 기준 <br/>평일 : 82,000원<br/>주말 : 107,000원</td>
										</tr>
										
										<tr>
											<th style="width: 100p; text-align:center; background:#a9d2b4">운영시간</th>
											<td>평일 : 09:00 ~ 22:00,&nbsp; <br/>토요일 및 일요일(2, 4주) :  &nbsp;09:00 ~ 18:00</td>
										</tr>
										
										<tr>
											<th style="width: 100px; text-align:center; background:#a9d2b4">휴무안내</th>
											<td>매월 1, 3, 5주 화요일(정기휴관일) 및 법정공휴일 휴관(대체 휴일 포함)</td>
										</tr>
										</tbody>
									</table>
								</div>
								
								<br/>
								<br/>
								
								<i class="fa-regular fa-square-full">&nbsp;&nbsp;비즈니스 회의룸</i><br/><br/>
        						<img src="<%=request.getContextPath()%>/resources/images/business-room.jpg" class="img-fluid" alt="" style="width:400px; height:200px;"/><br/><br/>
        						<div class="box-body">
									<table class="table table-bordered">
										<tbody>
										<tr>
											<th style="width: 100px; text-align:center; background:#a9d2b4">시설규모</th>
											<td>187.23㎡</td>
										</tr>
										
										<tr>
											<th style="width: 100px; text-align:center; background:#a9d2b4"><br/>대관료</th>
											<td>※ &nbsp; 1시간 기준 <br/>평일 : 12,000원<br/>주말 : 18,000원</td>
										</tr>
										
										<tr>
											<th style="width: 100p; text-align:center; background:#a9d2b4">운영시간</th>
											<td>평일 : 09:00 ~ 22:00,&nbsp; <br/>토요일 및 일요일(2, 4주) :  &nbsp;09:00 ~ 18:00</td>
										</tr>
										
										<tr>
											<th style="width: 100px; text-align:center; background:#a9d2b4">휴무안내</th>
											<td>매월 1, 3, 5주 화요일(정기휴관일) 및 법정공휴일 휴관(대체 휴일 포함)</td>
										</tr>
										</tbody>
									</table>
								</div>
								
								<br/>
								<br/>
								
								<i class="fa-regular fa-square-full">&nbsp;&nbsp;시청각실</i><br/><br/>
        						<img src="<%=request.getContextPath()%>/resources/images/shitingshi.jpg" class="img-fluid" alt="" style="width:400px; height:200px;"/><br/><br/>
        						<div class="box-body">
									<table class="table table-bordered">
										<tbody>
										<tr>
											<th style="width: 100px; text-align:center; background:#a9d2b4">시설규모</th>
											<td>315.57㎡</td>
										</tr>
										
										<tr>
											<th style="width: 100px; text-align:center; background:#a9d2b4"><br/>대관료</th>
											<td>※ &nbsp; 1시간 기준 <br/>평일 : 150,000원<br/>주말 : 200,000원</td>
										</tr>
										
										<tr>
											<th style="width: 100p; text-align:center; background:#a9d2b4">운영시간</th>
											<td>평일 : 09:00 ~ 22:00,&nbsp; <br/>토요일 및 일요일(2, 4주) :  &nbsp;09:00 ~ 18:00</td>
										</tr>
										
										<tr>
											<th style="width: 100px; text-align:center; background:#a9d2b4">휴무안내</th>
											<td>매월 1, 3, 5주 화요일(정기휴관일) 및 법정공휴일 휴관(대체 휴일 포함)</td>
										</tr>
										</tbody>
									</table>
								</div>
								
								<br/>
								<br/>
								
								<i class="fa-regular fa-square-full">&nbsp;&nbsp;피트니스룸</i><br/><br/>
        						<img src="<%=request.getContextPath()%>/resources/images/fitness.jpg" class="img-fluid" alt="" style="width:400px; height:200px;"/><br/><br/>
        						<div class="box-body">
									<table class="table table-bordered">
										<tbody>
										<tr>
											<th style="width: 100px; text-align:center; background:#a9d2b4">시설규모</th>
											<td>352㎡</td>
										</tr>
										
										<tr>
											<th style="width: 100px; text-align:center; background:#a9d2b4"><br/>대관료</th>
											<td>※ &nbsp; 1시간 기준 <br/>평일 : 170,000원<br/>주말 : 250,000원</td>
										</tr>
										
										<tr>
											<th style="width: 100p; text-align:center; background:#a9d2b4">운영시간</th>
											<td>평일 : 09:00 ~ 22:00,&nbsp; <br/>토요일 및 일요일(2, 4주) :  &nbsp;09:00 ~ 18:00</td>
										</tr>
										
										<tr>
											<th style="width: 100px; text-align:center; background:#a9d2b4">휴무안내</th>
											<td>매월 1, 3, 5주 화요일(정기휴관일) 및 법정공휴일 휴관(대체 휴일 포함)</td>
										</tr>
										</tbody>
									</table>
								</div> --%>
								
        					</div>
        				<div class="card-body">
        				<%@ include file="/WEB-INF/views/module/pagenation.jsp" %>
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
	<%@include file="/WEB-INF/views/include/footer.jsp" %>
	
	
