<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!-- Main content -->
   
    <div class="">
    <div class="content">
      <div class="container-fluid">
      <!-- Main content header -->
       <div class="row">
        	<div class="col-sm-12">
        		<div class="main-content-header p-0">
        		</div>
        	</div>
        </div>
        <div class="row wrapper wrap-m-w m-auto">
        	<div class="col-sm-3">
        		<div class="row">
        			<div class="col-sm-12">
        				<div class="card-body">
        					<div class="card-body m-50-a-50-a ml-minus-40">
							<button type="button" class="btn btn-default btn-block text-left btn-original" onclick="location.href='loginForm.do'">LOGIN</button>
							<button type="button" class="btn btn-default btn-block text-left btn-original btn-dccc" onclick="location.href='registMemberForm.do'">회원가입</button>
							<button type="button" class="btn btn-default btn-block text-left btn-original" onclick="location.href='findMemberIdForm.do'">ID찾기</button>
							<button type="button" class="btn btn-default btn-block text-left btn-original" onclick="location.href='findMemberPwForm.do'">PASSWORD찾기</button>
						</div>
        				</div>
        			</div>
        		</div>
        	</div>
        	<div class="col-sm-9">
        		<div class="row">
		        	<div class="col-sm-12">
						<div class="card-body">
								<div class="card-body">
							<div class="login-box m-50-a-50-a width-500">
							
							<div class="card">
							<div class="card-body login-card-body border-dccc-opacity">
								<p class="login-box-msg login-header-font">회원가입</p>
								<form id="registMember" novalidate="novalidate" action="registMember.do" method="post">
									<!-- id -->
									<div class="form-group position-relative">
									<label for="inputID">아이디</label><span class="position-absolute r-0 d-none c-dccc" id="idCheck_OK">사용가능</span><span class="position-absolute r-0 d-none c-red" id="idCheck_NO">사용불가</span>
									<input type="text" name="id" class="form-control form-in" id="inputID" placeholder="ID를 입력 후 중복 확인을 해 주세요" maxlength="20" onkeyPress="id_check_oneKey();" onkeyup="this.value=this.value.replace(/[\ㄱ-ㅎㅏ-ㅣ가-힣]/g, &#39;&#39;);" style="width:calc(100% - 107px);" data-name="ID">
									<button type="button" class="btn btn-dccc btn-original position-absolute t-32-r-0" onclick="idCheck_go()">ID 중복확인</button>
									<span id="inputID-error" class="error invalid-feedback">아이디중복확인 해주세요!</span>
									</div>
									<!-- password -->
									<div class="form-group">
									<label for="inputPassword">비밀번호</label>
									<input type="password" name="password" class="form-control" id="inputPassword" placeholder="비밀번호를 8자 이상 20자 이하로 입력해주세요" maxlength="20" onchange="javascript:pw_length_check()" data-name="비밀번호">
									<span id="inputPassword-error" class="error invalid-feedback">비밀번호를 8자 이상 20자 이하로 입력해주세요!</span>
									</div>
									
									<!-- password check -->
									<div class="form-group">
									<label for="inputPasswordCK">비밀번호 확인</label>
									<input type="password" name="passwordCK" class="form-control" id="inputPasswordCK" placeholder="비밀번호를 다시 입력해주세요" maxlength="20" onchange="javascript:pw_check()" data-name="비밀번호 확인">
									<span id="inputPasswordCK-error" class="error invalid-feedback">비밀번호가 일치하지 않습니다!</span>
									</div>
									
									<!-- 이름 -->
									<div class="form-group">
									<label for="inputName">이름</label>
									<input type="text" name="name" class="form-control" id="inputName" placeholder="이름을 입력해주세요" maxlength="6" onchange="name_check()" data-name="성명">
									<span id="inputName-error" class="error invalid-feedback">이름을 입력해주세요!</span>
									</div>
									
									<!-- 생년월일 -->
									<div class="form-group">
									<label for="inputBirth">생년월일</label>
									<input type="text" name="birth" class="form-control" id="inputBirth" placeholder="생년월일을 6자리로 입력해주세요 ex)970101" maxlength="6" onchange="birth_check()" onkeyup="this.value=this.value.replace(/[\ㄱ-ㅎㅏ-ㅣ가-힣]/g, &#39;&#39;);" onkeyPress="javascript:CheckInputNum();" data-name="생년월일">
									<span id="inputBirth-error" class="error invalid-feedback">생년월일을 6자리로 올바르게 입력해 주세요!</span>
									</div>
									
									<!-- PHONE -->
									<div class="form-group">
									<label for="inputPhone">전화번호</label>
									<input type="text" name="phone" class="form-control" id="inputPhone" placeholder="전화번호를 -제외하고 숫자만 입력해주세요 ex)01012345678" maxlength="11" onchange="phone_check()" onkeyup="this.value=this.value.replace(/[\ㄱ-ㅎㅏ-ㅣ가-힣]/g, &#39;&#39;);" onkeyPress="javascript:CheckInputNum();" data-name="전화번호">
									<span id="inputPhone-error" class="error invalid-feedback">전화번호를 11자리로 입력해주세요!</span>
									</div>
									
									<!-- email -->
									<div class="form-group position-relative">
									<label for="inputEmail">이메일</label>
									<input type="email" name="email" class="form-control" id="inputEmail" placeholder="EMAIL을 입력해주세요 ex)abc123@naver.com" style="width:calc(100% - 102px);" onchange="email_check()" data-name="이메일">
									<button type="button" class="btn btn-dccc btn-original position-absolute t-32-r-0" onclick="email_confirm()">EMAIL 확인</button>							
									<span id="inputEmail-error" class="error invalid-feedback">이메일 형식에 맞게 입력해주세요!</span>
									</div>
									
									<div class="input-group col-sm-6 input-group p-0 ml-auto mb-4 d-none" id="divEmail">
									<input type="text" name="email_ck" placeholder="Email 인증번호 입력" class="form-control">
									<span class="input-group-append">
									<button type="button" class="btn btn-dccc btn-original" onkeyPress="javascript:CheckInputNum();" onclick="email_number_check()">확인</button>
									</span>
									</div>
									
									<div class="text-right mt-5">
									<button type="button" class="btn bg-gradient-secondary" onclick="javascript:history.back();">뒤로가기</button>&nbsp;
									<button type="button" class="btn btn-dccc btn-original" onclick="regist_go()">회원가입</button>
									</div>
									</form>
							</div>
							
							</div>
							</div>
						</div>
							</div>
						</div>
        	</div>
        	</div>
        </div>
        
        </div>
        
    </div>
    
    
    </div>
    <!-- /.content -->
  
  
  <!-- /.content-wrapper -->
	<script>
	

	
	var checkedID = "";
	var nowEmail = "";
	var checkEmail = "";
	
	function id_check_oneKey(){
		if($('input[name="id"]').val()!= checkedID) {
			$('input[name="id"]').addClass('is-invalid');
		}
	}
	
	function email_confirm(){
		/* email = $('input[name="email"]').va(); */
		var email = $('input[name="email"]');
		if(!email.val().match('@')){
			alert("이메일를 올바르게 입력해주세요!");
			email.focus();
			email.addClass('is-invalid');
			return;
		}else{
			email.removeClass('is-invalid');
		}
		
		alert("인증번호가 발송되었습니다. mail을 확인해 주세요.");
		$('div#divEmail').removeClass('d-none');
		$.ajax({
			url:'sendMail.do',
			method:'get',
			data:'email='+email.val(),
			success:function(data){
				checkEmail = data.trim();
			},
			error:function(error){
				alert(error.status);
			}
		})
	}
	
	function idCheck_go(){
		var id = $('input[name="id"]');
		
		if(!id.val()){
			alert("아이디를 입력해주세요.");
			id.focus();
			return;
		}
		
		$.ajax({
			url:'idCheck.do',
			method:'get',
			data:"id="+id.val().trim(),
			success:function(data){
				if(data.toUpperCase() == 'DUPLICATED'){
					alert("중복된 아이디입니다.");
					id.addClass('is-invalid');
					$('span#idCheck_OK').addClass('d-none');
					$('span#idCheck_NO').removeClass('d-none');
					checkedID="";
				}else{
					alert("사용가능한 아이디 입니다.");
					id.removeClass('is-invalid');
					$('span#idCheck_NO').addClass('d-none');
					$('span#idCheck_OK').removeClass('d-none');
					checkedID=id.val().trim();
					$('input[name="password"]').focus();
				}
			},
			error:function(error){
				alert(error.status);
			}
		})
	}
	
	function pw_length_check(){
		var pw = $('input[name="password"]');
		
		if(pw.val().length < 8 || pw.val().length > 20){
			alert("비밀번호 길이를 확인해주세요!");
			pw.focus();
			pw.addClass('is-invalid');
		}else(pw.removeClass('is-invalid'));
	}
	
	function pw_check(){
		var pw = $('input[name="password"]');
		var pwCK = $('input[name="passwordCK"]');
		
		if(pwCK.val().length < 8 || pwCK.val().length > 20){
			alert("비밀번호 길이를 확인해주세요!");
			pwCK.focus();
			pwCK.addClass('is-invalid');
		}else(pwCK.removeClass('is-invalid'));
		
		if(pw.val() != pwCK.val()){
			alert("두 비밀번호가 일치하지 않습니다!");
			pwCK.val('');
			pwCK.focus();
			pwCK.addClass('is-invalid');
		}else{
			pwCK.removeClass('is-invalid');
		}
	}
	
	function name_check(){
		var name = $('input[name="name"]');
		
		if(!name.val() || name.val()==''){
			alert("이름을 입력해주세요!");
			name.focus();
			name.addClass('is-invalid');
		}else{
			name.removeClass('is-invalid');
		}
	}
	
	function birth_check(){
		var birth = $('input[name="birth"]');
		if(birth.val().length != 6){
			alert("생년월일을 올바르게 입력해주세요!");
			birth.focus();
			birth.addClass('is-invalid');
		}else{
			birth.removeClass('is-invalid');
		}
	}
	function phone_check(){
		var phone = $('input[name="phone"]');
		if(phone.val().length != 11){
			alert("전화번호를 올바르게 입력해주세요!");
			phone.focus();
			phone.addClass('is-invalid');
		}else{
			phone.removeClass('is-invalid');
		}
	}
	
	function email_check(){
		var email = $('input[name="email"]');
		if(!email.val().match('@')){
			alert("이메일를 올바르게 입력해주세요!");
			email.focus();
			email.addClass('is-invalid');
		}else{
			email.removeClass('is-invalid');
		}
	}
	
	function email_number_check(){
		var email_ck = $('input[name="email_ck"]');
		if(email_ck.val().trim() != checkEmail.trim()){
			alert("잘못된 인증번호 입니다.");
		}else{
			alert("인증에 성공하였습니다.");
			nowEmail = $('input[name="email"]').val();
		}
		
	}
	
	function regist_go(){
		if($('input[name="id"]').val()!=checkedID){
			alert("아이디는 중복 확인이 필요합니다.");
			$('input[name="id"]').focus();
			return;
		}
		var isRight = true;
	    $("form#registMember").find("input.form-control").each(function(index, item){
	        
	        if ($(this).val().trim() == '' && $(this).attr("name") != 'email_ck') {
	            alert($(this).attr("data-name")+"을 입력하세요!");
	            $(this).focus();
	            isRight = false;
	            return false;
	        }
	    });
	    if (!isRight) {
	        return false;
	    }
	    
	    var email_check = $('input[name="email"]');
	    if(nowEmail.trim() != email_check.val().trim()){
	    	alert("이메일 인증이 필요합니다");
	    	return;
	    }
	    
	    
	    $("form#registMember").submit();
	}
    
	</script>
 
	<!-- main-content -->
  