<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.min.js"></script>    
<script type="text/x-handlebars-template"  id="reply-list-template" >
{{#each .}}
<div class="replyLi" >
	<div class="timeline-item" >
  		<span class="time">
    		<i class="fa fa-clock">{{regdate}}</i>
	 		<a class="btn btn-primary btn-xs" id="modifyReplyBtn"
	    		data-toggle="modal" data-target="#modifyModal">Modify</a>
  		</span>
	
  		<h3 class="timeline-header"><strong style="display:none;">{{brd_no}}</strong>{{mem_id}}</h3>
  		<div class="timeline-body" id="">{{replytext}}</div>
	</div>
</div>
{{/each}}
</script>

<script type="text/x-handlebars-template"  id="reply-pagination-template" >
	<li class="page-item ">
		<a href="{{goPage 1}}" class="page-link">
			<i class="fas fa-angle-double-left"></i>
		</a>
	</li>
	<li class="page-item ">
		<a href="{{#if prev}}{{goPage prevPageNum}}{{else}}{{goPage cri.page}}{{/if}}" class="page-link">
			<i class="fas fa-angle-left"></i>
		</a>
	</li>
{{#each pageNum}}
	<li class="page-item">
		<a href="{{goPage this}}" class="page-link">{{this}}</a>
	</li>
{{/each}}
	<li class="page-item ">
		<a href="{{#if next}}{{goPage nextPageNum }}{{else}}{{goPage cri.page}}{{/if}}" class="page-link">
			<i class="fas fa-angle-right"></i>
		</a>
	</li>	
	<li class="page-item ">
		<a href="{{goPage realEndPage}}" class="page-link">
			<i class="fas fa-angle-double-right"></i>
		</a>
	</li>
</script>

<script>
Handlebars.registerHelper({
	"goPage":function(pageNum){
		return 'javascript:getPage('+pageNum+');';
	}
});
</script>

<script>
function printData(replyArr,target,templateObject){
	var template=Handlebars.compile(templateObject.html());
	var html = template(replyArr);	
	$('.replyLi').remove();
	target.after(html);
}

function printPagination(pageMaker,target,templateObject){
	
	var pageNumArray = new Array(pageMaker.endPage-pageMaker.startPage+1);
	
	for(var i=pageMaker.startPage;i<pageMaker.endPage+1;i++){
		pageNumArray[i-pageMaker.startPage]=i;
	}
	
	pageMaker.pageNum=pageNumArray;  
	pageMaker.prevPageNum=pageMaker.startPage-1;
	pageMaker.nextPageNum=pageMaker.endPage+1;
	
	var template2=Handlebars.compile(templateObject.html());
	var html = template2(pageMaker);
	target.html(html);
}

function getPage(page){
	$.getJSON('<%=request.getContextPath()%>/reply/list.do?no=${freeboard.brd_no}&page='+page,function(data){
		printData(data.replyList,$('#repliesDiv'),$('#reply-list-template'));
		printPagination(data.pageMaker,$('ul#pagination'),$('#reply-pagination-template'));
	});
}

window.onload=function(){
	getPage(1);	
}

</script>

<script>
function replyRegist_go(){
	//alert("reply add btn");
	var replytext=$('#newReplyText').val();	
	//alert(replytext);

	var data={
			"bno":"${freeboard.brd_no}",
			"replyer":"${loginUser.mem_id}",
			"replytext":replytext	
	}
	$.ajax({
		url:"<%=request.getContextPath()%>/reply/regist.do",
		type:"post",
		data:JSON.stringify(data),		
		contentType:'application/json',
		success:function(data){
			
		}
	});
}
		

</script>















