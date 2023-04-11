<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="reservationList" value="${dataMap.reservationList }" />
<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${pageMaker.cri }" />
<!-- Main content header -->
<div class="row">
  <div class="col-sm-12">
    <div class="main-content-header">
      <div class="wrapper wrap-m-w m-auto">
        <div class="text-right">
          <span class="pl-2 pr-2"><i class="fa-solid fa-house"></i></span> <span class="pl-2 pr-2"><i class="fa-solid fa-angle-right"></i></span> <span class="pl-2 pr-2">마이페이지</span> 
          <span class="pl-2 pr-2"><i class="fa-solid fa-angle-right"></i></span> <span class="pl-2 pr-4">프로그램예약현황</span>
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
                  <div class="aside-naming">마이페이지</div>
                  <button type="button" class="btn btn-default btn-block btn-original text-left">
                    <a href="<%=request.getContextPath()%>/member/list.do"><span style="color: black;">본인정보수정</span></a>
                  </button>
                  <button type="button" class="btn btn-default btn-block btn-original text-left">
                  <a href="<%=request.getContextPath()%>/member/member/relist.do"><span style="color: black;">프로그램예약조회</span></a>
                  </button>
                  <button type="button" class="btn btn-default btn-block btn-original text-left">
                  	<a href="<%=request.getContextPath()%>/member/member/bolist.do"><span style="color: black;">대관예약조회</span></a>
                  </button>
                </div>
              </div>
            </div>
          </div>
          <!-- Main content real -->
          <div class="col-sm-9">
            <div class="row">
              <div class="col-sm-12">
                <div class="card-body">
                  <div class="aside-naming">프로그램예약조회</div>
                  <!-- Main body -->
                  <div style="height:500px;">
               			<!-- end : search bar -->      
                    <div class="list-body" style="text-align:center;">
                      <div class="row">
                        <div class="col-sm-12">
                          <table class="table table-bordered text-center">
                            <tr style="font-size:0.95em;">
                              <th style="width:10%">구분</th>
                              <th style="width:20%">프로그램명</th>
                              <th style="width:20%">강습요일</th>
                              <th style="width:20%">강사</th>
                              <th style="width:15%">금액</th>
                              <th style="width:15%">신청아이디</th>
                            </tr>
                <c:forEach items="${reservationViewList }" var="reservationView">
                <c:if test="${loginUser.mem_id eq reservationView.mem_id }">
                    <tr>
                       <td>${reservationView.prg_kind}</td>
                       <td>${reservationView.prg_name}</td>
                       <td>${reservationView.prg_day}</td>
                       <td>${reservationView.tch_name}</td>
                       <td>${reservationView.prg_price}</td>
                       <td><a href="<%=request.getContextPath() %>/member/member/detail.do?mem_id=${loginUser.mem_id}"><span style="color:black;">${reservationView.mem_id}</span></a></td>
                    </tr>
                    </c:if>
                 </c:forEach>   
                          </table>
                        </div> <!-- col-sm-12 -->
                      </div> <!-- row -->
                    </div> <!-- card-body -->
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