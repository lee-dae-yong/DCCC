<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Main content header -->
<div class="row">
  <div class="col-sm-12">
    <div class="main-content-header">
      <div class="wrapper wrap-m-w m-auto">
        <div class="text-right">
          <span class="pl-2 pr-2"><i class="fa-solid fa-house"></i></span>
          <span class="pl-2 pr-2"><i class="fa-solid fa-angle-right"></i></span>
          <span class="pl-2 pr-2">강사현황</span>
          <span class="pl-2 pr-2"><i class="fa-solid fa-angle-right"></i></span>
          <span class="pl-2 pr-4">지도강사소개</span>
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
                <div class="card-body aside_menu">
                  <div class="aside-naming">
                    	강사현황
                  </div>
                  
                  <button type="button" class="btn btn-default btn-block text-left btn-original btn-dccc">
                  	<a href="<%=request.getContextPath()%>/member/teacher/list.do"><span style="color:black;">지도강사소개</span></a></button>
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
                    	지도강사소개
                  </div>
                  <!-- Main body -->
                  <div class="card-body pb-0">
                    <div class="row">
                    <div class="col-12 col-sm-6 col-md-6 d-flex align-items-stretch flex-column">
                        <div class="card bg-light d-flex flex-fill">
                          <div class="card-header text-muted border-bottom-0">
                            	줄넘기교실</div>
                          <div class="card-body pt-0">
                            <div class="row">
                              <div class="col-7">
                                <h2 class="lead">
                                  <b>박제성</b>
                                </h2>
                                <p class="text-muted text-sm">
                                  <b>경력 및 자격사항 </b> <br /> 생활체육지도사 2급 <br /> 줄넘기 지도자 1급 <br /> 줄넘기 지도자 2급 <br /><br />
                                  	담당강좌 : 오전줄넘기<br />
                                  	강좌요일 : 월,수,금
                                </p>
                              </div>
                              <div class="col-5 text-center">
                                <img src="<%=request.getContextPath()%>/resources/bootstrap/dist/img/teacher_jsp.jpg" alt="user-avatar" class="img-circle img-fluid">
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="col-12 col-sm-6 col-md-6 d-flex align-items-stretch flex-column">
                        <div class="card bg-light d-flex flex-fill">
                          <div class="card-header text-muted border-bottom-0">수영교실</div>
                           <div class="card-body pt-0">
                            <div class="row">
                              <div class="col-7">
                                <h2 class="lead">
                                  <b>박태환</b>
                                </h2>
                                <p class="text-muted text-sm">
                                  <b>경력 및 자격사항 </b> <br /> 수상인명구조원 <br /> 생존수영강사 <br /> 생활체육지도사 2급 수영 <br /><br />
                                  	담당강좌 : 오전수영<br />
                                 	 강좌요일 : 월,수,금
                                </p>
                              </div>
                              <div class="col-5 text-center">
                              	<img src="<%=request.getContextPath()%>/resources/bootstrap/dist/img/pth.jpg" alt="user-avatar" class="img-circle img-fluid">
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="col-12 col-sm-6 col-md-6 d-flex align-items-stretch flex-column">
                        <div class="card bg-light d-flex flex-fill">
                          <div class="card-header text-muted border-bottom-0">
                            	풋살교실</div>
                          <div class="card-body pt-0">
                            <div class="row">
                              <div class="col-7">
                                <h2 class="lead">
                                  <b>손흥민</b>
                                </h2>
                                <p class="text-muted text-sm">
                                  <b>경력 및 자격사항 </b> <br /> 생활체육지도사 2급 <br /> 전문스포츠지도사 2급 <br /><br />
                                  	담당강좌 : 오전풋살<br />
                                  	강좌요일 : 월,화,수
                                </p>
                              </div>
                              <div class="col-5 text-center">
                              	<img src="<%=request.getContextPath()%>/resources/bootstrap/dist/img/shm.jpg" alt="user-avatar" class="img-circle img-fluid">
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      
                      <div class="col-12 col-sm-6 col-md-6 d-flex align-items-stretch flex-column">
                        <div class="card bg-light d-flex flex-fill">
                          <div class="card-header text-muted border-bottom-0">
                            	농구교실</div>
                          <div class="card-body pt-0">
                            <div class="row">
                              <div class="col-7">
                                <h2 class="lead">
                                  <b>허재</b>
                                </h2>
                                <p class="text-muted text-sm">
                                  <b>경력 및 자격사항 </b> <br /> 생활체육지도사 2급 <br /> 생활스포츠지도사 <br /> 유소년스포츠지도사 <br /><br />
                                  	담당강좌 : 오전농구<br />
                                  	강좌요일 : 화,목,금
                                </p>
                              </div>
                              <div class="col-5 text-center">
                              	<img src="<%=request.getContextPath()%>/resources/bootstrap/dist/img/hj.jpg" alt="user-avatar" class="img-circle img-fluid">
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="col-12 col-sm-6 col-md-6 d-flex align-items-stretch flex-column">
                        <div class="card bg-light d-flex flex-fill">
                          <div class="card-header text-muted border-bottom-0">
                            	농구교실</div>
                          <div class="card-body pt-0">
                            <div class="row">
                              <div class="col-7">
                                <h2 class="lead">
                                  <b>현주엽</b>
                                </h2>
                                <p class="text-muted text-sm">
                                  <b>경력 및 자격사항 </b> <br /> 생활체육지도사 2급 <br /> 생활스포츠지도사 <br /> 유소년스포츠지도사 <br /><br />
                                  	담당강좌 : 오후농구<br />
                                  	강좌요일 : 화,목,금
                                </p>
                              </div>
                              <div class="col-5 text-center">
                              	<img src="<%=request.getContextPath()%>/resources/bootstrap/dist/img/hjy.jpg" alt="user-avatar" class="img-circle img-fluid">
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="col-12 col-sm-6 col-md-6 d-flex align-items-stretch flex-column">
                        <div class="card bg-light d-flex flex-fill">
                          <div class="card-header text-muted border-bottom-0">
                            	줄넘기교실</div>
                          <div class="card-body pt-0">
                            <div class="row">
                              <div class="col-7">
                                <h2 class="lead">
                                  <b>김연경</b>
                                </h2>
                                <p class="text-muted text-sm">
                                  <b>경력 및 자격사항 </b> <br /> 생활체육지도사 2급 <br /> 줄넘기 지도자 1급 <br /> 줄넘기 지도자 2급 <br /><br />
                                  	담당강좌 : 오후줄넘기<br />
                                  	강좌요일 : 월,수,금
                                </p>
                              </div>
                              <div class="col-5 text-center">
                              	<img src="<%=request.getContextPath()%>/resources/bootstrap/dist/img/kyk.jpg" alt="user-avatar" class="img-circle img-fluid">
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="col-12 col-sm-6 col-md-6 d-flex align-items-stretch flex-column">
                        <div class="card bg-light d-flex flex-fill">
                          <div class="card-header text-muted border-bottom-0">
                            	수영교실</div>
                          <div class="card-body pt-0">
                            <div class="row">
                              <div class="col-7">
                                <h2 class="lead">
                                  <b>정유인</b>
                                </h2>
                                <p class="text-muted text-sm">
                                  <b>경력 및 자격사항 </b> <br /> 수상인명구조원 <br /> 생존수영강사 <br /> 생활체육지도사 2급 수영 <br /><br />
                                 	담당강좌 : 오후수영<br />
                                  	강좌요일 : 화,목,금
                                </p>
                              </div>
                              <div class="col-5 text-center">
                              	<img src="<%=request.getContextPath()%>/resources/bootstrap/dist/img/jyi.jpg" alt="user-avatar" class="img-circle img-fluid">
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="col-12 col-sm-6 col-md-6 d-flex align-items-stretch flex-column">
                        <div class="card bg-light d-flex flex-fill">
                          <div class="card-header text-muted border-bottom-0">
                            	풋살교실</div>
                          <div class="card-body pt-0">
                            <div class="row">
                              <div class="col-7">
                                <h2 class="lead">
                                  <b>박지성</b>
                                </h2>
                                <p class="text-muted text-sm">
                                  <b>경력 및 자격사항 </b> <br /> 생활체육지도사 2급 <br /> 전문스포츠지도사 2급 <br /><br />
                                  	담당강좌 : 오후풋살<br />
                                  	강좌요일 : 월,화,수
                                </p>
                              </div>
                              <div class="col-5 text-center">
                              	<img src="<%=request.getContextPath()%>/resources/bootstrap/dist/img/pjs.jpg" alt="user-avatar" class="img-circle img-fluid">
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="col-12 col-sm-6 col-md-6 d-flex align-items-stretch flex-column">
                        <div class="card bg-light d-flex flex-fill">
                          <div class="card-header text-muted border-bottom-0">
                            	배드민턴교실</div>
                          <div class="card-body pt-0">
                            <div class="row">
                              <div class="col-7">
                                <h2 class="lead">
                                  <b>이용대</b>
                                </h2>
                                <p class="text-muted text-sm">
                                  <b>경력 및 자격사항 </b> <br /> 생활체육지도사 2급 <br /> 전문스포츠지도사 2급 <br /> 유소년스포츠지도사<br /><br />
                                  	담당강좌 : 오전배드민턴<br />
                                  	강좌요일 : 월,수,금
                                </p>
                              </div>
                              <div class="col-5 text-center">
                              	<img src="<%=request.getContextPath()%>/resources/bootstrap/dist/img/lyd.jpg" alt="user-avatar" class="img-circle img-fluid">
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="col-12 col-sm-6 col-md-6 d-flex align-items-stretch flex-column">
                        <div class="card bg-light d-flex flex-fill">
                          <div class="card-header text-muted border-bottom-0">
                            	배드민턴교실</div>
                          <div class="card-body pt-0">
                            <div class="row">
                              <div class="col-7">
                                <h2 class="lead">
                                  <b>안세영</b>
                                </h2>
                                <p class="text-muted text-sm">
                                  <b>경력 및 자격사항 </b> <br /> 생활체육지도사 2급 <br /> 전문스포츠지도사 2급 <br />유소년스포츠지도사<br /><br />
                                  	담당강좌 : 오후배드민턴<br />
                                  	강좌요일 : 월,수,금
                                </p>
                              </div>
                              <div class="col-5 text-center">
                              	<img src="<%=request.getContextPath()%>/resources/bootstrap/dist/img/asy.jpg" alt="user-avatar" class="img-circle img-fluid">
                              </div>
                            </div>
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
</div>
<!-- main-content -->
