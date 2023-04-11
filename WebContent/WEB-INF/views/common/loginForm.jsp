<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="message" value="${errorMessage}"/>
    <!-- Main content -->
    <div class="">
    <div class="content">
      <div class="container-fluid">
      <!-- Main content header -->
       <div class="row">
        	<div class="col-sm-12 p-0">
        		<div class="main-content-header">
        		</div>
        	</div>
        </div>
        <div class="row wrapper wrap-m-w m-auto">
        	<div class="col-sm-3">
        		<div class="row">
        			<div class="col-sm-12">
        				<div class="card-body">
        					<div class="card-body m-50-a-50-a ml-minus-40">
							<button type="button" class="btn btn-default btn-block text-left btn-original btn-dccc " onclick="location.href='loginForm.do'">LOGIN</button>
							<button type="button" class="btn btn-default btn-block text-left btn-original" onclick="location.href='registMemberForm.do'">회원가입</button>
							<button type="button" class="btn btn-default btn-block text-left btn-original" onclick="location.href='findMemberIdForm.do'">ID찾기</button>
							<button type="button" class="btn btn-default btn-block text-left btn-original" onclick="location.href='findMemberPwForm.do'">PASSWORD찾기</button>
						</div>
        				</div>
        			</div>
        		</div>
        	</div>
        	<div class="col-sm-9">
        		<div class="row">
        		<div class="col-sm-12">
				<div class="card-body">
					<div class="login-box m-50-a-50-a">
					
					<div class="card">
					<div class="card-body login-card-body border-dccc-opacity">
						<p class="login-box-msg login-header-font">로그인</p>
						<form action="login.do?from=${from }" method="post" name="loginForm">
							<div class="btn-group btn-group-toggle user-admin-select-box" data-toggle="buttons">
							<label class="btn btn-original btn-dccc" id="memberLogin">
							<input type="radio" name="loginSelect" value="member" onclick="get_focus_active(value)" autocomplete="off" checked="checked" >&nbsp;&nbsp;&nbsp;회원&nbsp;&nbsp;
							</label>
							<label class="btn btn-original" id="adminLogin">
							<input type="radio" name="loginSelect" value="admin" onclick="get_focus_active(value)" autocomplete="off"> 관리자
							</label>
							</div>
					<div class="input-group mb-3">
					<input type="text" class="form-control" placeholder="Id" name="id">
					<div class="input-group-append">
					<div class="input-group-text">
					<span class="fa-solid fa-right-to-bracket"></span>
					</div>
					</div>
					</div>
					<div class="input-group mb-3">
					<input type="password" class="form-control" placeholder="Password" name="pwd">
					<div class="input-group-append">
					<div class="input-group-text">
					<span class="fas fa-lock"></span>
					</div>
					</div>
					</div>
					<div class="row">
					<div class="col-8">
					<div class="icheck-primary">
					<input type="checkbox" id="remember">
					<label for="remember">
					로그인 상태 유지
					</label>
					</div>
					</div>
					
					<div class="col-4">
					<button type="submit" class="btn btn-dccc btn-original btn-block">Sign In</button>
					</div>
					
					</div>
					</form>
					<p class="mb-1">
					<a class="font-dccc" href="#">ID 찾기</a>
					</p>
					<p class="mb-1">
					<a class="font-dccc" href="#">PASSWORD 찾기</a>
					</p>
					<p class="mb-0">
					<a class="font-dccc" href="registMemberForm.do" class="text-center">회원가입</a>
					</p>
					</div>
					
					</div>
					</div>
				</div>
        	</div>
        	</div>
        	</div>
        	
        </div>
        
    </div>
    
    
    </div>
    <!-- /.content -->
  
  
  <!-- /.content-wrapper -->
	<script>
		
  	<c:if test="${message ne null && !empty message}">
  		alert('${message}');
  		location.href="loginForm.do?from"+$(from);
  	</c:if>
	
	
	
	
		function get_focus_active(value){
			var labelMem = $('label#memberLogin');
			var labelAdm = $('label#adminLogin');
			var getVal = value;
			if(getVal == 'member'){
				labelAdm.removeClass('btn-dccc');
				labelMem.addClass('btn-dccc');
			}
			else{
				labelMem.removeClass('btn-dccc');
				labelAdm.addClass('btn-dccc');
			}
			var d = $('form[name="loginForm"] input[name="loginSelect"]:checked').val();
		}
	</script>
 
	</div>
	<!-- main-content -->
  