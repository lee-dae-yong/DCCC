<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
        					<div>
        						<div class="card shadow-none">
        							<div class="card-header border-0">
										<div class="card-tools">
											<div class="input-group row">
												<div class="d-flex">
													<div class="d-inline-block page_bg_dccc text-center pr-2 pl-2 w-6r">조회수</div>
													<div class="d-inline-block border-dccc-opacity text-center pl-2 pr-2 min-w-4r mr-18p">${photo.pho_viewcnt }</div>
												</div>
											</div>
										</div>
										
									</div>
									<div class="card-body pt-1 w-100">
											<table class="w-100 board-content-table">
											  <colgroup>
											    <col width="20%">
											    <col>
											  </colgroup>    
											  <tbody>
											  <tr>
											    <th class="page_bg_dccc text-center border-dccc-opacity">제목</th>
											    <td class="word-break-all border-dccc-opacity">
											    	<div class="min-40 d-flex justify-content-start align-items-center pl-2">
											    		${photo.pho_title }
											    	</div>
											    </td>
											  </tr>
											</tbody>
											</table>
											<div class="border-dccc-opacity border-dccc-original min-300 p-5">
											    ${photo.pho_content }
											</div>
										</div>
								</div>
        					</div>
        				<div class="card-body text-right pt-0">
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
