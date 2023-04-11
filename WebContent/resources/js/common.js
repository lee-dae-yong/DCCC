/**
 * 
 */
function OpenWindow(UrlStr, WinTitle, WinWidth, WinHeight){
	winleft = (screen.width - WinWidth) /2;
	wintop = (screen.height - WinHeight) /2;
	var win = window.open(UrlStr , WinTitle, "scrollbars=yes,width="+WinWidth
			+",height="+WinHeight+",top="+wintop+",left="
			+ winleft + ",resizable=yes");
	win.focus();
}

function CloseWindow(parentURL){
	
	window.opener.location.reload(true);
	window.close();
}

function CheckInputNum(){
    if ((event.keyCode < 48) || (event.keyCode > 57)){
        event.returnValue = false;
    }
}

function list_go(page,url){
	
	if(!url) url="list.do";
	
	$("form#jobForm input[name='page']").val(page);
	$("form#jobForm input[name='perPageNum']").val($('select[name="perPageNum"]').val());
	$("form#jobForm input[name='searchType']").val($('select[name="searchType"]').val());
	$("form#jobForm input[name='keyword']").val($('div.input-group>input[name="keyword"]').val());
	
	$('form#jobForm').attr({
		action:url,
		method:'get'
	}).submit();
}

var contextPath="";
function summernote_go(target,context){
	contextPath=context;
	
	target.summernote({
		placeholder:'여기에 내용을 적으세요.',
		lang:'ko-KR',
		height:250,
		disableResizeEditor: true,
		callbacks:{
			onImageUpload : function(files, editor, welEditable) {
				//alert("image click");
				for(var file of files){
					//alert(file.name);
					if(file.name.substring(file.name.lastIndexOf(".")+1).toUpperCase() != "JPG"){
						alert("JPG 이미지형식만 가능합니다.");
						return;
					}
					if(file.size > 1024*1024*1){
						alert("이미지는 1MB 미만입니다.");
						return;
					}	
				}
				
				for (var file of files) {
					sendFile(file,this);
				}
			},
			onMediaDelete : function(target) {
				//alert(target[0].src);
				deleteFile(target[0].src);	
			}
	
		}
	});    		
}

function sendFile(file,el){
	var form_data = new FormData();
	form_data.append("file", file); 
	
	$.ajax({
		url: contextPath+'/uploadImg.do',
    	data: form_data,
    	type: "POST",	    	
    	contentType: false,	    	
    	processData: false,
    	success: function(img_url) {    		
    		$(el).summernote('editor.insertImage', img_url);
    	},
    	error:function(error){
    		
    	}
	});
}

function deleteFile(src) {	
	var deleteURL = src.replace("getImg.do","deleteImg.do");
	$.ajax({
		url:deleteURL,
		type:"get",
		success:function(data){
			console.log(data);
		}
	});
}

//사진출력
function PhotoPictureThumb(contextPath){
	 for(var target of document.querySelectorAll('.photoPicture')){	
		 var id = target.getAttribute('data-id');
		 
		target.style.backgroundImage="url('"+contextPath+"/getImg.do?fileName="+id+"')";				
		target.style.backgroundPosition="center";
		target.style.backgroundRepeat="no-repeat";
		target.style.backgroundSize="cover";
	 }
}

function RentalPictureThumb(contextPath){
	 for(var target of document.querySelectorAll('.rentalPicture')){	
		 var id = target.getAttribute('data-id');
		 
		target.style.backgroundImage="url('"+contextPath+"/member/rental/getImg.do?fac_no="+id+"')";				
		target.style.backgroundPosition="center";
		target.style.backgroundRepeat="no-repeat";
		target.style.backgroundSize="cover";
	 }
}

/*//사진출력
function FacilityPictureThumb(contextPath){
	 for(var target of document.querySelectorAll('.photoPicture')){	
		 var id = target.getAttribute('data-id');
		 
		target.style.backgroundImage="url('"+contextPath+"/getImg.do?fac_no="+id+"')";				
		target.style.backgroundPosition="center";
		target.style.backgroundRepeat="no-repeat";
		target.style.backgroundSize="cover";
	 }
}
*/

function AdminPictureThumb(contextPath){
	   for(var target of document.querySelectorAll('.manPicture')){   
	      var id = target.getAttribute('data-id');
	      
	      target.style.backgroundImage="url('"+contextPath+"/admin/admin/getPicture.do?adm_id="+id+"')";            
	      target.style.backgroundPosition="center";
	      target.style.backgroundRepeat="no-repeat";
	      target.style.backgroundSize="cover";
	   }
	}


//사진출력
function TeacherPictureThumb(contextPath){
	 for(var target of document.querySelectorAll('.manPicture')){	
		 var id = target.getAttribute('data-id');
		 
		target.style.backgroundImage="url('"+contextPath+"/admin/teacher/getPicture.do?tch_id="+id+"')";				
		target.style.backgroundPosition="center";
		target.style.backgroundRepeat="no-repeat";
		target.style.backgroundSize="cover";
	 }
}

