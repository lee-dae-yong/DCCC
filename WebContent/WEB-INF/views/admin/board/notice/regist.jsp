<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
      <!-- Main content header -->
        <div class="row">
        	<div class="col-sm-12 p-0">
        		<div class="main-content-header">
        			<div class="wrapper wrap-m-w m-auto">
        			<div class="text-right">
        				<span class="pl-2 pr-2"><i class="fa-solid fa-house"></i></span>
        				<span class="pl-2 pr-2"><i class="fa-solid fa-angle-right"></i></span>
        				<span class="pl-2 pr-2">커뮤니티</span>
        				<span class="pl-2 pr-2"><i class="fa-solid fa-angle-right"></i></span>
        				<span class="pl-2 pr-4">공지사항</span>
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
	        					커뮤니티
	        				</div>
							<button type="button" class="btn btn-default btn-block text-left btn-original btn-dccc" onclick="location.href='../notice/list.do'">공지사항</button>
							<button type="button" class="btn btn-default btn-block text-left btn-original" onclick="location.href='../sug/list.do'">건의사항</button>
							<button type="button" class="btn btn-default btn-block text-left btn-original" onclick="location.href='../photo/list.do'">포토갤러리</button>
							<button type="button" class="btn btn-default btn-block text-left btn-original" onclick="location.href='../fbd/list.do'">자유게시판</button>
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
        						공지사항
        					</div>
        					<div class="card border-dccc-opacity">
        					<div class="card-header">
								<h3 class="card-title">글 작성</h3>
							</div>
        					<div class="card-body">
        					<form id="form" action="regist.do" method="post">
        					<div class="form-group">
							<label>중요 게시물 등록 날짜 지정</label>
							<div class="input-group">
								<div class="input-group-prepend">
								<span class="input-group-text">
								<i class="far fa-calendar-alt"></i>
								</span>
								</div>
								<input type="date" class="form-control float-right" name="startDate" onchange="javascript:check_startDate();" value="0000-00-00" id="startDate">
								<div class="input-group-prepend">
								<span class="input-group-text">
								<i class="far fa-calendar-alt"></i>
								</span>
								</div>
								<input type="date" class="form-control float-right" name="endDate" onchange="javascript:check_endDate();" value="0000-00-00" id="endDate">
							</div>
							
							</div>
								
								<input type="hidden" name="writer" value="${loginAdmin.adm_id}">
        						<div class="row">
									<div class="col-sm-12">
									<div class="form-group">
									<label>제목</label>
									<input type="text" class="form-control" placeholder="30자 이내로 제목을 입력해주세요" maxlength="30" name="title"/>
									</div>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-12">
									
									<div class="form-group">
									<label>내용</label>
									<div class="form-control regist-div" id="content" contenteditable="true"></div>
									<input type="hidden" name="content">
									</div>
									</div>
								</div>
								</form>
        						</div>
        					</div>
        				<div class="card-body text-right pt-0">
        						<button class="btn btn-default btn-original btn-dccc" onclick="regist_go();">등록</button>
        						<button class="btn btn-default btn-original btn-dccc" onclick="location.href='list.do?searchType=${param.searchType}&keyword=${param.keyword}&perPageNum=&page=${param.page }'">목록</button>
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
    	function regist_go(){
    		var content=$('#content').html();
    		$('input[name="content"]').val(content);
    		
    		if($('input#endDate').val()){
	    		if($('input#startDate').val()>$('input#endDate').val()){
	    			alert("시작일은 종료일 보다 빨라야 합니다.");
	    			$('input#startDate').focus();
	    			return;
	    		}
    		}
    		
    		if($('input#startDate').val()){
	    		if($('input#startDate').val()>$('input#endDate').val()){
	    			alert("시작일은 종료일 보다 빨라야 합니다.");
	    			$('input#startDate').focus();
	    			return;
	    		}
    		}
    		if(!$('input[name="title"]').val()){
    			alert("제목을 입력해주세요!");
    			$('input[name="title"]').focus();
    			return
    		}
    		
    		if(!$('input[name="content"]').val()){
    			alert("내용을 입력해주세요!");
    			$('#content').focus();
    			return
    		}
    		if($('#content').html().length>1333){
    			alert("내용을 1000자 이하로 입력해주세요!");
    			$('#content').focus();
    			return;
    		}
    		
    		$('form#form').submit();
    	}
	function check_startDate(){
		if(!$('input#endDate').val())return;
		if($('input#startDate').val()>$('input#endDate').val()){
			alert("시작일은 종료일 보다 빨라야 합니다.");
			$('input#startDate').focus();
			return;
		}
	}
	function check_endDate(){
		if(!$('input#startDate').val())return;
		if($('input#startDate').val()>$('input#endDate').val()){
			alert("종료일은 시작일 보다 빨라야 합니다.");
			$('input#endDate').focus();
			return;
		}
	}	  
    	  
    </script>
