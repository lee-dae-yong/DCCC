<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<!-- <div id="map" class="loadingImg"></div> -->

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
				<a href="<%=request.getContextPath()%>/member/loginForm.do?from=<%=request.getRequestURI().substring(request.getContextPath().length()) %>&qs=<%=request.getQueryString()%>">
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
  
  
