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
        				<span class="pl-2 pr-4">건의사항</span>
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
							<button type="button" class="btn btn-default btn-block text-left btn-original" onclick="location.href='../notice/list.do'">공지사항</button>
							<button type="button" class="btn btn-default btn-block text-left btn-original btn-dccc" onclick="location.href='../sug/list.do'">건의사항</button>
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
        						건의사항
        					</div>
        					<div class="card border-dccc-opacity">
        					<div class="card-header">
								<h3 class="card-title">글 수정</h3>
							</div>
        					<div class="card-body">
								<form id="form" action="modify.do?searchType=${param.searchType}&keyword=${param.keyword}&perPageNum=&page=${param.page }" method="post">
								<input type="hidden" name="no" value="${suggestion.sug_no}">
        						<div class="row">
									<div class="col-sm-12">
									<div class="form-group">
									<label>제목</label>
									<input type="text" class="form-control" placeholder="30자 이내로 제목을 입력해주세요" maxlength="30" name="title" value="${suggestion.sug_title }"/>
									</div>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-12">
									
									<div class="form-group">
									<label>건의 사항</label>
									<div class="form-control regist-div" contenteditable="true" id="content">${suggestion.sug_content }</div>
									<input type="hidden" name="content">
									</div>
									</div>
								</div>
								<div class="row">
									
									<div class="col-sm-6">
									<div class="form-group">
									<div class="form-check">
									<input class="form-check-input" type="radio" name="rock" checked="${suggestion.sug_rock eq 'x' ? 'checked' : ''}" value="x">
									<label class="form-check-label">공개</label>
									</div>
									<div class="form-check">
									<input class="form-check-input" type="radio" name="rock" ${suggestion.sug_rock eq 'o' ? 'checked="checked"' : ''} value="o">
									<label class="form-check-label">비공개</label>
									</div>
									</div>
									</div>
								</div>
								</form>
        						</div>
        					</div>
        				<div class="card-body text-right pt-0">
        						<button type="button" class="btn btn-default btn-original btn-dccc" onclick="modify_go();">수정</button>
        						<button type="button" class="btn btn-default btn-original btn-dccc" onclick="history.back();">목록</button>
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
    	function modify_go(){
    		var content=$('#content').html();
    		$('input[name="content"]').val(content);
    		
    		if(!$('input[name="title"]').val()){
    			alert("제목을 입력해주세요!");
    			$('input[name="title"]').focus();
    			return
    		}
    		
    		if(!$('#content').text()){
    			alert("내용을 입력해주세요!");
    			$('#content').focus();
    			return;
    		}
    		if($('#content').html().length>1333){
    			alert("내용을 1000자 이하로 입력해주세요!");
    			$('#content').focus();
    			return;
    		}
    		
    		$('form#form').submit();
    	}
    </script>