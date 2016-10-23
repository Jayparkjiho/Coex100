<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script src="script/jquery-3.1.0.min.js" type="text/javascript"></script>
<script>
$(document).ready(function() {
    var checkTimeOut;
    $('#mem_id').keyup(function() {
    	clearTimeout(checkTimeOut);
    	checkTimeOut = setTimeout(function(){ 
    		if($('#mem_id').val().length>1){
    			var id = $('#mem_id').val();
    			$.ajax({
    				url:"idCheck",
    				type:"post",
    				data:
    					{"member.mem_id": id},
    				dataType:'json',
    				success: function(data){
    					if(data.result == 'true'){
    						$('#check').empty();
    						$('#check').append("사용 가능한 아이디 입니다");
    					}
    					else{
    						$('#check').empty();
    						$('#check').append("사용 불가능한 아이디 입니다");
    					}
                	}//end success function
             	});//end ajax
          
          	};//end if문
       	},1000); //end setTimeout 
   	});//set keyup
});//end ready



</script>
</head>
<body>
	
	<form action="signUp" method="post">
		<fieldset>

			<legend>Register</legend>

			<p>아이디</p>
			<input type="text" id="mem_id" class="mem_id" placeholder="ID" />
			<font id="check" color="red"></font>

			<p>비밀번호</p>
			<input type="password" id="mem_pw" pattern=".{6,}"
				title="Must be at least 6 characters long" name="password"
				placeholder="&#8226;&#8226;&#8226;&#8226;&#8226;&#8226;" required>

			<p>비밀번호 확인</p>
			<input type="password" id="pw_c" pattern="" name="passwordConfirm"
				placeholder="&#8226;&#8226;&#8226;&#8226;&#8226;&#8226;" required>

			<p>성별</p>
			<input type="radio" name="gender"> <span>남자</span>&nbsp;&nbsp;
			<input type="radio" name="gender"> <span>여자</span>

			<p>나이</p>
			<input type="text" name="age" placeholder="" required>

			<p>전화번호</p>
			<input type="text" name="phone" placeholder="010-0000-0000" required>

			<p>Email</p>
			<input type="email" name="email"
				pattern="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$"
				placeholder="name@site.com" required> 
				
			
			<br/><br/><br/>
			<input type="checkbox" name="agree" id="ca_tos" required> 
			<label for="ca_tos">I agree to the <a href="#">terms of service</a>
			</label>

			<button type="submit" name="signup" id="ca_btn">SignUp!</button>

		</fieldset>
	</form>


</body>
</html>