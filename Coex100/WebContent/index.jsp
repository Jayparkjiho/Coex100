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
/* var jq3_1_0 = $.noConflict();
(function($) { */
	
	
	  $(function(){
      $("#loginSend").on('click', function(){
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
               $('#sideBar').prepend('<a href = "logout.action">로그아웃</a> <a href = "myPage.action">마이페이지</a>');
               $('.clearfix').append('<li></li>');
               sessionStorage.setItem("loginId", mem_id);
               console.log(sessionStorage.getItem('loginId'));
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
   });//end ready()
   /* })(jq3_1_0)//end ready() */
   
   function openNav() {
       document.getElementById('mysidenav').style.width = '250px';
       document.getElementById('mymain').style.marginRight = '250px';
       document.body.style.backgroundColor = 'rgba(0,0,0,0.4)';
    }
    function closeNav() {
       document.getElementById('mysidenav').style.width = '0';
       document.getElementById('mymain').style.marginRight = '0';
       document.body.style.backgroundColor = 'white';
    }

</script>
<style type="text/css">
      /* 사이드바 스타일 */
      .sidenav {
         height:100%;
         width: 0;
         position: fixed;
         z-index:1;
         top: 0;
         right: 0;
         background-color: rgb(99, 185, 159);
         overflow-x: hidden;
         transition:0.5s ease-in-out;
         padding-top: 60px;
      }
      .sidenav a {
         padding: 8px 8px 8px 32px;
         text-decoration: none;
         font-size: 25px;
         color: #fff;
         display: block;
         transition: 0.2s ease-in-out;
      }
      .sidenav a:hover, .offcanvas a:focus {
         color: #000;
      }
      .closebtn {
         position: absolute;
         top: 0;
         right: 25px;
         font-size: 36px !important;
         margin-right: 50px;
      }
      .openmenu:hover {
         color:rgb(99, 185, 159);
         transition:0.5s ease-in-out;
      }
      .openmenu {
         font-size: 25px;
         cursor:pointer;
         transition:0.5s ease-in-out;         
      }
      .openmenu > i {
         font-size: 30px;
      }
      #mymain {
         transition:0.5s ease-in-out;
      }
      /* 미디어쿼리 적용 */
      @media screen and (max-height:450px) {
         .sidenav {
            padding-top:15px;
         }
         .sidenav a {
            font-size: 18px;
         }
      }
</style>
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
<div id="mymain">
         <div class="row" >
            <!-- <div class="responsive-logo" style="display: inline-block;"></div> -->
            <img alt="logo" src="img/logo.png" style="width: 10%;">
            <!-- <div class="pullcontainer" style="display: inline-block;"> -->
            <a id="loginModal" data-toggle="modal" data-target="#myModal1" data-dismiss="modal" style="display: inline-block; margin-left: 70%;">로그인/회원가입</a>
            <div style="display: inline-block; text-align: right; margin-left: 5%; ">
            	<span id="sideBar" class="openmenu" onclick='openNav()'>
   					<i class="fa fa-bars fa-2x" aria-hidden="true"></i>
   				</span>
   			</div>	
            <!-- </div> -->
         </div><!-- 로고포함 로우 -->
          	
          	<div id="mysidenav" class="sidenav">
			      <a href="main.action" class="closebtn" onclick='closeNav()'>x</a>
			      <a href="insertPlaceForm.action">가계 정보 입력</a>
			      <a href="question1.action">정보입력질문</a>
			      <a href="List.action">상점리스트</a>
			      <a href="#">Contact</a>
   			</div><!-- 사이드네비 -->
      
      <div class="hero">
         <h1 class="c-top-header mod-white mod-shadow">코엑스에<br /> 
            <span class='c-animated-headline'> 
            <span data-strings="[&quot;영화보러&quot;, &quot;쇼핑하러&quot;, &quot;박람회보러&quot;, &quot;식사하러&quot; , &quot;친구만나러&quot;]"
               class="js-animated-headline">
               영화보러</span> 
            <span class="js-animated-headline-cursor" style="opacity: 0">|</span>
            </span>오셨나요?
         </h1>
         <!-- <a href="questionForm.action"><img alt="" class="infoBtn"></a> -->
      </div><!-- 히어로 -->


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
                        <input type="button" id="loginSend" value="login" />
                        <p class="message"> Not registered? 
                        <a data-toggle="modal" data-target="#myModal2" data-dismiss="modal">Create an account</a>
                        </p>
                        <br/>
                        <button id="googleplus">Sign in with Google</button>
                     </form>
                  </div><!-- 폼 -->
               </div><!-- 로긴페이지 -->
            </div><!-- 모달바디 -->
         </div>
      </div>
   </div><!-- 모달페이드 -->

   <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog">
         <div class="modal-content">
            <div class="modal-header">
               <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
               </button>
               <h4 class="modal-title" id="myModalLabel">회원가입</h4>
            </div><!-- 모달헤더 -->
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
         <input type="radio" name="mem_sex" value="male"> <span>남자</span>&nbsp;&nbsp;
         <input type="radio" name="mem_sex" value="female"> <span>여자</span>
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
         </div><!-- modat content -->
      </div><!-- modal dialog -->
   </div><!-- modal fade -->
   <!-- 기본정보모달끝 -->


      <div class="container-fluid intro" id="about">
         <div class="row">
            <!-- <div class="col-md-8 col-md-offset-2"> -->
               <!--#고경현 10-22 19시  -->
               <h1 class="chain">코엑스,<br>
               <span class="chain_little">얼마나</span> 아시나요?
               </h1>
               <!-- <p class="text-intro">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p> -->
            <!-- </div> -->
         </div>
      </div>
      
      <!--#고경현 10-22 21  -->
      <div class="container">
        <h2 class="test_h2"><a>이달의 점포!!</a></h2>
        <ul class="live-in-qed-list">


          <li data-sr="scale up 70% over 0.5s" class="two-column blog-item ">
            <a class="test_a" href="http://blog.qedgroup.cz/2016/10/05/experiment-mars24/"></a>
            <div class="left">
              <div class="text-container table-display ">
                <div class="table-cell-display">
                  <div class="category-container">
                    <div class="category clanek">Článek</div>
                  </div>
                  <h4 class="truncate">Experiment MARS24</h4>
                </div>
              </div>
            </div>
            <div class="right blog-photo"><img src="http://blog.qedgroup.cz/wp-content/uploads/2016/10/airstr-700x465.png"></div>
            
          </li>


          <li data-sr="scale up 70% over 0.5s" class="two-column blog-item ">
            <a class="test_a" href="http://blog.qedgroup.cz/2016/08/31/emotional-management-4-mindfulness-dechu-ukazka-meditace/"></a>
            <div class="left">
              <div class="text-container table-display ">
                <div class="table-cell-display">
                  <div class="category-container">
                    <div class="category emoce">Emoce</div>
                  </div>
                  <h4 class="truncate">Emotional Management 4 – Mindfulness dechu – ukázka meditace</h4>
                </div>
              </div>
            </div>
            <div class="right blog-photo"><img src="http://blog.qedgroup.cz/wp-content/uploads/2016/08/EM_4.png"></div>
            
          </li>


          <li data-sr="scale up 70% over 0.5s" class="two-column blog-item ">
            <a class="test_a" href="http://blog.qedgroup.cz/2016/08/24/emotional-management-3-principy-meditace-mindfulness/"></a>
            <div class="left">
              <div class="text-container table-display ">
                <div class="table-cell-display">
                  <div class="category-container">
                    <div class="category emoce">Emoce</div>
                  </div>
                  <h4 class="truncate">Emotional Management 3 – Principy meditace mindfulness</h4>
                </div>
              </div>
            </div>
            <div class="right blog-photo"><img src="http://blog.qedgroup.cz/wp-content/uploads/2016/08/EM_3.png"></div>
            
          </li>


          <li data-sr="scale up 70% over 0.5s" class="two-column blog-item ">
            <a class="test_a" href="http://blog.qedgroup.cz/2016/08/17/krok-z-komfortni-zony-daniela-kramulova-z-psychologie-dnes-o-workshopu-v-qedu/"></a>
            <div class="left">
              <div class="text-container table-display ">
                <div class="table-cell-display">
                  <div class="category-container">
                    <div class="category clanek">Článek</div>
                  </div>
                  <h4 class="truncate">Krok z komfortní zóny – Daniela Kramulová z Psychologie dnes o workshopu v QEDu.</h4>
                </div>
              </div>
            </div>
            <div class="right blog-photo"><img src="http://blog.qedgroup.cz/wp-content/uploads/2016/08/firewalk.png"></div>
            
          </li>

        </ul>
        <a href="http://blog.qedgroup.cz/" target="_blank" class="btn btn-default">알아보기</a>
   	
      </div><!-- container -->
      
   
   <!-- jQuery (necessary for Bootstrap's JavaScript plugins)-->
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
   <!-- Include all compiled plugins (below), or include individual files as needed -->
   <script src="js/bootstrap.min.js"></script>
   <script src="js/jquery.flexslider.js"></script>
   <script src="js/scripts.js"></script>
   <script src="js/modernizr.js"></script>
   <script src="js/waypoints.min.js"></script>
   <script src="js/torchlight.auto.js"></script> 
     </div>
</body>
</html>