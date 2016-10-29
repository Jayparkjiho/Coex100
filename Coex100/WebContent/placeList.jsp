<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> -->
<!--Import Google Icon Font-->
<link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<!--Import materialize.css-->
<link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
<!--Let browser know website is optimized for mobile-->
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<title>장소 소개</title>
<style type="text/css">
.card{
	width: 500px; 
	float: left; 
}
</style>
</head>
<body>
<!--Import jQuery before materialize.js-->
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="js/materialize.min.js"></script>


<div class="page">
	<div class="category">
	<a class="cate" value="all">전체</a>
	<a class="cate" id="F&B">F&B</a>
	<a class="cate">패션의류</a>
	<a class="cate">문화컨텐츠</a>
	<a class="cate">패션잡화</a>
	<a class="cate">뷰티</a>
	<a class="cate">라이프스타일</a>
	<a class="cate">서비스</a>
	</div><!-- category div 닫힘 -->
	
	<div class="cardList">
	<!-- 붙여넣어질 카드레이아웃의 가게정보들 -->
	</div>
	
	
</div><!-- page div 닫힘 -->





<script src="script/jquery-3.1.0.min.js"></script>
<script>
    	var currentPage = '';

	$('a').on("click",function() {
		currentPage = 1;
    	console.log("처음 로딩 시 현재페이지: " + currentPage);
    	/*화면 준비 후 AJAX로 로그 로딩 */
    	/* var member_id = '<s:property value="%{#session.login.member_id}"/>'
    	console.log('세션에 저장된 member_id : ' + member_id);
    	var data = {
       		'member_id' : member_id
    	}; */
    
   		$.ajax({
       		url : 'getList',
       		type : 'post',
       		data : {
          		/* 'member_id' : member_id, */
          		'currentPage' : currentPage
       		},
       		success : function(data) {
          		$(data.list_place).each(function(index, item) {
             		var np = addLogContent(item);
             		$('.cardList').append(np);
             		/* var log_id = item.log_id;
             		$('.'+log_id).css('background-image','url(img/'+item.member_id+ '/' + item.log_id+'/'+item.main_photo_name + ')');
             		*/
          		}); 
       		}
    	}); 
	});

	
	/*$('a').on("click",function(){
		$.ajax({
		      url: 'getList',
		      type: 'post',      
		      data: {"place.place_category":data},      
		      success: function(result){
		    	  alert(result.list_place);
		    	  var html;
		    	  var html2;
		    	  var list_place = result.list_place;
		    	  
		    	  for( var i = 0 ; i < list_place.length ; i ++ ){
		    		  html = "<div class='row'><div class='col s12 m7'><div class='card'><div class='card-image'>"+
		    	              +"<img src='img/Mouse.png'>"+
		    	              "<span class='card-title'>1</span></div><div class='card-content'>"+
		    	              "<p>check</p></div><div class='card-action'><a href='#'>This is a link</a>"+
		    	            "</div></div></div></div>";
		    	      html2 = "<div class='card small'>" + 
		    	      		 /*  "<h2 class='header'>Horizontal Card</h2>"+ 
		    	      		  "<div class='card horizontal'>"+
		    	      		  "<div class='card horizontal'><div class='card-image'>"+
		    	      		  "<img src=" + list_place[i].place_photo_name + ">"+
		    	      		  "</div><div class='card-stacked'>"+
		    	      		  " <div class='card-content'>"+
		    	      		  "<p>" + list_place[i].place_name + "</p></div>"+
		    	      		  "<div class='card-action'><a href='a#'>"+ "더보기" +"</a></div></div></div></div>"
		    	      $('.cardList').append(html2);
		    	  }
		      },
		      error: function(e){
		          alert('e');
		      }
		  });
	}); */
	
	$(document).scroll(function() {
        var maxHeight = $(document).height();
        var currentScroll = $(window).scrollTop() + $(window).height();


        if (maxHeight <= currentScroll + 100) {
           /* AJAX를 연결하여 데이터를 받아옵니다.*/

           currentPage += 1; // 다음페이지가 되야 하므로 현재 페이지+1
           console.log("스크롤후 현재페이지: " + currentPage);
          /*  var member_id = '<s:property value="%{#session.login.member_id}"/>'
           console.log('세션에 저장된 member_id : ' + member_id);*/

           $.ajax({
              url : 'getList',
              type : 'post',
              data : {
                 /* 'member_id' : member_id, */
                 'currentPage' : currentPage
              },
              success : function(data) {
                 $(data.list_place).each(function(index, item) {
                    var np = addLogContent(item);
                    $('.cardList').append(np);
                 });
              }
           });
        }
     });
	
	var addLogContent = function(list_place) {
        /* var log_tag = '';
        $(list_place.log_tag_list).each(function(index, item) {
           log_tag += ' #' + item.log_tag_name;
        }); */
  
        var np = '';
        
        np += "<div class='card small'>";
        np += "<div class='card horizontal'>";
        np += "<div class='card horizontal'><div class='card-image'>";
        np += "<img src=" + list_place.place_photo_name + ">";
        np += "</div><div class='card-stacked'>";
        np += "<div class='card-content'>";
        np += "<p>" + list_place.place_name + "</p>";
        np += "<p>" + list_place.place_info + "</p></div>"
        np += "<div class='card-action'><a href='a#'>"+ "더보기" +"</a></div></div></div></div>";
  
        return np;
  
     /* 내용 채워넣기 */
     }; 
	
</script>
</body>
</html>