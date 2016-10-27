<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
	
	<div class="card">
	<!-- 붙여넣어질 카드레이아웃의 가게정보들 -->
	</div>
	
	
</div><!-- page div 닫힘 -->

<script src="script/jquery-3.1.0.min.js"></script>
<script>
var data = $('a').html();
	$('a').on("click",function(){
		$.ajax({
		      url: 'getList',
		      type: 'post',      
		      data: {"place.place_category":data},      
		      error: function(e){
		          alert('e');
		      },
		      success: function(data){
		    	  console.log(data);
		       alert(data);
		      }
		  });
		
	});
	
</script>
</body>
</html>