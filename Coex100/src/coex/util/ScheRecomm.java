package coex.util;

import java.text.SimpleDateFormat;
import java.util.Date;

import coex.dao.AnswerDAO;
import coex.vo.Answer;
import coex.vo.Preference;
import coex.vo.Schedule;

/**
 * 사용자로부터 스케줄, 답변, 채울 시간을 입력받아 
 * 해당 위치에 액션을 채워주는 알고리즘과 각종 필요 메쏘드들을 모아둔 클래스
 * @author 김진홍 최지영
 * 
 */
public class ScheRecomm {
	
	/**
	 * Answer를 입력받아 Schedule로 만드는 메쏘드
	 */
	
	public Schedule ansToSche(Answer answer){
		AnswerDAO ansDAO = new AnswerDAO();
		ansDAO.insertAnswer(answer);
		//먼저 Answer를 DB에 넣고
		//AnswerSequence의 현재값을 받는다.
		//TODO: 만들어야함
		Schedule resultSche=new Schedule();
		resultSche.setAnswerno(answer.getAnswer_no());
		
		
		return resultSche;
	}
	
	
	/**
	 * 스케줄을 입력받아 출력해주는 
	 * @param answer
	 * @param schedule
	 * @param startTime
	 * @param endTime
	 */
	public void scheduleRecomm(Answer answer, Schedule schedule, String startTime, String endTime){
		//Base Case (만약 스케줄의 종료시간과 마지막 일정의 종료시간이 같다면 종료한다. 

		//필요한것들 1. 이전 이벤트  : PrevEvent
		//현재 스캐줄을 채워줄 시작시간, 종료시간
		//먼저 DB에서 PlaceAndPref를 가져와서 ArrayList에 담는다
		//그 후 소거 파트로 넘어간다
		
		//소거부분////////////////////////
		//소거하는 메쏘드 만들것
		//시간체크해서 필요없는 Place 소거
		//식사체크해서 식사카운트가 꽉 차면 모든 식사 제거
		//카페도 2번 이상이면 제거
		//박람회 관람이 아닌 경우 모든 박람회 제거
		//쇼핑카운트도 3개 이상이면 제거
		
		//점수계산부분//////////////////////
		//식사시간이면 식사에 100점씩 추가
		//PrevEvent가 식사였으면 카페 식당 버스킹에 100점 추가
		//PrevEvent가 
	}
	
	   public int answerToScore(Answer answer, Preference Pref, String startTime){
	      int totalScore = 0;
	      switch(answer.getAnswer_purpose_no()){      //answer의 목적별 분류
	         case 0:      // answer의 목적이 전시회일때 
	            totalScore += Pref.getPref_conference(); 
	            break;
	         case 1:      //answer의 목적이 식사일때
	            totalScore += Pref.getPref_meal();
	            break;
	         case 2:      //answer의 목적이 쇼핑일때
	            totalScore += Pref.getPref_shopping();
	            break;
	         case 3:      //answer의 목적이 영화일때
	            totalScore += Pref.getPref_culture();
	            break;
	         case 4:      //answer의 목적이 연인일때
	            totalScore += Pref.getPref_date();
	            break;
	         case 5:      //answer의 목적이 기타일때
	            totalScore += Pref.getPref_etc();
	            break;
	      }
	      switch(answer.getAnswer_age()){ //나이대에 따른 분류
	         case 10:
	            totalScore += Pref.getPref_10();
	            break;
	         case 20:
	            totalScore += Pref.getPref_20();
	            break;
	         case 30:
	            totalScore += Pref.getPref_30();
	            break;
	         case 40:
	            totalScore += Pref.getPref_40();
	            break;
	         case 50:
	            totalScore += Pref.getPref_40();
	            break;
	      }
	      switch (answer.getAnswer_sex()) {      //answer의 성별에 따른 구분
	      case 0:
	         totalScore += Pref.getPref_male();
	         break;
	      case 1:
	         totalScore += Pref.getPref_female();
	         break;
	      case 2:
	         totalScore += Pref.getPref_male();
	         totalScore += Pref.getPref_female();
	      }
	      switch(answer.getAnswer_head_count()){      //answer의 헤드카운드별로 계산
	      
	      case 1:
	         totalScore += Pref.getPref_single();
	         break;
	      case 2:
	         totalScore += Pref.getPref_two();
	         break;
	      case 3:
	         totalScore += Pref.getPref_three();
	         break;
	      case 5:
	         totalScore += Pref.getPref_five();
	         break;
	      case 10:
	         totalScore += Pref.getPref_ten();
	         break;
	         }
	      SimpleDateFormat time = new SimpleDateFormat("H:mm"); // 시간대별로
	                                                // 계산해주는 부분
	      try {
	         Date start = time.parse(startTime);

	         if (start.after(time.parse("10:00")) && start.before(time.parse("10:59"))) {
	            totalScore += Pref.getPref_10_11();
	         } else if (start.after(time.parse("11:00")) && start.before(time.parse("11:59"))) {
	            totalScore += Pref.getPref_11_12();
	         } else if (start.after(time.parse("12:00")) && start.before(time.parse("12:59"))) {
	            totalScore += Pref.getPref_12_13();
	         } else if (start.after(time.parse("13:00")) && start.before(time.parse("13:59"))) {
	            totalScore += Pref.getPref_13_14();
	         } else if (start.after(time.parse("14:00")) && start.before(time.parse("14:59"))) {
	            totalScore += Pref.getPref_14_15();
	         } else if (start.after(time.parse("15:00")) && start.before(time.parse("15:59"))) {
	            totalScore += Pref.getPref_15_16();
	         } else if (start.after(time.parse("16:00")) && start.before(time.parse("16:59"))) {
	            totalScore += Pref.getPref_16_17();
	         } else if (start.after(time.parse("17:00")) && start.before(time.parse("17:59"))) {
	            totalScore += Pref.getPref_17_18();
	         } else if (start.after(time.parse("18:00")) && start.before(time.parse("18:59"))) {
	            totalScore += Pref.getPref_18_19();
	         } else if (start.after(time.parse("19:00")) && start.before(time.parse("19:59"))) {
	            totalScore += Pref.getPref_19_20();
	         } else if (start.after(time.parse("20:00")) && start.before(time.parse("20:59"))) {
	            totalScore += Pref.getPref_20_21();
	         } else if (start.after(time.parse("21:00")) && start.before(time.parse("22:00"))) {
	            totalScore += Pref.getPref_21_22();
	         }
	      } catch (Exception e) {
	         e.printStackTrace();
	      }
	      return totalScore;
	   }
}
