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
<title>질문3</title>

<link href="css/pikaday.css" rel="stylesheet">
<link href="dist/jquery-clockpicker.min.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/styles2.css?v=1.2" rel="stylesheet">
<link href="css/queries.css?v=1.2" rel="stylesheet">
<link rel="stylesheet" href="css/flexslider.css?v=1.2" type="text/css">
<link rel="stylesheet" href="css/animate.css" type="text/css">
<link	href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
	
	
</head>
<body
	style="background-image: url(img/question2-main.jpg); background-repeat: no-repeat; background-size: cover; height: 900px; padding-top: 13%;">
	<form action="">
		<div class="container question2">
			<div class="row pad-btm-40">
			<!-- START tabs -->
			<div class="span16">
				<div class="spaceEmOut">
					<fieldset class="switch switch-three">
						<legend>개인일정</legend>
						<input id="nosch" name="schedule" type="radio" value="0" onclick="div_On(this.value,'con','con2')" checked /> 
						<label for="nosch">없음</label> 
						<input id="onesch" name="schedule" type="radio" value="1" onclick="div_On(this.value,'con','con2')"/>
						<label for="onesch">1개</label> 
						<input id="twosch" name="schedule" type="radio" value="2" onclick="div_On(this.value,'con','con2')"/> 
						<label for="twosch">2개</label> 
						<span class="switch-button"></span>
					</fieldset>
					
				</div>
					
			</div>
		
		<s:if test="%{#session.purpose_no == '2'} || %{#session.purpose_no == '3'}">
			
			<div id="con0" style="display: none;">
         
         		<div class="spaceEmOut">
					<div class="input-answer" style="display: inline-block; padding-bottom: 11px;">
						<span style="width: 135px;" class="p_sch0">일정.1</span>
					</div>
				</div>
      			<div class="spaceEmOut">
					<div class="input-answer" style="display: inline-block; padding-bottom: 11px;">
						<span style="width: 135px;" class="p_sch0_pl">장소검색</span>
						<input type="text">
					</div>
       			</div>
       			<div class="spaceEmOut">
					<div class="input-answer" style="display: inline-block;">
						<span style="width: 135px;" class="answer_lis5">예정시간</span>
					</div>
				
					<div class="input-group clockpicker f-left"
						style="display: inline-block; width: 130px">

						<input id="time7" type="text" class="start-time" value="09:30">
						<span class="input-group-addon"> <span
							class="glyphicon glyphicon-time"></span>
						</span>
					</div>
					<span>~&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
					<div class="input-group clockpicker f-right"
						style="display: inline-block; width: 130px">
						<input id="time8" type="text" class="start-time" value="10:30">
						<span class="input-group-addon"> <span
							class="glyphicon glyphicon-time"></span>
						</span>
					</div>
				</div>
        </div>
		
		
		</s:if>				
				
         
         <div id="con" style="display: none;">
         
         		<div class="spaceEmOut">
					<div class="input-answer" style="display: inline-block; padding-bottom: 11px;">
						<span style="width: 135px;" class="p_sch1">일정.1</span>
					</div>
				</div>
      			<div class="spaceEmOut">
					<div class="input-answer" style="display: inline-block; padding-bottom: 11px;">
						<span style="width: 135px;" class="p_sch1_pl">장소검색</span>
						<input type="text">
					</div>
       			</div>
       			<div class="spaceEmOut">
					<div class="input-answer" style="display: inline-block;">
						<span style="width: 135px;" class="answer_lis5">예정시간</span>
					</div>
				
					<div class="input-group clockpicker f-left"
						style="display: inline-block; width: 130px">

						<input id="time3" type="text" class="start-time" value="09:30">
						<span class="input-group-addon"> <span
							class="glyphicon glyphicon-time"></span>
						</span>
					</div>
					<span>~&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
					<div class="input-group clockpicker f-right"
						style="display: inline-block; width: 130px">
						<input id="time4" type="text" class="start-time" value="10:30">
						<span class="input-group-addon"> <span
							class="glyphicon glyphicon-time"></span>
						</span>
					</div>
				</div>
        </div>
         
         <div id="con2" style="display: none;">
         		<div class="spaceEmOut">
					<div class="input-answer" style="display: inline-block; padding-bottom: 11px;">
						<span style="width: 135px;" class="p_sch2">일정.2</span>
					</div>
				</div>
      			<div class="spaceEmOut">
					<div class="input-answer" style="display: inline-block; padding-bottom: 11px;">
						<span style="width: 135px;" class="p_sch2_pl">장소검색</span>
						<input type="text">
					</div>
       			</div>
       			<div class="spaceEmOut">
					<div class="input-answer" style="display: inline-block;">
						<span style="width: 135px;" class="answer_lis5">예정시간</span>
					</div>
					<div class="input-group clockpicker f-left"
						style="display: inline-block; width: 130px">

						<input id="time5" type="text" class="start-time" value="09:30">
						<span class="input-group-addon"> <span
							class="glyphicon glyphicon-time"></span>
						</span>
					</div>
					<span>~&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
					<div class="input-group clockpicker f-right"
						style="display: inline-block; width: 130px">
						<input id="time6" type="text" class="start-time" value="10:30">
						<span class="input-group-addon"> <span
							class="glyphicon glyphicon-time"></span>
						</span>
					</div>
				</div>
         </div>
				
		<div class="footer">
			<div class="footer-left" style="text-align: left; display: inline-block; margin-left: 10%;">
				<a onclick="javascript: nextanswer()" ><img src="img/left-arrow.png"></a>
			</div>
			<div class="footer-right" style="text-align: right; display: inline-block; margin-left: 73%;">
				<a onclick="javascript: nextanswer()" ><img src="img/padnote.png"></a>
			</div>
		</div>
			
		</div>

</div>
	
	</form>




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
	
    /*나왓다 들어갔다 */
   function div_On(v,id,id2){
        // 라디오 버튼 value 값 조건 비교
        if(v == "1"){
         document.getElementById(id).style.display = "block"; // 보여줌
      	document.getElementById(id2).style.display = "none";
        }else if (v == "2") {
       	 document.getElementById(id).style.display = "block";
       	document.getElementById(id2).style.display = "block";
		}else{
         document.getElementById(id).style.display = "none"; // 숨김
        }//else
       }//function
    
    function sendanswer() {
    	   
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
    
   function jiho() {
		
	  
	
}
       
       
    </script>
</body>
</html>