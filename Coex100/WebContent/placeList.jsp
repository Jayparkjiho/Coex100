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
</head>
<body>
<div class="page">
	<div class="category">
	<a class="cate">전체</a>
	<a class="cate">F&B</a>
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
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="js/materialize.min.js"></script>
<script src="script/jquery-3.1.0.min.js"></script>
<script>

	var data = $('a').html();
	alert(data);
	$('a').on("click",function(){
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
		    	      html2 = "<div display='inline-block'><div class='card small'>" + 
		    	      		 /*  "<h2 class='header'>Horizontal Card</h2>"+ */
		    	      		  "<div class='card horizontal'>"+
		    	      		  "<div class='card horizontal'><div class='card-image'>"+
		    	      		  "<img src='http://lorempixel.com/100/190/nature/6'>"+
		    	      		  "</div><div class='card-stacked'>"+
		    	      		  " <div class='card-content'>"+
		    	      		  "<p>list_place[i].place_name</p></div>"+
		    	      		  "<div class='card-action'><a href='#'>This is a link</a></div></div></div></div></div>"
		    	      $('.cardList').append(html);
		    	  }
		      },
		      error: function(e){
		          alert('e');
		      }
		  });
	});
	
</script>
</body>
</html>