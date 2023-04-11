function prgList_go(){
	location.href="list.do";
		
}

function prg_info_go(){
	location.href="info.do";
}

function registForm_go(){
	location.href="registForm.do";
}





function remove_go(){
	confirm("해당 프로그램의 정보를 삭제하시겠습니까?")
	location.href="list.do";
}

function ProgramDetailPicture(context){
	for(var target of document.querySelectorAll('.programPicture')){
		var id=target.getAttribute("data-id");
		
		target.style.backgroundImage="url('"+context+"/member/program/getPicture.do?prg_code="+id+"')";
		target.style.backgroundPosition="center";
		target.style.backgroundRepeat="no-repeat";
		target.style.backgroundSize="cover";
	}
}

function picture_go(){
	
	var form=$('form[role="imageForm"]');
	var picture=form.find('[name="prg_pictureFile"]')[0];
	
	var fileFormat=picture.value.substr(picture.value.lastIndexOf('.')+1).toUpperCase();
	if(!(fileFormat=="JPG"||fileFormat=="JPEG")){
		alert("jpg형식의 파일만 등록 가능합니다.");
		return;
	}
	
	if(picture.files[0].size>1024*1024*1){
		alert("1MB이하의 사진만 등록가능합니다.");
		return;
		
	}
	
	if (picture.files && picture.files[0]) {
		var reader = new FileReader();
		
		reader.readAsDataURL(picture.files[0]);
		 
		reader.onload = function (e) {
			var pictureView = $('div#pictureView')[0];
			//이미지 미리보기	        	
		 	pictureView.style.backgroundImage = "url("+e.target.result+")";
		 	pictureView.style.backgroundPosition="center";
		 	pictureView.style.backgroundSize="cover";
		 	pictureView.style.backgroundRepeat="no-repeat";			
		}
	}
	
	form.find('[name="checkUpload"]').val(0);
	$('#prg_pictureFileName').val(picture.files[0].name);


}


	
	
function upload_go(){
	if(!$('input[name="prg_pictureFile"]').val()){
		alert("사진을 선택해주세요");
		$('input[name="prg_pictureFile"]').click();
		return;
	}
	
	if($('input[name="checkUpload"]').val()==1){
		alert("이미 업로드 된 사진 입니다.");
		return;
	}
	
	var formData=new FormData($('form[role="imageForm"]')[0]);
	$.ajax({
		url:"uploadPicture.do",
		data:formData,
		type:"post",
		processData:false,
		contentType:false,
		success:function(data){
			$('input[name="checkUpload"]').val(1);
			$('input#oldFile').val(data);
			$('form[role="form"] input[name="prg_picture"]').val(data);
			alert("사진이 업로드 되었습니다.");
		},
		error:function(error){
			
		}
	});
	
	
	
	
}


