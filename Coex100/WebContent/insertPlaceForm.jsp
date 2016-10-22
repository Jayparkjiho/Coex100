<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="insertPlace" method="post" >
이름<input type="text" id="place_name" name="place.place_name" ><br>
위치<input type="text" id="place_loc" name="place.place_loc"><br>
정보<input type="text" id="place_info" name="place.place_info"><br>
가격<input type="text" id="place_price" name="place.place_price"><br>
평가<input type="text" id="place_like" name="place.place_like"><br>
사용시간<input type="text" id="place_time" name="place.place_time"><br>
사진<input type="file" id="place_picture" name="place.place_picture"><br>
영업시간<input type="text" id="place_runtime" name="place.place_runtime" ><br>
카테고리<input type="text" id="place_cate" name="place.place_cate"><br>
메뉴<input type="text" id="place_menu" name="place.place_menu"><br>
<input type="submit" value="확인">
</form>

</body>
</html>