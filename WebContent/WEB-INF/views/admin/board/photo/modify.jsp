<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" property="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap/plugins/summernote/summernote-bs4.min.css" />
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
        				<span class="pl-2 pr-4">포토갤러리</span>
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
							<button type="button" class="btn btn-default btn-block text-left btn-original" onclick="location.href='../sug/list.do'">건의사항</button>
							<button type="button" class="btn btn-default btn-block text-left btn-original btn-dccc" onclick="location.href='../photo/list.do'">포토갤러리</button>
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
        						포토갤러리
        					</div>
        					<div class="card border-dccc-opacity">
        					<div class="card-header">
								<h3 class="card-title">글 수정</h3>
							</div>
        					<div class="card-body">
        					<form id="form" action="modify.do" method="post">
								<input type="hidden" name="no" value="${photo.pho_no}">
        						<div class="row">
									<div class="col-sm-12">
									<div class="form-group">
									<label>제목</label>
									<input type="text" class="form-control" placeholder="30자 이내로 제목을 입력해주세요" maxlength="30" name="title" value="${photo.pho_title }"/>
									</div>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-12">
									
									<div class="form-group">
									<label>내용</label>
									<textarea class="form-control regist-textarea" rows="3" placeholder="1000자 이내로 내용을 입력해주세요" style="height:300px; display: none;" maxlength="1000" name="content" id="content">${photo.pho_content }</textarea>
									</div>
									</div>
								</div>
								</form>
        						</div>
        					</div>
        				<div class="card-body text-right pt-0">
        						<button class="btn btn-default btn-original btn-dccc" onclick="modify_go();">수정</button>
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
    	function modify_go(){
    		var content = $('textarea[name="content"]');
    		
    		if(!$('input[name="title"]').val()){
    			alert("제목을 입력해주세요!");
    			$('input[name="title"]').focus();
    			return
    		}
    		
    		if(!content.val()){
    			alert("내용을 입력해주세요!");
    			content.focus();
    			return
    		}
    		if(content.val().length>1333){
    			alert("내용을 1000자 이하로 입력해주세요!");
    			content.focus();
    			return;
    		}
    		
    		if(content.val().includes('img') && content.val().includes('src')){
    			
    		}else{
    			alert("이미지 파일을 최소 하나 이상 입력해야 합니다.");
    			return;
    		}
    		
    		$('form#form').submit();
    	}
    	
    	window.onload=function(){
    		summernote_go($('#content'),'<%=request.getContextPath()%>'); 
    	} 
    </script>
