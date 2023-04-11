<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    



<c:set var="facilityList2" value="${dataMap.facilityList2 }"/>
<c:set var="pageMaker" value="${dataMap.pageMaker }"/>
<c:set var="cri" value="${pageMaker.cri }"/>

    

<style>
td{
border-collapse : collapse;
border-spacing : 0;
}
</style>


    <!-- Main content -->
    <div>
    <div class="content">
      <div class="container-fluid">
      <!-- Main content header -->
        <div class="row">
        	<div class="col-sm-12">
        		<div class="main-content-header">
        			<div class="text-right wrapper wrap-m-w m-auto">
        				<span class="pl-2 pr-2"><i class="fa-solid fa-house"></i></span>
        				<span class="pl-2 pr-2"><i class="fa-solid fa-angle-right"></i></span>
        				<span class="pl-2 pr-4">시설정보관리</span>
        			</div>
        		</div>
        	</div>
        </div>
        
        <div class="row wrapper wrap-m-w m-auto">
        	<!-- Main content aside bar -->
        	<div class="col-sm-3">
        		<div class="row">
        			<div class="col-sm-12">
        				<div class="card-body">
	        				<div class="aside-naming">
	        					시설정보관리
	        				</div>
							
						</div>
        			</div>
        		</div>
        	</div>
        	<!-- Main content real -->
        	<div class="col-sm-9">
        		<div class="row">
        			<div class="col-sm-12">
        				<div class="card-body">
        					<div class="aside-naming" style="border-bottom:3px double black;">
        						시설정보관리
        					</div>
        					<div style="height:100%">
        					
        						<div style="padding-bottom:5px; text-align:end; border-bottom:3px double black;">
        							<div class="tab-item" style="display:inline-block;">
										<button type="button" class="btn btn-block btn-default btn-original" style="display:inline-block; width:100px; border-radius:8px; margin-right:3px;" onclick="location.href='registForm.do'">시설 등록</button>
        							</div>
      								
        						</div>
        					
        					
        					
        <form>					
<div class="card-body p-0">
	
  <div class="box-controls">
  	<div>
  	<div class="row" style="padding:5px 0;">
  	<div class="col-sm-6">
		<div class="tab-item" style="display:inline-block;">
		<button type="button" class="btn btn-default btn-sm btn-original" onclick="location.href='list.do'">전체보기</button>
        </div>
  		
  	
  		
      </div>
      
      
      
        <div class="col-sm-6">
        <div class="input-group" style="justify-content:flex-end;">
       			
       	<select style="margin-right:3px;" name="searchType" id="searchType">
       		<option value="nm" ${cri.searchType == 'nm' ? "selected" : ""}>시설명</option>
       		<option value="qf" ${cri.searchType == 'qf' ? "selected" : ""}>구분</option>
       		<option value="fl" ${cri.searchType == 'fl' ? "selected" : ""}>층</option>
       	</select>
		<input type="text" class="form-control form-control-sm col-sm-4" value="${cri.keyword }" style="width:100px;"name="keyword"/>
		<button type="button" class="btn btn-default btn-sm btn-original" style="display:inline-block; width:50px; border-radius:8px; margin:0 3px;" onclick="list_go(1)">조회</button>
		</div>
		</div>
		</div>
	</div>
  
  
  <div class="table-responsive mailbox-messages" style="border-top:3px double black;">
  	<table class=table>
  		<tr>
      		<td class="col-sm-6" style="text-align:center;">구분</td>
      		<td class="col-sm-6" style="text-align:center;">설명</td>
     	 </tr>
     </table>
     
     
     
     <!-- foreach반복문돌리는부분 -->
    
    <table class="table table-hover">
      <tbody>
      
      
      
    	<c:forEach var="facility" items="${facilityList2 }">			
        <tr>
          <td class="mailbox-name p-2" style="border-right:1px solid #dfdfdf; width:500px;">
          	<a href="<%=request.getContextPath()%>/admin/facility/detail.do?fac_no=${facility.fac_no }"><img src="<%=request.getContextPath() %>/resources/images/facility/${facility.fac_picture}" style="width:100%; height:40%;"/></a>
          </td >
          <td class="mailbox-subject" style="margin;" >
          
          <div >
          	<div>
            <b>시설명 : </b>${facility.fac_name }
            </div>
            
            <br/>
            
            <div>
            <b>시설 구분 : </b>${facility.fac_qufen }
            </div>
            <br/>
            
            <div>
            <b>층 : </b> ${facility.fac_floor }
            </div>
            </div>
        </td>
        </tr>
        </c:forEach> 
          
          
          
      </tbody>
    </table>
    <!-- foreach반복문 -->
    
  </div>
</div>
        					</div>
        				<div class="card-body">
        			</div>
        			</form>
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
 
  
  
<script>



function list_go(page,url){
	  
	   if(!url) url = "list.do";
	  
	   $("form#jobForm input[name='page']").val(page)
	   $("form#jobForm input[name='perPageNum']").val($('select[name="perPageNum"]').val());
	   $("form#jobForm input[name='searchType']").val($('select[name="searchType"]').val());
	   $("form#jobForm input[name='keyword']").val($('div.input-group>input[name="keyword"]').val());

	   $('form#jobForm').attr({
		   action: url,
		   method:'get'
	   }).submit();   

}
 

</script>





 	<%@ include file="/WEB-INF/views/module/pagenation.jsp"%> 
 	<div class="p-5"></div>
	</div>
	</div>
	<!-- main-content -->
