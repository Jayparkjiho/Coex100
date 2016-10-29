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
		<div class="container question2">
			<div class="row pad-btm-40">
		<form id="insertAnswer" action="insertAnswer" method="post">
			<!-- START tabs -->
			<div class="span16">
				<div class="spaceEmOut">
					<fieldset class="switch switch-three">
						<legend>추가일정</legend>
						<input id="nosch" name="answer.answer_scount" type="radio" value="0" onclick="div_On(this.value,'con','con2')" checked /> 
						<label for="nosch">없음</label> 
						<input id="onesch" name="answer.answer_scount" type="radio" value="1" onclick="div_On(this.value,'con','con2')"/>
						<label for="onesch">1개</label> 
						<input id="twosch" name="answer.answer_scount" type="radio" value="2" onclick="div_On(this.value,'con','con2')"/> 
						<label for="twosch">2개</label> 
						<span class="switch-button"></span>
					</fieldset>
					
				</div>
					
			</div>
			
		
		<s:if test="%{#session.purpose_no == 0}" >
			<div id="con0" >
         
         		<div class="spaceEmOut">
					<div class="input-answer" style="display: inline-block; padding-bottom: 11px;">
						<span style="width: 135px;" class="p_sch1">박람회</span>
					</div>
				</div>
      			<div class="spaceEmOut">
					<div class="input-answer" style="display: inline-block; padding-bottom: 11px;">
						<span style="width: 135px;" class="p_sch1_pl">장소검색</span>
						<input type="text" name="answer.answer_purpose_no" value="3">
					</div>
       			</div>
       			<div class="spaceEmOut">
					<div class="input-answer" style="display: inline-block;">
						<span style="width: 135px;" class="answer_lis5">예정시간</span>
					</div>
				
					<div class="input-group clockpicker f-left"
						style="display: inline-block; width: 130px">

						<input id="time7" type="text" class="start-time" value="09:30" name="answer.answer_purpose_start">
						<span class="input-group-addon"> <span
							class="glyphicon glyphicon-time"></span>
						</span>
					</div>
					<span>~&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
					<div class="input-group clockpicker f-right"
						style="display: inline-block; width: 130px">
						<input id="time8" type="text" class="start-time" value="10:30" name="answer.answer_purpose_end">
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
						<input type="text"  name="answer.answer_sone_node">
					</div>
       			</div>
       			<div class="spaceEmOut">
					<div class="input-answer" style="display: inline-block;">
						<span style="width: 135px;" class="answer_lis5">예정시간</span>
					</div>
				
					<div class="input-group clockpicker f-left"
						style="display: inline-block; width: 130px">

						<input id="time3" type="text" class="start-time" value="09:30" name="answer.answer_sone_start">
						<span class="input-group-addon"> <span
							class="glyphicon glyphicon-time"></span>
						</span>
					</div>
					<span>~&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
					<div class="input-group clockpicker f-right"
						style="display: inline-block; width: 130px">
						<input id="time4" type="text" class="start-time" value="10:30" name="answer.answer_sone_end">
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
						<input type="text" name="answer.answer_stwo_node">
					</div>
       			</div>
       			<div class="spaceEmOut">
					<div class="input-answer" style="display: inline-block;">
						<span style="width: 135px;" class="answer_lis5">예정시간</span>
					</div>
					<div class="input-group clockpicker f-left"
						style="display: inline-block; width: 130px">

						<input id="time5" type="text" class="start-time" value="09:30" name="answer.answer_stwo_start">
						<span class="input-group-addon"> <span
							class="glyphicon glyphicon-time"></span>
						</span>
					</div>
					<span>~&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
					<div class="input-group clockpicker f-right"
						style="display: inline-block; width: 130px">
						<input id="time6" type="text" class="start-time" value="10:30" name="answer.answer_stwo_end">
						<span class="input-group-addon"> <span
							class="glyphicon glyphicon-time"></span>
						</span>
					</div>
				</div>
         </div>
				
		<div class="footer">
			<div class="footer-left" style="text-align: left; display: inline-block; margin-left: 10%;">
				<a onclick="javascript: back_answer()" ><img src="img/left-arrow.png"></a>
			</div>
			<div class="footer-right" style="text-align: right; display: inline-block; margin-left: 73%;">
				<a onclick="javascript: insert_answer()" ><img src="img/padnote.png"></a>
			</div>
		</div>
			
		</form>
	</div>
</div>

<script src="js/pikaday.js"></script>
    <script>
	
    $('.clockpicker').clockpicker();
	function text() {
		var day = document.getElementById("datepicker").value;
		alert(day);
	}
    
	
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
    
    function insert_answer() {
    	   
		var form = document.getElementById("insertAnswer");
		
		form.submit();
		
	}
       
</script>
</body>
</html>