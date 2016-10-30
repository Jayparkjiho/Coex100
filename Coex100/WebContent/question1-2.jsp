<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="script/jquery-3.1.0.min.js" type="text/javascript"></script>
<script src="dist/jquery-clockpicker.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<title>질문2</title>

<link href="css/pikaday.css" rel="stylesheet">
<link href="dist/jquery-clockpicker.min.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/styles2.css?v=1.2" rel="stylesheet">
<link href="css/queries.css?v=1.2" rel="stylesheet">
<link rel="stylesheet" href="css/flexslider.css?v=1.2" type="text/css">
<link rel="stylesheet" href="css/animate.css" type="text/css">
<link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
	
	
</head>
<body
	style="background-image: url(img/question2-main.jpg); background-repeat: no-repeat; background-size: cover; height: 900px; padding-top: 13%;">
	<form action="question3" method="post" id="answer">
	<div class="container question2">
		<div class="row pad-btm-40">
			<!-- START tabs -->
			<div class="span16">
				<div class="spaceEmOut">
					<div class="input-answer" style="display: inline-block;">
						<span style="width: 135px;" class="answer_lis1">방문날짜</span>
						<input type="text" id="datepicker" name="answer.answer_date">
					</div>
				</div>
				<div class="spaceEmOut">
					<fieldset class="switch switch-three">
						<legend>성별</legend>
						<input id="man" name="answer.answer_sex"  value="0" type="radio" checked /> 
						<label for="man">남자</label> 
						<input id="woman" name="answer.answer_sex" value="1" type="radio" />
						<label for="woman">여자</label> 
						<input id="mw" name="answer.answer_sex" value="2" type="radio" /> 
						<label for="mw">둘다</label> 
						<span class="switch-button"></span>
					</fieldset>
				</div>
				<div class="spaceEmOut">
					<fieldset class="switch switch-five">
						<legend>연령대</legend>
						<input id="10" name="answer.answer_age" value="10" type="radio" checked /> <label for="10">10대</label>
						<input id="20" name="answer.answer_age" value="20" type="radio" /> <label for="20">20대</label>
						<input id="30" name="answer.answer_age" value="30" type="radio" /> <label for="30">30대</label>
						<input id="40" name="answer.answer_age" value="40" type="radio" /> <label for="40">40대</label>
						<input id="50" name="answer.answer_age" value="50" type="radio" /> <label for="50">50대이상</label>
						<span class="switch-button"></span>
					</fieldset>
				</div>
				<div class="spaceEmOut">
					<fieldset class="switch switch-five">
						<legend>인원</legend>
						<input id="one" name="answer.answer_head_count" value="1" type="radio" checked /> 
						<label for="one">1명</label> 
						<input id="two" name="answer.answer_head_count" value="2" type="radio" />
						<label for="two">2명</label> 
						<input id="three" name="answer.answer_head_count" value="3" type="radio" /> 
						<label for="three">3명</label> 
						<input id="five"	name="answer.answer_head_count" value="5" type="radio" /> 
						<label for="five">5명</label> 
						<input id="ten" name="answer.answer_head_count" value="10" type="radio" /> 
						<label for="ten">10명</label>
						<span class="switch-button"></span>
					</fieldset>
				</div>
				<div class="spaceEmOut">
					<fieldset class="switch switch-four">
						<legend>교통편</legend>
						<input id="2hs" name="answer.answer_traffic" value="0" type="radio" checked /> 
						<label for="2hs">2호선</label> 
						<input id="9hs" name="answer.answer_traffic" value="1" type="radio" /> 
						<label for="9hs">9호선</label> 
						<input id="bus" name="answer.answer_traffic" value="2" type="radio" /> 
						<label for="bus">버스</label> 
						<input id="car" name="answer.answer_traffic" value="3" type="radio" /> 
						<label for="car">자가용</label>
						<span class="switch-button"></span>
					</fieldset>
				</div>
				
				<div class="spaceEmOut">
					<div class="input-answer" style="display: inline-block;">
						<span style="width: 135px;" class="answer_lis5">방문시간</span>
					</div>
					<div class="input-group clockpicker f-left"
						style="display: inline-block; width: 130px">

						<input id="time" type="text" name="answer.answer_start_time" class="start-time" value="09:30">
						<span class="input-group-addon"> <span
							class="glyphicon glyphicon-time"></span>
						</span>
					</div>
					<span>~&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
					<div class="input-group clockpicker f-right"
						style="display: inline-block; width: 130px">
						<input id="time2" type="text" name="answer.answer_end_time" class="start-time" value="10:30">
						<span class="input-group-addon"> <span
							class="glyphicon glyphicon-time"></span>
						</span>
					</div>
				</div>
				<div class="spaceEmOut">
					<fieldset class="switch switch-four">
						<legend>식사여부</legend>
						<input id="nofood" name="answer.answer_meal" value="0" type="radio" checked /> 
						<label for="nofood">안먹어</label> 
						<input id="lunch" name="answer.answer_meal" value="1" type="radio" />
						<label for="lunch">점심</label> 
						<input id="dinner" name="answer.answer_meal" value="2" type="radio" /> 
						<label for="dinner">저녁</label> 
						<input id="allfood" name="answer.answer_meal" value="3" type="radio" /> 
						<label for="allfood">모두</label> 
						<span class="switch-button"></span>		
					</fieldset>
				</div>
				</form>
				<div class="footer">
					<div class="footer-left" style="text-align: left; display: inline-block; margin-left: 10%;">
						<a onclick="javascript: nextanswer()" ><img src="img/left-arrow.png"></a>
				</div>
					<div class="footer-right" style="text-align: right; display: inline-block; margin-left: 73%;">
						<a onclick="javascript: nextanswer()" ><img src="img/right-arrow.png"></a>
					</div>
				</div>
				
				

<script src="js/pikaday.js"></script>
    <script>
	
    $('.clockpicker').clockpicker();
	function text() {
		var day = document.getElementById("datepicker").value;
		alert(day);
	}
    
    var picker = new Pikaday(
    {
        field: document.getElementById('datepicker'),
        firstDay: 1,
        minDate: new Date(2000, 0, 1),
        maxDate: new Date(2020, 12, 31),
        yearRange: [2000, 2020],
        bound: true,
        container: document.getElementById('container'),
    });
	
    
    function nextanswer() {
    	   
		var sex = document.getElementsByName("answer_sex");
		for(var i = 0; i < sex.length; i++){
		    if(sex[i].checked){
		        alert(sex[i].value);
		        sex.value = sex[i].value;
		    }
		}
		
		var date = document.getElementById("datepicker");
		  var strArray=date.value.split(' ');
		  	if (strArray[1]=='Jan') {
			date.value = strArray[3]+'-01-'+strArray[2];
		}	if (strArray[1]=='Feb') {
			date.value = strArray[3]+'-02-'+strArray[2];
		}	if (strArray[1]=='Mar') {
			date.value = strArray[3]+'-03-'+strArray[2];
		}	if (strArray[1]=='Apr') {
			date.value = strArray[3]+'-04-'+strArray[2];
		}	if (strArray[1]=='May') {
			date.value = strArray[3]+'-05-'+strArray[2];
		}	if (strArray[1]=='Jun') {
			date.value = strArray[3]+'-06-'+strArray[2];
		}	if (strArray[1]=='Jul') {
			date.value = strArray[3]+'-07-'+strArray[2];
		}	if (strArray[1]=='Aug') {
			date.value = strArray[3]+'-08-'+strArray[2];
		}	if (strArray[1]=='Sep') {
			date.value = strArray[3]+'-09-'+strArray[2];
		}	if (strArray[1]=='Oct') {
			date.value = strArray[3]+'-10-'+strArray[2];
		}	if (strArray[1]=='Nov') {
			date.value = strArray[3]+'-11-'+strArray[2];
		}	if (strArray[1]=='Dec') {
			date.value = strArray[3]+'-12-'+strArray[2];
		}
		
		document.getElementById('answer').submit();
		
	}   
    </script>
</body>
</html>

