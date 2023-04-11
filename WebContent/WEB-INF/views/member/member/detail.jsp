<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
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

<!-- Content Wrapper. Contains page content -->
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
                  <div class="aside-naming">프로그램예약조회</div>
                 	<div style="height:500px;">
	        		<form role="form" class="form-horizontal" action="remove_success.do" method="post">
                    <div class="card-top row" style="margin:5px;margin-left:auto;background:white;">
                      <button type="button" id="cancelBtn" onclick="cancel_go();" class="btn btn-default pull-right btn-original text-center" style="margin-left:auto;margin-right: 10px;">취소</button>
                      <button type="button" id="listBtn" onclick="location.href='relist.do'" class="btn btn-default pull-right btn-original text-center">목록</button>
                    </div>
                     <div class="card">
                      <div class="card-body">
					<br />
	                <div class="form-group row" >
	                  <label for="inputId" class="col-sm-3 control-label text-left">신청차 이름</label>
	                  <div class="col-sm-9">
	                    <input name="mem_name" type="text" class="form-control" id="inputId" readonly  value="${reservation.mem_name }">
	                  </div>
	                </div>	
	                               
	                <div class="form-group row">
	                  <label for="inputName" class="col-sm-3 control-label text-left">전화번호</label>
	                  <div class="col-sm-9">
	                    <input name="mem_phone" type="text" class="form-control" id="inputPhone" readonly value="${reservation.mem_phone }">
	                  </div>
	                </div>
	                
	                 <div class="form-group row">
	                  <label for="inputPhone" class="col-sm-3 control-label text-left">프로그램명</label>
	                  <div class="col-sm-9">   
	                  	<input name="prg_name" type="text" class="form-control" id="inputName" readonly value="${reservation.prg_name }">	                
	                  </div>                  
	                </div>     
	                          
	                 <div class="form-group row">
	                  <label for="inputEmail" class="col-sm-3 control-label text-left">강습요일</label>
	                  <div class="col-sm-9">
	                    <input name="prg_day" type="email" class="form-control" id="inputDay" readonly value="${reservation.prg_day }">
	                  </div>
	                </div>
	                
	                <div class="form-group row">
	                  <label for="inputRank" class="col-sm-3 control-label text-left">금액</label>
	                  <div class="col-sm-9">
	                    <input name="prg_price" type="text" class="form-control" id="inputPrice" readonly value="${reservation.prg_price }">
	                  </div>
	                </div>
	                
	                	               
	               <div class="form-group row">
	                  <label for="inputRank" class="col-sm-3 control-label text-left">강사</label>
	                  <div class="col-sm-9">
	                    <input name="tch_name" type="text" class="form-control" id="inputName" readonly value="${reservation.tch_name }">
	                  </div>
	                </div>
	              </div>  
                        
                      </div>
	                </form>
                    </div>

                  </div>

                  <div class="card-body">
                  </div>

                </div>
              </div>
            </div>
            <!-- /.row -->
          </div><!-- /.container-fluid -->
                  <div class="card-footer" style="background:#fff;">
        </div>
      </div>

    </div>
    <!-- /.content -->

    <!-- /.content-wrapper -->
  </div>
</div>
                    <!-- pagination -->

<!-- /.content-wrapper -->
<script src="<%=request.getContextPath() %>/resources/js/common.js"></script>


 <script>


function cancel_go(){
	var answer = confirm("수강 취소하시겠습니까?");
	if(answer)	{
		location.href='remove.do?mem_id=${loginUser.mem_id}';
	}
}

</script>