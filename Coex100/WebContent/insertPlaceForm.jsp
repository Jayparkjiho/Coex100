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
위치<input type="text" id="place_nodeno" name="place.place_nodeno"><br>
정보<input type="text" id="place_info" name="place.place_info"><br>
평점<input type="text" id="place_eval_avg" name="place.place_eval_avg"><br>
쉬는일<input type="text" id="place_working_day" name="place.place_working_day"><br>
오픈시간<input type="text" id="place_open_time" name="place.place_open_time"><br>
마감시간<input type="text" id="place_close_time" name="place.place_close_time"><br>
카테고리<input type="text" id="place_category" name="place.place_category"><br>
최소실행시간<input type="text" id="place_min_runtime" name="place.place_min_runtime"><br>
최대실행시간<input type="text" id="place_max_runtime" name="place.place_max_runtime"><br>
사진<input type="file" id="place_photo_name" name="place.place_photo_name"><br>
장소타입<input type="text" id="place_type" name="place.place_type" ><br>
선호도<input type="text" id="pref_no" name="place.pref_no"><br>
<input type="submit" value="확인">
</form>

</body>
</html>