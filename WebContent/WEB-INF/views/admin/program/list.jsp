<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

      <!-- Main content header -->
        <div class="row">
        	<div class="col-sm-12">
        		<div class="main-content-header">
        			<div class="wrapper wrap-m-w m-auto">
        			<div class="text-right">
        				<span class="pl-2 pr-2"><i class="fa-solid fa-house"></i></span>
        				<span class="pl-2 pr-2"><i class="fa-solid fa-angle-right"></i></span>
        				<span class="pl-2 pr-2">온라인 수강접수</span>
        				<span class="pl-2 pr-2"><i class="fa-solid fa-angle-right"></i></span>
        				<span class="pl-2 pr-4">강습 프로그램 목록 조회</span>
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
        				<div class="card-body">
	        				<div class="aside-naming">
								온라인 수강신청
	        				</div>
							<button type="button" class="btn btn-default btn-block text-left" onclick="prgList_go();">강습 프로그램 조회</button>
							<button type="button" class="btn btn-default btn-block text-left" onclick="registForm_go();">강습 프로그램 등록</button>
						</div>
        			</div>
        		</div>
        	</div>
        	<!-- Main content real -->
        	<div class="col-sm-9">
        		<div class="row">
        			<div class="col-sm-12" >
        				<div class="card-body">
        					<div class="aside-naming">
        						강습프로그램 목록 조회 	
        					</div>
        					<div class="row p-4" style="border:1px solid black;height:500px;">
        						<div class="col-sm-7 " style="background:#dfdfdf; height:100%; border-radius: 15px;" >
        							<h6 class="text-center">요일별</h6>
        							<div class="mt-1"style="display:flex; height:8%;justify-content:space-around; align-items: center; flex-wrap:wrap;">
        								<input type="button" class="btn btn-light btn-xs mr-1 dayday usd1" style="height:30px; width:15%;" onclick="test_go('usd1');" value='월'/>
        								<input type="button" class="btn btn-light btn-xs mr-1 dayday usd2" style="height:30px; width:15%;" onclick="test_go('usd2');" value='화'/>
        								<input type="button" class="btn btn-light btn-xs mr-1 dayday usd3" style="height:30px; width:15%;" onclick="test_go('usd3');" value='수'/>
        								<input type="button" class="btn btn-light btn-xs mr-1 dayday usd4" style="height:30px; width:15%;" onclick="test_go('usd4');" value='목'/>
        								<input type="button" class="btn btn-light btn-xs mr-1 dayday usd5" style="height:30px; width:15%;" onclick="test_go('usd5');" value='금'/>
        								<input type="button" class="btn btn-light btn-xs mr-1 dayday usd6" style="height:30px; width:15%;" onclick="test_go('usd6');" value='토'/>
        							</div>
        						<hr>
        						<h6 class="text-center">종목별</h6>
        							<div id="kindkind" class="mt-1 "style="display:flex; height:30%; align-items: center; flex-wrap:wrap;">
	        							<c:forEach items="${programKinds }" var="kind">
	        							<button type="button" class="btn btn-light btn-xs mr-1 kindkind ${kind }" style="height:30px; width:15%;"onclick=" test_go('${kind}');" value="${kind }">${kind }</button>
	        							</c:forEach>       
	        						</div>
	        					<hr>
	        					<h6 class="text-center">시간별</h6>
	        						<div id="timetime"style="display:flex; flex-grow: 1; flex-wrap: wrap; ">
	        							<c:forEach begin="5" end="20" var="time">
	        									<button type="button" class="mt-2 btn btn-light btn-xs mr-1 timetime time${time }" style="height:30px; width:15%;" onclick="test_go('time${time}')" value="${time}">${time }</button>
	        								</c:forEach>
	        						</div>
	        						
        						</div>
        						<div class="col-sm-5" style="height:100%;border-radius:10px;" >
        							<!-- <div class="text-right" style="background:#a9d2b4;">
        								<select class="custom-select" style="width: auto;" data-sortorder="">
					                        <option value="index" selected="selected">종목별로 정렬</option>
					                        <option value="sortData"> 시간별로 정렬</option>
					                     </select>
        							</div> -->
        							
        							<div style="border:1px solid;"></div>
        							
        							<div class=" bg-gray " style="height:440px;">
        								
        								<ul id="searchSection" class="p-0" style="overflow: auto; border-radius:10px;height:100%;">
											
											<%@include file="/WEB-INF/views/member/program/searchResult.jsp" %>
        								   	
        								</ul>
        								
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

  
	<form role="search" method="get" action="list.do">
		<input type="hidden" name="searchType" id="ss" />
		<input type="hidden" name="keyword" id="sk" value="">
	
	</form>
	<script src="<%=request.getContextPath() %>/resources/js/program.js"></script>
	
	<script>
	
	var Inputkeyword=document.getElementById("sk");
		var InputsearchType=document.getElementById("ss");
		
		var stParam="";
		
		
		
		
		
		
		
		function test_go(num){
			
			
			
			
			var select=document.querySelector("."+num);
			//alert(select.value);
			select.classList.toggle("active");
			
			var activeList=document.getElementsByClassName("active");
			var activeValue="";
			
			/* for(var i=0;i<activeList.length;i++){
				activeValue+=activeList[i].value;
			
				if(activeList.length-i!=1){
					activeValue+=",";	     
				}
			}
 */			
			
			if($('.dayday').hasClass("active")===true){
				//alert("d있엉");
				stParam="d";
	
				for(let i=0;i<$(".dayday.active").length;i++){
					activeValue+=$(".dayday.active")[i].value;
				
					if($(".dayday.active").length-i!=1){
						activeValue+=",";	     
					}
				}
				
				
				if($('.kindkind').hasClass("active")===true){
					//alert("ds있엉");
					stParam="ds";
						//alert($(".kindkind.active").length);
						for(var j=0;j<$(".kindkind.active").length;j++){
							if(j==0){
								activeValue+="/"
							}
							activeValue+=$(".kindkind.active")[j].value;
						}
							//alert(activeValue);
					
					if($('.timetime').hasClass("active")===true){
						//alert("다있엉");
						stParam="dst";
						
						for(var k=0;k<$(".timetime.active").length;k++){
							if(k==0){
								activeValue+="/"
							}
							activeValue+=$(".timetime.active")[k].value;
						}
							//alert(activeValue);
					}
					
				}else if($('.timetime').hasClass("active")===true){
					//alert("dt 있엉");
					stParam="dt";
					for(var k=0;k<$(".timetime.active").length;k++){
						if(k==0){
							activeValue+="/"
						}
						activeValue+=$(".timetime.active")[k].value;
					}
						//alert(activeValue);
					
				}
				
				
			}else if($('.kindkind').hasClass("active")===true){
				//alert("s있엉");
				stParam="s";
				for(var j=0;j<$(".kindkind.active").length;j++){
					activeValue+=$(".kindkind.active")[j].value;
					if($(".kindkind.active").length-j!=1){
						activeValue+=",";	     
					}
				}
				alert(activeValue);
				
				if($('.timetime').hasClass("active")===true){
					//alert("st있엉");
					stParam="st";
					for(var k=0;k<$(".timetime.active").length;k++){
						if(k==0){
							activeValue+="/"
						}
						activeValue+=$(".timetime.active")[k].value;
					}
						alert(activeValue);
					
				}
				
			}else if($('.timetime').hasClass("active")===true){
				//alert("t있엉");
				stParam="t";
				for(var k=0;k<$(".timetime.active").length;k++){
					activeValue+=$(".timetime.active")[k].value;
				}
					alert(activeValue);
				
			}else{
				//alert('좇도 없어');
				stParam="";
			}
			
			
			
			
			
			
			
			
			
			
			
			/* if(isActive($('#dayday'))==true){
				stParam="d";
				
				}else if(isActive($('#kindkind'))==true){
					stParam="s";
				}else if($('#timetime').find("active")==true){
					stParam="t";
				}else{
					stParam="";
				} */
			
			
			
			
			
			//alert(activeValue);
			
			
			InputsearchType.value=stParam;
			Inputkeyword.value=activeValue;
			
			//alert(keyword.value);
			
			//var form=document.querySelector("form[role='search']");
			
			var sendData={
					'searchType':InputsearchType.value,
					'keyword':Inputkeyword.value
			}
			$.ajax({
				url:"<%=request.getContextPath()%>/member/program/search.do",
				method:"post",
				contentType:"application/json",
				data:JSON.stringify(sendData),
				success:function(data){
					//alert(data);
					getList(InputsearchType.value, Inputkeyword.value);
				},
				error:function(error){
					alert('dd');
				}
			});
		 
		 //form.submit();
			
			
		}
	
	window.onload=function(){
		getList('','');
	}
	
	function getList(searchType,keyword){
		var searchType=searchType;
		var keyword=keyword;
		
		$.getJSON('<%=request.getContextPath()%>/member/program/search.do?searchType='+searchType+'&keyword='+keyword
				,function(data){
			printData(data.programList,$('#searchSection'),$('#search-list-template'));
			
		});
	}
	
	function printData(replyArr,target,templateObject){
	   var template=Handlebars.compile(templateObject.html());
	   var html = template(replyArr);   
	   $('.search_list').remove();
	   target.append(html);
	}
	</script>
