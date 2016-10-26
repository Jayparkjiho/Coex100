<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- test1 -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<script src="script/jquery-3.1.0.min.js" type="text/javascript"></script>
<script>
	$(function(){
		$("#submit").on('click', function(){
			var mem_id = $('#username').val();
			var mem_pw = $('#userpassword').val();
			
			if (mem_id.length===0 || mem_pw.length===0) {
				alert('모두 입력해 주세요.');
				return;
			}
			var loginData = {"member.mem_id":mem_id, "member.mem_pw":mem_pw};
			$.ajax({
				url:'login',
				method:'post',
				data:loginData,
				dataType:'json',
				success: function(response){
					$('#myModal1').modal('hide');
					$('#loginModal').css('display','none');
					$('.clearfix').append('<li><a href = "logout.action">로그아웃</a></li>');
					$('.clearfix').append('<li><a href = "myPage.action">마이페이지</a></li>');
				},
				error: function(){
					alert("로그인 할 수 없습니다.");
				}
				
			});
		});
		
		
		$('#joinFormCheck').on('click', function(){
			var mem_id = $('#id').val();
			var mem_pw = $('#pw').val();
			var mem_pwc = $('#pwc').val();
			var mem_sex = $(':radio[name="mem_sex"]:checked').val();
			alert(mem_sex);
			var mem_age = $('#age').val();
			var mem_phone = $('#phone').val();
			var mem_email = $('#email').val();
			
			if (mem_pw != mem_pwc) {
				alert("비밀번호가 같지 않습니다.");
				return;
			}
			
			var joinData = {
				"member.mem_id":mem_id, 
				"member.mem_pw":mem_pw, 
				"member.mem_sex":mem_sex, 
				"member.mem_age":mem_age,
				"member.mem_phone":mem_phone,
				"member.mem_email":mem_email
			};
			var modal = $('#myModal2').modal();
			$.ajax({
				url:'join',
				method:'post',
				data:joinData,
				dataType:'json',
				success: function(msg){
					console.log(msg);
					$('#myModal2').modal('hide');
				}
			});
		}); 
		
		
		var checkTimeOut;
		$('#id').keyup(function() {
		   	clearTimeout(checkTimeOut);
		   	checkTimeOut = setTimeout(function(){ 
		   		if($('#id').val().length>1){
		   			var id = $('#id').val();
		   			$.ajax({
		   				url:"idCheck",
		   				type:"post",
		   				data:
		   					{"member.mem_id": id},
		   				dataType:'json',
		   				success: function(data){
		   					if(data.result == true){
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

<title>코엑스 100배 즐기기</title>
<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/styles.css?v=1.2" rel="stylesheet">
<link href="css/queries.css?v=1.2" rel="stylesheet">
<link rel="stylesheet" href="css/flexslider.css?v=1.2" type="text/css">
<link rel="stylesheet" href="css/animate.css" type="text/css">
<link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
</head>
<body>
	<header>
		<div class="container">
			<div class="row">
				<div class="responsive-logo"></div>
				<div class="pullcontainer">
					<a href="#" id="pull"><i class="fa fa-bars fa-2x"></i></a>
				</div>
			</div>
			<div class="row">
				<div class="col-md-8 col-md-offset-2">
					<nav>
						<div class="logo-holder"></div>
						<ul class="clearfix">
							<li><a href="insertPlaceForm.action">점포 소개</a></li>
							<li><a href="#work" class="r_spacer">추천경로・ 통계</a></li>
							<!-- <li><a href="#shop">예약관리</a></li> -->
							
							<!-- 로그인 모달 -->
							<li>
								<a id="loginModal" data-toggle="modal" data-target="#myModal1">로그인/회원가입</a> 
							</li>

						</ul>
					</nav>
				</div>
			</div>
		</div>
		<div class="hero">
         <a href="questionForm.action"><img alt="" class="infoBtn"></a>
      	</div>

	</header>

	<!-- Modal -->
	<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">로그인</h4>
				</div>
				<div class="modal-body">
					<!-- 로그인 폼 show -->
					<div class="login-page">
						<div class="form">
							<form class="login-form" action="login">
								<input class="loginId" type="text" id="username" placeholder="username" /> 
								<input type="password" id="userpassword" placeholder="password" /> 
								<input type="button" id="submit" value="login" />
								<p class="message"> Not registered? 
								<a data-toggle="modal" data-target="#myModal2" data-dismiss="modal">Create an account</a>
								</p>
								<br/>
								<button id="googleplus">Sign in with Google</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog">
         <div class="modal-content">
            <div class="modal-header">
               <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
               </button>
               <h4 class="modal-title" id="myModalLabel">회원가입</h4>
            </div>
            <div class="modal-body">
            
            
            <form action="join" method="post" id="joinForm" name="joinForm">
			<p>아이디</p>
			<p>
			<input type="text" id="id" name="member.mem_id" class="id" placeholder="ID" />
			<font id="check" color="red"></font>
			</p>

			<p>비밀번호</p>
			<p>
			<input type="password" id="pw" name="member.mem_pw"
				title="Must be at least 6 characters long" placeholder="비밀번호 5자 이상" name="password" required>
			</p>

			<p>비밀번호 확인</p>
			<p>
			<input type="password" id="pwc" placeholder="비밀번호를 다시 입력해 주세요" name="passwordConfirm" required>
			</p>

			<p>성별</p>
			<p>
			<input type="radio" name="mem_sex" value="0"> <span>남자</span>&nbsp;&nbsp;
			<input type="radio" name="mem_sex" value="1"> <span>여자</span>
			</p>

			<p>나이</p>
			<p>
			<input type="text" id="age" name="member.mem_age" placeholder="" required>
			</p>

			<p>전화번호</p>
			<p>
			<input type="text" id="phone" name="member.mem_phone" placeholder="010-0000-0000" required>
			</p>

			<p>Email</p>
			<p>
			<input type="email" name="member.mem_email" id="email"
				pattern="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$"
				placeholder="name@site.com" required> 
			</p>
				
			
			<br/><br/><br/>
			<p>
			<input type="checkbox" name="agree" id="ca_tos" required> 
			<label for="ca_tos">I agree to the <a href="#">terms of service</a>
			</label>
			<br/><br/>
			<input type="button" id="joinFormCheck" name="joinFormCheck" value="가입하기">
			</p>

			</form>
            </div><!-- 모달바디 끝-->
            <div class="modal-bottom">
              <!--  <a class="a-before">이전페이지</a>
               <a data-toggle="modal" data-target="#infoModal2" class="a-next" data-dismiss="modal">다음페이지</a>
                -->
            </div><!-- 모달 푸터 -->
         </div>
      </div>
   </div>
   <!-- 기본정보모달끝 -->


	<div class="container-fluid intro" id="about">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<h1 class="chain">A new generation of vintage bike</h1>
				<p class="text-intro">Lorem Ipsum is simply dummy text of the
					printing and typesetting industry. Lorem Ipsum has been the
					industry's standard dummy text ever since the 1500s, when an
					unknown printer took a galley of type and scrambled it to make a
					type specimen book. It has survived not only five centuries, but
					also the leap into electronic typesetting, remaining essentially
					unchanged.</p>
			</div>
		</div>
	</div>
	
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins)-->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.flexslider.js"></script>
	<script src="js/scripts.js"></script>
	<script src="js/modernizr.js"></script>
	<script src="js/waypoints.min.js"></script>
</body>
</html>