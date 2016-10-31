package coex.util;

import coex.vo.Answer;
import coex.vo.Preference;

/**
 * 사용자로부터 스케줄, 답변, 채울 시간을 입력받아 
 * 해당 위치에 액션을 채워주는 알고리즘
 * @author 김진홍 최지영
 * 
 */
public class ScheRecomm {
	//필요한것들 1. 이전 이벤트  : PrevEvent
	//현재 스캐줄을 채워줄 시작시간, 종료시간
	//먼저 DB에서 PlaceAndPref
	
	//소거부분////////////////////////
	
	//시간체크해서 필요없는 Place 소거
	//식사체크해서 식사카운트가 꽉 차면 모든 식사 제거
	//카페도 2개 제한
	
	//점수계산부분//////////////////////
	
	//식사시간이면 식사에 100점씩 추가
	//PrevEvent가 식사였으면 카페 식당 버스킹에 100점 추가
	//PrevEvent가 
	
	public int answerToScore(Answer answer, Preference Pref){
		int totalScore = 0;
		
		return totalScore;
	}
}
