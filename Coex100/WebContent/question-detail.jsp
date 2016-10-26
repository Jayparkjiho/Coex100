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
<title>Insert title here</title>

<link href="css/pikaday.css" rel="stylesheet">
<link href="dist/jquery-clockpicker.min.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/styles.css?v=1.2" rel="stylesheet">
<link href="css/queries.css?v=1.2" rel="stylesheet">
<link rel="stylesheet" href="css/flexslider.css?v=1.2" type="text/css">
<link rel="stylesheet" href="css/animate.css" type="text/css">
<link   href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
   
   
</head>
<body
   style="background-image: url(img/background.jpg); background-repeat: no-repeat; background-size: cover; height: 900px; padding-top: 13%;">
   <div class="container question2">
      <div class="row pad-btm-40">
         <!-- START tabs -->
         <div class="span16">
            <div class="spaceEmOut">
               <div class="input-answer" style="display: inline-block;">
                  <span style="width: 135px;" class="answer_lis1">방문날짜</span>
                  <input type="text" id="datepicker">
               </div>
            </div>
            <div class="spaceEmOut">
               <fieldset class="switch switch-three">
                  <legend>성별</legend>
                  <input id="man" name="sex" type="radio" checked /> <label
                     for="man">남자</label> <input id="woman" name="sex" type="radio" />
                  <label for="woman">여자</label> <input id="mw" name="sex"
                     type="radio" /> <label for="mw">둘다</label> <span
                     class="switch-button"></span>
               </fieldset>
            </div>
            <div class="spaceEmOut">
               <fieldset class="switch switch-five">
                  <legend>연령대</legend>
                  <input id="10" name="age" type="radio" checked /> <label for="10">10대</label>
                  <input id="20" name="age" type="radio" /> <label for="20">20대</label>
                  <input id="30" name="age" type="radio" /> <label for="30">30대</label>
                  <input id="40" name="age" type="radio" /> <label for="40">40대</label>
                  <input id="50" name="age" type="radio" /> <label for="50">50대이상</label>
                  <span class="switch-button"></span>
               </fieldset>
            </div>
            <div class="spaceEmOut">
               <fieldset class="switch switch-five">
                  <legend>인원</legend>
                  <input id="one" name="people" type="radio" checked /> <label
                     for="one">1명</label> <input id="two" name="people" type="radio" />
                  <label for="two">2명</label> <input id="three" name="people"
                     type="radio" /> <label for="three">3명</label> <input id="five"
                     name="people" type="radio" /> <label for="five">5명</label> <input
                     id="ten" name="people" type="radio" /> <label for="ten">10명</label>
                  <span class="switch-button"></span>
               </fieldset>
            </div>
            <div class="spaceEmOut">
               <fieldset class="switch switch-four">
                  <legend>교통편</legend>
                  <input id="2hs" name="transport" type="radio" checked /> <label
                     for="2hs">2호선</label> <input id="9hs" name="transport"
                     type="radio" /> <label for="9hs">9호선</label> <input id="bus"
                     name="transport" type="radio" /> <label for="bus">버스</label> <input
                     id="car" name="transport" type="radio" /> <label for="car">자가용</label>
                  <span class="switch-button"></span>
               </fieldset>
            </div>
            <%-- <div class="spaceEmOut">
         <fieldset class="switch">
            <legend>방문시간</legend>
            <div class="input-group clockpicker f-left">
               <input id="timetime" type="text" class="start-time" value="09:30"> <span
                  class="input-group-addon"> <span
                  class="glyphicon glyphicon-time"></span>
               </span>
            </div>
            
            <div class="input-group clockpicker f-right">
               <input id="timetime2" type="text" class="start-time" value="10:30"> <span
                  class="input-group-addon"> <span
                  class="glyphicon glyphicon-time"></span>
               </span>
            </div>
                  <script type="text/javascript">
                     $('.clockpicker').clockpicker();
                     function text() {
                        var time = document.getElementById("timetime").value;
                        alert(time);
                     }
                  </script>
      </div> --%>
            <div class="spaceEmOut">
               <div class="input-answer" style="display: inline-block;">
                  <span style="width: 135px;" class="answer_lis5">방문시간</span>
               </div>
               <div class="input-group clockpicker f-left"
                  style="display: inline-block; width: 130px">

                  <input id="time" type="text" class="start-time" value="09:30">
                  <span class="input-group-addon"> <span
                     class="glyphicon glyphicon-time"></span>
                  </span>
               </div>
               <span>~&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
               <div class="input-group clockpicker f-right"
                  style="display: inline-block; width: 130px">
                  <input id="time2" type="text" class="start-time" value="10:30">
                  <span class="input-group-addon"> <span
                     class="glyphicon glyphicon-time"></span>
                  </span>
               </div>
            </div>
            <div class="spaceEmOut">
               <fieldset class="switch switch-four">
                  <legend>식사여부</legend>
                  <input id="nofood" name="food" type="radio" checked /> <label
                     for="nofood">안먹어</label> <input id="lunch" name="food" type="radio" />
                  <label for="lunch">점심</label> <input id="dinner" name="food"
                     type="radio" /> <label for="dinner">저녁</label> 
                     <input id="allfood" name="food" type="radio" /> 
                  <label for="allfood">모두</label> 
                  <span class="switch-button"></span>      
               </fieldset>
            </div>
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
               <input type="button" value="고고" onclick="javascript: text()">
            </div>
               
         </div>
            
            
         
         <div id="con" style="display: none;">
               <div class="spaceEmOut">
               <div class="input-answer" style="display: inline-block; padding-bottom: 11px;">
                  <span style="width: 135px;" class="p_sch1">일정.1</span>
            </div>
               <div class="spaceEmOut">
               <div class="input-answer" style="display: inline-block; padding-bottom: 11px;">
                  <span style="width: 135px;" class="p_sch1_pl">장소검색</span>
                  <input type="text">
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
               <div class="spaceEmOut">
               <div class="input-answer" style="display: inline-block; padding-bottom: 11px;">
                  <span style="width: 135px;" class="p_sch2_pl">장소검색</span>
                  <input type="text">
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
       
       
       
    </script>
</body>
</html>