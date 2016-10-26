<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
$(document).ready(function(){
   
$(".img").rotate({ 
   bind: 
     { 
        mouseover : function() { 
            $(this).rotate({animateTo:180})
        },
        mouseout : function() { 
            $(this).rotate({animateTo:0})
        }
     } 
})

</script>
<style type="text/css">
html{
   background-image : url(img/background.jpg);
   background-repeat: no-repeat;
   background-size: cover;
   text-align:center; 
 	width: 100%;
 	height: 100%;
}

.table{
   display: inline-block;
   padding-top: 20%;
}
.img{
   width: 100%;
   height: 100%;
}
.col{
position:relative;
width: 200px; 
height: 200px; 
float: left;
}
.img:hover{
  -webkit-transform:rotate(180deg);
    transform:rotate(180deg);
    cursor: auto;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body >
   <div class="table">
      <div class="row" >
         <div class="col">
		<form action="detailForm" method="post">
            <input type="hidden" value="0" name="answer.perpose">
            <input type="image"class="img"  src="img/perpose-exhibition.jpg">
		</form>
            </div>
         	<form action="detailForm" method="post">
         <div class="col">
            <input type="image" class="img"  src="img/perpose-restaurant.jpg"></div>
         	<input type="hidden" value="1" name="answer.perpose">
        	</form>
			<form action="detailForm" method="post">
         <div class="col">
            <input type="image" class="img"  src="img/perpose-shopping.jpg"></div>
      		<input type="hidden" value="2" name="answer.perpose">
      	</form>
      </div>
      <div class="row" style="clear: both">
      <form action="detailForm" method="post">
         <div class="col">
            <input type="image" class="img"  src="img/perpose-movie.jpg"></div>
         	<input type="hidden" value="3" name="answer.perpose">
         	</form>
         	<form action="detailForm" method="post">
         <div class="col">
            <input type="image" class="img" src="img/perpose-lover.jpg"></div>
         	<input type="hidden" value="4" name="answer.perpose">
         	</form>
         	<form action="detailForm" method="post">
         <div class="col">
            <input type="image" class="img"  src="img/perpose-another.jpg"></div>
   			<input type="hidden" value="5" name="answer.perpose">
   			</form>
   </div>
</div>
<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
<script src="script/jquery-3.1.1.min.js"></script>
<script src='script/jquery.m.flip.js'></script>
</body>
</html>


