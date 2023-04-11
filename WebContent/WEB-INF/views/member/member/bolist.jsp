<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="bookingList" value="${dataMap.bookingList }" />
<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${pageMaker.cri }" />
<!-- Main content header -->
<div class="row">
  <div class="col-sm-12">
    <div class="main-content-header">
      <div class="wrapper wrap-m-w m-auto">
        <div class="text-right">
          <span class="pl-2 pr-2"><i class="fa-solid fa-house"></i></span> <span class="pl-2 pr-2"><i class="fa-solid fa-angle-right"></i></span> <span class="pl-2 pr-2">마이페이지</span> 
          <span class="pl-2 pr-2"><i class="fa-solid fa-angle-right"></i></span> <span class="pl-2 pr-4">대관예약조회</span>
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
                  	<a href="<%=request.getContextPath()%>/member/bolist.do"><span style="color: black;">대관예약조회</span></a>
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
                  <div class="aside-naming">대관예약조회</div>
                  <!-- Main body -->
                  <div style="height:500px;">
               			<!-- end : search bar -->      
                    <div class="list-body" style="text-align:center;">
                      <div class="row">
                        <div class="col-sm-12">
                          <table class="table table-bordered text-center">
                            <tr style="font-size:0.95em;">
                              <th style="width:20%">예약번호</th>
                              <th style="width:20%">대관시설</th>
                              <th style="width:20%">예약일자</th>
                              <th style="width:20%">예약시간</th>
                              <th style="width:20%">신청아이디</th>
                            </tr>
                <c:forEach items="${bookingViewList }" var="bookingView">
                <c:if test="${loginUser.mem_id eq bookingView.mem_id }">
                    <tr>
                       <td><a href="<%=request.getContextPath() %>/member/member/bodetail.do?book_no=${bookingView.book_no}"><span style="color:black;">${bookingView.book_no}</span></a></td>
                       <td>${bookingView.fac_name}</td>
                       <td>${bookingView.book_date}</td>
                       <td>${bookingView.book_time}시</td>
                       <td>${bookingView.mem_id }</td>
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