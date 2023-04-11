<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.min.js"></script>    

<script type="text/x-handlebars-template"  id="search-list-template" >
{{#each .}}
	<li class="search_list"style="list-style: none;
 		background:#ffffff; color:black;" onmouseover="this.style.backgroundColor='#a9d2b4'"
		onmouseout="this.style.backgroundColor='#ffffff'">
		<a class=" mb-1" style="display:block; width:100%; padding:15px 0; " href="detail.do?prg_code={{prg_code}}">
		{{prg_name}}								
		</a>
	</li>
{{/each}}
</script>

<script>
		
		/* var Inputkeyword=document.getElementById("sk");
		var InputsearchType=document.getElementById("ss");
		
		function test_go(num){
			var select=document.querySelector("."+num);
			//alert(select.value);
			select.classList.toggle("active");
			
			var activeList=document.getElementsByClassName("active");
			var activeValue="";
			
			for(var i=0;i<activeList.length;i++){
				activeValue+=activeList[i].value;
			
				if(activeList.length-i!=1){
					activeValue+=", ";	
				}
			}
			Inputkeyword.value=activeValue;
			
			//alert(keyword.value);
			
			//var form=document.querySelector("form[role='search']");
			
			var sendData={
					'searchType':InputsearchType.value,
					'keyword':Inputkeyword.value
			}
			$.ajax({
				url:"search.do",
				method:"post",
				contentType:"application/json",
				data:JSON.stringify(sendData),
				success:function(data){
					//alert(data);
				},
				error:function(error){
					alert('dd');
				}
			});
		 
		 //form.submit();
			
			
		} */
	
	</script>


<script>


	<%-- window.onload=function(){
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
	} --%>
</script>



