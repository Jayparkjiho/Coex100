<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

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
			var login = {"member.mem_id":mem_id, "member.mem_pw":mem_pw};
			$.ajax({
				url:'login',
				method:'post',
				data:login,
				dataType:'json',
				success: function(response){
					$('#myModal').modal('hide');
					$('#loginModal').css('display','none');
					$('.clearfix').append('<li><a href = "logout.action">로그아웃</a></li>');
					$('.clearfix').append('<li><a href = "myPage.action">마이페이지</a></li>');
				}
			});
		});
		
		/* $('.a-next').on('click', function(){
			var perpose = $(':radio[name="goal"]:checked').val();
			var sex = '';
			var age = '';
			var people = '';
			var relation = '';
			var baby = '';
			var transport = '';
			var startTime = '';
			var endTime = '';
			alert(perpose);
			if (perpose.length === 0) {
				//아무것도 입력 받지 않았을 때 예외처리 해야됨
			}
			else{
				var sex = $(':radio[name="sex"]:checked').val();
				var age = $('#age select option:selected').val();
				alert(sex);
				alert(age);
			}
		}); */
	});
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
							<li><a href="#about">점포 소개</a></li>
							<li><a href="#work" class="r_spacer">추천경로・ 통계</a></li>
							<!-- <li><a href="#shop">예약관리</a></li> -->
							
							<!-- 로그인 모달 -->
							<li>
								<a id="loginModal" data-toggle="modal" data-target="#myModal">로그인/회원가입</a> 
								<!-- Modal -->
								<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
									aria-labelledby="myModalLabel" aria-hidden="true">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"aria-label="Close">
													<span aria-hidden="true">&times;</span>
												</button>
												<h4 class="modal-title" id="myModalLabel">로그인</h4>
											</div>
											<div class="modal-body">
											
												<!-- 로그인 폼 show -->
												<div class="login-page">
													<div class="form">
														<form class="login-form" action="login">
															<input class="loginId" type="text" id = "username" placeholder="username" /> 
															<input type="password" id = "userpassword" placeholder="password" />
															<input type="button" id="submit" value="login"/>
															<p class="message">
																Not registered? <a href="joinForm">Create an account</a>
															</p>
															<br />
															<button id="googleplus">Sign in with Google</button>
														</form>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>

							</li>

						</ul>
					</nav>
				</div>
			</div>
		</div>
		<div class="hero">
         <a data-toggle="modal" data-target="#infoModal"><img alt="" class="infoBtn"></a>
      	</div>

	</header>

	<!-- 기본정보 모달 -->
   <div class="modal fade" id="infoModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog">
         <div class="modal-content">
            <div class="modal-header">
               <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
               </button>
               <h4 class="modal-title" id="myModalLabel">목적 WHY?</h4>
            </div>
            <div class="modal-body">
               <div>
                  <input type="radio" name="goal" value="박람회">박람회
                  <input type="radio" name="goal" value="쇼핑">쇼핑
                  <input type="radio" name="goal" value="식사">식사
                  <input type="radio" name="goal" value="데이트">데이트
                  <input type="radio" name="goal" value="영화">영화
                  <input type="radio" name="goal" value="기타">기타
               </div>

            </div><!-- 모달바디 끝-->
            <div class="modal-bottom">
               <a class="a-before">이전페이지</a>
               <a data-toggle="modal" data-target="#infoModal2" class="a-next" data-dismiss="modal">다음페이지</a>
               
            </div><!-- 모달 푸터 -->
         </div>
      </div>
   </div>
   <!-- 기본정보모달끝 -->

<!-- 기본정보2 모달 -->
   <div class="modal fade" id="infoModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog">
         <div class="modal-content">
            <div class="modal-header">
               <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
               </button>
               <h4 class="modal-title" id="myModalLabel">기본 정보</h4>
            </div>
            <div class="modal-body">
               <div>
                  <input type="radio" name="sex" value="m">남자
                  <input type="radio" name="sex" value="w">여자
               </div>
               <div>
                  <span>연령대</span> 
                  <select id="age">
                     <option value="10">10대</option>
                     <option value="20">20대</option>
                     <option value="30">30대</option>
                     <option value="40">40대</option>
                     <option value="50">50대이상</option>
                  </select>
               </div>
               <div>
                  <span>동행인</span> 
                  <select id="people">
                     <option value="0">없음</option>
                     <option value="1">1명</option>
                     <option value="2">2명</option>
                     <option value="3">3명</option>
                     <option value="기타">기타</option>
                  </select>
               </div>
               <div>
                  <span>관계</span> 
                  <select id="relation">
                     <option value="친구">친구</option>
                     <option value="연인">연인</option>
                     <option value="부부">부부</option>
                  </select>
               </div>
               <div>
                  <span>아이 여부</span> 
                  <input type="radio" name="baby" value="t">있음
                  <input type="radio" name="baby" value="f">없음
               </div>
               <div>
                  <span>교통편</span> 
                  <select id="transport">
                     <option value="친구">도보</option>
                     <option value="연인">버스</option>
                     <option value="부부">지하철 2호선</option>
                     <option value="부부">지하철 9호선</option>
                  </select>
               </div>
               <div>
                  <span>체류 시간</span> 
                  <select id="startTime">
                     <option value="친구">오전12시</option>
                     <option value="연인">오전1시</option>
                     <option value="부부">오전2시</option>
                     <option value="부부">오전3시</option>
                     <option value="친구">오전4시</option>
                     <option value="연인">오전5시</option>
                     <option value="부부">오전6시</option>
                     <option value="부부">오전7시</option>
                     <option value="친구">오전8시</option>
                     <option value="연인">오전9시</option>
                     <option value="부부">오전10시</option>
                     <option value="부부">오전11시</option>
                     <option value="친구">오후12시</option>
                     <option value="연인">오후1시</option>
                     <option value="부부">오후2시</option>
                     <option value="부부">오후3시</option>
                     <option value="친구">오후4시</option>
                     <option value="연인">오후5시</option>
                     <option value="부부">오후6시</option>
                     <option value="부부">오후7시</option>
                     <option value="친구">오후8시</option>
                     <option value="연인">오후9시</option>
                     <option value="부부">오후10시</option>
                     <option value="부부">오후11시</option>
                  </select>
                  <span>~</span>
                   <select id="endTime">
                     <option value="친구">오전12시</option>
                     <option value="연인">오전1시</option>
                     <option value="부부">오전2시</option>
                     <option value="부부">오전3시</option>
                     <option value="친구">오전4시</option>
                     <option value="연인">오전5시</option>
                     <option value="부부">오전6시</option>
                     <option value="부부">오전7시</option>
                     <option value="친구">오전8시</option>
                     <option value="연인">오전9시</option>
                     <option value="부부">오전10시</option>
                     <option value="부부">오전11시</option>
                     <option value="친구">오후12시</option>
                     <option value="연인">오후1시</option>
                     <option value="부부">오후2시</option>
                     <option value="부부">오후3시</option>
                     <option value="친구">오후4시</option>
                     <option value="연인">오후5시</option>
                     <option value="부부">오후6시</option>
                     <option value="부부">오후7시</option>
                     <option value="친구">오후8시</option>
                     <option value="연인">오후9시</option>
                     <option value="부부">오후10시</option>
                     <option value="부부">오후11시</option>
                  </select>
               </div>
               
            </div><!-- 모달바디 끝-->
            <div class="modal-bottom">
               <a class="a-before">이전페이지</a>
               <a data-toggle="modal" data-target="#infoModal3" class="a-next" data-dismiss="modal">다음페이지</a>
               
            </div><!-- 모달 푸터 -->
         </div>
      </div>
   </div>
   <!-- 기본정보모달2끝 -->
	
	<div class="modal fade" id="infoModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog">
         <div class="modal-content">
            <div class="modal-header">
               <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
               </button>
               <h4 class="modal-title" id="myModalLabel">목적 WHY?</h4>
            </div>
            <div class="modal-body">
               
            </div><!-- 모달바디 끝-->
            <div class="modal-bottom">
               <a class="a-before">이전페이지</a>
               <a data-toggle="modal" data-target="#infoModal2" class="a-next" data-dismiss="modal">다음페이지</a>
               
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