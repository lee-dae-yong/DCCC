<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>DCCC</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap/plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap/dist/css/adminlte.min.css">
  <!-- index-css -->
  <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/index.css">
  <!-- font-awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"/>
</head>
<body class="hold-transition sidebar-mini">


<!-- login header -->
<nav class="navbar-dark">
 	<div class="login-header">
	    <div class="grow-1">
	    </div>
	    <div class="login-menu-box">
	    	<ul class="order-1 order-md-3 navbar-nav navbar-no-expand ml-auto">
				<c:if test="${loginUser ne null && !empty loginUser }">
				<li class="nav-item">
				<a href="<%=request.getContextPath()%>/member/list.do?mem_id=${loginUser.mem_id}">
					<button type="button" class="btn btn-white">${loginUser.mem_name }님</button>
					<button type="button" class="btn btn-white">마이페이지</button>
				</a>
				</li>
				<li class="nav-item">
				<a href="<%=request.getContextPath() %>/member/logout.do">
					<button type="button" class="btn btn-white">로그아웃</button>
				</a>
				</li>
				</c:if>
				<c:if test="${loginAdmin ne null && !empty loginAdmin }">
				<li class="nav-item">
				<a href="<%=request.getContextPath() %>/admin/member/list.do">
					<button type="button" class="btn btn-white">관리자모드 전환</button>
				</a>
				</li>&nbsp;&nbsp;
				<li class="nav-item">
					<button type="button" class="btn btn-white">${loginAdmin.adm_name }님</button>
				</li>
				<li class="nav-item">
				<a href="<%=request.getContextPath() %>/member/logout.do">
					<button type="button" class="btn btn-white"><i class="fa-sharp fa-solid fa-lock pr-1"></i>로그아웃</button>
				</a>
				</li>
				</c:if>
				<c:if test="${(loginUser eq null && empty loginUser && logigAdmin eq null && empty loginAdmin)}">
				<li class="nav-item">
				<a href="<%=request.getContextPath()%>/member/loginForm.do">
					<button type="button" class="btn btn-white"><i class="fa-sharp fa-solid fa-lock-open pr-1"></i>로그인</button>
				</a>
				</li>
				</c:if>
			</ul>
	    </div>
	    <div class="w-5rem">
	    </div>
  </div>
</nav>

<div class="wrapper wrap-m-w m-auto">
  <!-- Navbar -->
  <nav class="navbar navbar-expand navbar-white">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
		<li class="nav-item">
      		<a href="<%=request.getContextPath() %>/main.do" class="navbar-brand">
				<img src="<%=request.getContextPath()%>/resources/bootstrap/dist/img/dccc-logo.png">
	  		</a>
		</li>
    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <!-- Navbar Search -->
		<li class="nav-item d-none d-sm-inline-block">
      		<a href="<%=request.getContextPath()%>/member/program/info.do" class="nav-link  btn btn-block btn-outline-dccc btn-lg">온라인수강접수</a>
		</li>
		<li class="nav-item d-none d-sm-inline-block">
      		<a href="<%=request.getContextPath()%>/member/rental/main.do" class="nav-link  btn btn-block btn-outline-dccc btn-lg">시설대관안내</a>
		</li>
		<li class="nav-item d-none d-sm-inline-block">
      		<a href="<%=request.getContextPath()%>/member/board/notice/list.do" class="nav-link  btn btn-block btn-outline-dccc btn-lg">커뮤니티</a>
		</li>
		<li class="nav-item d-none d-sm-inline-block">
      		<a href="<%=request.getContextPath()%>/member/teacher/list.do" class="nav-link  btn btn-block btn-outline-dccc btn-lg">강사현황</a>
		</li>
		<li class="nav-item d-none d-sm-inline-block">
      		<a href="<%=request.getContextPath()%>/member/facilitylist.do" class="nav-link  btn btn-block btn-outline-dccc btn-lg">시설안내</a>
		</li>
    </ul>
  </nav>
  <!-- /.navbar -->
</div>
  
  

      <!-- Main content header -->
	<div class="row">
        <div class="col-sm-12">
			<div class="card mb-2 bg-gradient-dark">
				<img class="card-img-top" src="<%=request.getContextPath()%>/resources/bootstrap/dist/img/main-logo.jpg" alt="Dist Photo 1">
			</div>
		</div>
	</div>
        <!-- 큰 사진 들어와야댐 -->
        
    <!-- Main content -->
    <div class="wrapper wrap-m-w m-auto">
    <div class="">
    <div class="content">
     	 <div class="container-fluid">
        	<!-- Main content real -->
       	 <div class="row mt-5">
       	 	<div class="col-sm-12">
       	 		<div class="card-body text-center">
       	 			<h1 class="main-center-content-main">DCCC체육시설</h1>
       	 			<p class="main-center-content">대전시민복합문화센터 시설을 안내합니다.</p>
       	 		</div>
       	 	</div>
	   	</div>
	   	<div class="row">
	   	<c:forEach var="facility" items="${facilityList}">
       	 	<div class="col-sm-3 text-center">
       	 		<div class="card-body m-auto p-0">
       	 			<img src="<%=request.getContextPath()%>/resources/images/facility/${facility.fac_picture}" style="width:283px; height:185px; cursor: pointer;" onclick="location.href='${pageContext.request.contextPath}/member/facilitylist.do'">
       	 		</div>
       	 		<div class="main-center-naming pt-2 pb-2">${facility.fac_name }</div>
       	 	</div>
       	 	</c:forEach>
	   	</div>
	   	<div class="row mt-5">
       	 	<div class="col-sm-12">
       	 		<div class="card-body text-center">
       	 			<h2 class="main-center-content-main">DCCC 소식</h2>
       	 			<p class="main-center-content">대전시민복합문화센터 소식을 전달합니다.</p>
       	 		</div>
       	 	</div>
	   	</div>
	   	
	   	<div class="row mb-5">
	   		<div class="col-sm-6">
	   			<div class="card" style="height:310px;">
	   				<div class="card-header">
	   					<div class="d-inline main_board_naming pl-2">공지사항</div>
	   					<div class="d-inline float-right" style="cursor: pointer;" onclick="location.href='<%=request.getContextPath()%>/member/board/notice/list.do'">더보기 <i class="fa-regular fa-square-plus"></i></div>
	   				</div>
	   				<div class="card-body">
	   				<c:forEach var="notice" items="${noticeList}">
						<button type="button" class="btn btn-default btn-block text-left btn-original" onclick="location.href='<%=request.getContextPath()%>/member/board/notice/detail.do?no=${notice.ntc_no}'">${notice.ntc_title }</button>
					</c:forEach>
					</div>
	   			</div>
	   		</div>
	   		<div class="col-sm-6">
	   			<div class="card" style="height:310px;">
	   				<div class="card-header">
	   					<div class="d-inline main_board_naming pl-2">포토갤러리</div>
	   					<div class="d-inline float-right" style="cursor: pointer;" onclick="location.href='<%=request.getContextPath()%>/member/board/photo/list.do'">더보기 <i class="fa-regular fa-square-plus"></i></div>
	   				</div>
	   				<div class="card-body">
	   				<div class="d-flex flex-wrap justify-content-between">
	   				<c:forEach var="photo" items="${photoList }">
						<div class="card-body text-center" style="width:50%; cursor:pointer;"" onclick="location.href='<%=request.getContextPath()%>/member/board/photo/detail.do?no=${photo.pho_no }'">
							<c:set value="${photo.pho_content}" var="p_content"/>
							<c:set value="${fn:substring(p_content,fn:indexOf(p_content,'fileName=')+9,fn:indexOf(p_content,'jpg')+3) }" var="pic_name"/>
							<span class="photoPicture photo_picture_size" data-id="${pic_name}"></span>
							<h3 class="card-title list-title-naming">${photo.pho_title }</h3>
						</div>
					</c:forEach>						
					</div>
	   				</div>
	   			</div>
	   		</div>
	   	</div>
	   	<div class="row p-5"></div>
	   	
  	 	 </div>
    
    
    </div>
    <!-- /.content -->
  
  <!-- /.content-wrapper -->

 
	</div>
	</div>
	<!-- main-content -->
  <div class="footer-bg">
  <footer>
    <div class="wrapper wrap-m-w m-auto">
		<nav class="navbar navbar-expand" style="padding: 0">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item">
				<a href="#" class="nav-link font-black">개인정보처리방침</a>
			</li>
			<li class="nav-item">
				<a href="#" class="nav-link font-black">이메일무단수집거부</a>
			</li>
			<li class="nav-item">
				<a href="#" class="nav-link font-black">홈페이지이용약관</a>
			</li>
			<li class="nav-item">
				<a href="#" class="nav-link font-black">DCCC이용약관</a>
			</li>
		</ul>
		</nav>
		 <div class="sub-footer">
	    <div class="wrapper">
			<div class="sub-footer">
				<p class="sub-footer-content">35236 대전광역시 서구 문예로 107 (둔산동) 대전시민복합문화센터  |   TEL : 042-123-4567</p>
				<p class="sub-footer-content">Contact Us : mimi@naver.com</p>
				<p class="sub-footer-content">34123 대전광역시 유성구 엑스포로 326 (원촌동) 대전광역시 시설관리공단  |   TEL : 042-610-2700</p>
				<p class="sub-footer-content">Contact Us : mimi@naver.com</p>
				<p class="sub-footer-content">Copyrightⓒ Daejeon Metropolitan City Facilities Management Corp. All Rights Reserved.</p>
			</div>
	    </div>
		</div>  
    </div>
	</footer>
    </div> 
    
    
    <!-- To the right -->

<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->

<!-- jQuery -->
<script src="<%=request.getContextPath() %>/resources/bootstrap/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="<%=request.getContextPath() %>/resources/bootstrap/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="<%=request.getContextPath() %>/resources/bootstrap/dist/js/adminlte.min.js"></script>
<!-- common.js -->
<script src="<%=request.getContextPath()%>/resources/js/common.js"></script>
<script>
  window.onload=function(){
	  PhotoPictureThumb('<%=request.getContextPath()%>');
  }
</script>
</body>
</html>
