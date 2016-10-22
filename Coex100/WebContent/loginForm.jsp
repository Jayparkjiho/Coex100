<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/style.css">
<script src='js/jquery-3.1.0.min.js'></script>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src="js/index.js"></script>
<script>
$(document).ready(function() {
    var checkTimeOut;
    $('#mem_id').keyup(function() {
       clearTimeout(checkTimeOut);
       checkTimeOut = setTimeout(function(){
          if($('#mem_id').val().length>6){
             var id = $('#mem_id').val();
             $.ajax({
                url: "idcheck",
                type: "post",
                data:
                   {"member.mem_id": id},
                success: function(data){
                   if(data.result == "ok"){
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
	<div class="login-page">
  		<div class="form">
    		<form class="register-form">
    		<tr>
               <td>아이디*</td>
               <td ><input type="text" id="email" name="email"> </font></td>
               <td><font id="check" color="red"></td>
            </tr>
      			<input type="text" id="mem_id" class="mem_id" placeholder="ID"/>
      			<input type="password" id="mem_pw" class="mem_pw" placeholder="Password"/>
      			<input type="text" placeholder="email address"/>
      			<button>create</button>
      			<p class="message">Already registered? <a href="#">Sign In</a></p>
    		</form>
    		
  		</div>
	</div>
</body>
</html>