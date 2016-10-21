<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<s:if test="%{#session.answer != null}">
	<h2><s:property value="#session.answer.perpose"/></h2>
</s:if>
<form action="question2" method="post">
<input type="hidden" name="answer.perpose" value="<s:property value="#session.answer.perpose"/>">
<div class="modal-body">
               <div>
                  <input type="radio" name="answer.sex" value="m">남자
                  <input type="radio" name="answer.sex" value="w">여자
               </div>
               <div>
                  <span>연령대</span> 
                  <select id="age" name="answer.age">
                     <option value="10">10대</option>
                     <option value="20">20대</option>
                     <option value="30">30대</option>
                     <option value="40">40대</option>
                     <option value="50">50대이상</option>
                  </select>
               </div>
               <div>
                  <span>동행인</span> 
                  <select id="people" name="answer.people">
                     <option value="0">없음</option>
                     <option value="1">1명</option>
                     <option value="2">2명</option>
                     <option value="3">3명</option>
                     <option value="기타">기타</option>
                  </select>
               </div>
               <div>
                  <span>관계</span> 
                  <select id="relation" name="answer.relation">
                     <option value="친구">친구</option>
                     <option value="연인">연인</option>
                     <option value="부부">부부</option>
                  </select>
               </div>
               <div>
                  <span>아이 여부</span> 
                  <input type="radio" name="answer.baby" value="t">있음
                  <input type="radio" name="answer.baby" value="f">없음
               </div>
               <div>
                  <span>교통편</span> 
                  <select id="transport" name="answer.transport">
                     <option value="친구">도보</option>
                     <option value="연인">버스</option>
                     <option value="부부">지하철 2호선</option>
                     <option value="부부">지하철 9호선</option>
                  </select>
               </div>
               <div>
                  <span>체류 시간</span> 
                  <select id="startTime" name="answer.startTime">
                     <option value="24">오전12시</option>
                     <option value="1">오전1시</option>
                     <option value="2">오전2시</option>
                     <option value="3">오전3시</option>
                     <option value="4">오전4시</option>
                     <option value="5">오전5시</option>
                     <option value="6">오전6시</option>
                     <option value="7">오전7시</option>
                     <option value="8">오전8시</option>
                     <option value="9">오전9시</option>
                     <option value="10">오전10시</option>
                     <option value="11">오전11시</option>
                     <option value="12">오후12시</option>
                     <option value="13">오후1시</option>
                     <option value="14">오후2시</option>
                     <option value="15">오후3시</option>
                     <option value="16">오후4시</option>
                     <option value="17">오후5시</option>
                     <option value="18">오후6시</option>
                     <option value="19">오후7시</option>
                     <option value="20">오후8시</option>
                     <option value="21">오후9시</option>
                     <option value="22">오후10시</option>
                     <option value="24">오후11시</option>
                  </select>
                  <span>~</span>
                   <select id="endTime" name="answer.endTime">
                     <option value="24">오전12시</option>
                     <option value="1">오전1시</option>
                     <option value="2">오전2시</option>
                     <option value="3">오전3시</option>
                     <option value="4">오전4시</option>
                     <option value="5">오전5시</option>
                     <option value="6">오전6시</option>
                     <option value="7">오전7시</option>
                     <option value="8">오전8시</option>
                     <option value="9">오전9시</option>
                     <option value="10">오전10시</option>
                     <option value="11">오전11시</option>
                     <option value="12">오후12시</option>
                     <option value="13">오후1시</option>
                     <option value="14">오후2시</option>
                     <option value="15">오후3시</option>
                     <option value="16">오후4시</option>
                     <option value="17">오후5시</option>
                     <option value="18">오후6시</option>
                     <option value="19">오후7시</option>
                     <option value="20">오후8시</option>
                     <option value="21">오후9시</option>
                     <option value="22">오후10시</option>
                     <option value="24">오후11시</option>
                  </select>
               </div>
               
            </div><!-- 모달바디 끝-->
            <input type="button" value="이전" onclick="back()">
            <input type="submit" value="다음">
            </form>
            
            <script type="text/javascript">
            function back(){
            	
            	history.go(-1);
            }
            </script>
</body>
</html>