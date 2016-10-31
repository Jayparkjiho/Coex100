package coex.action;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import coex.dao.AnswerDAO;
import coex.dao.PlaceDAO;
import coex.dao.ScheduleDAO;
import coex.vo.Answer;
import coex.vo.Place;
import coex.vo.Schedule;

public class AnswerAction extends ActionSupport implements SessionAware {
	
	Answer answer;
	Map<String,Object> session;
	Schedule schedule;
	String[] eventList;
	String[] startTimeList;	
	ArrayList<Place> placeList;
	Place place;
	/*public String question1(){
		session.put("answer", this.answer);
		
		return SUCCESS;
	}*/
		
	/**
	 * answer객체의 목적 데이타를 answer객체에 저장하고, session에 저장
	 * @return 세션에 저장받은 answer객체
	 * 
	 */
	public String question2(){
		
		session.put("purpose_no", this.answer.getAnswer_purpose_no());
		System.out.println(session.get("purpose_no"));
		return SUCCESS;
	}
	
	/**
	 * answer객체의 개인정보 데이타를 answer객체에 저장하고, session에 저장
	 * @return 세션에 저장받은 answer객체
	 */
	public String question3(){
		
		session.put("answer", this.answer);
		
		return SUCCESS;
	}
	
	/**
	 * 새부일정을 입력받은 answer객체에 최종으로 저장하고 answer를 저장하기 위해 dao호출 한뒤 
	 * 데이터베이스에 저장
	 * @return
	 */
	public String insertAnswer(){
		//세션에 있는 데이터를 새로운 Answer객체로 이동
		Answer answer2 = new Answer();
		answer2 = (Answer)session.get("answer");
		//Answer에 데이터 합치기
		answer.setAnswer_purpose_no((int)session.get("purpose_no"));
		answer.setAnswer_date(answer2.getAnswer_date());
		answer.setAnswer_start_time(answer2.getAnswer_start_time());
		answer.setAnswer_end_time(answer2.getAnswer_end_time());
		answer.setAnswer_sex(answer2.getAnswer_sex());
		answer.setAnswer_age(answer2.getAnswer_age());
		answer.setAnswer_head_count(answer2.getAnswer_head_count());
		answer.setAnswer_traffic(answer2.getAnswer_traffic());
		answer.setAnswer_meal(answer2.getAnswer_meal());
		AnswerDAO dao = new AnswerDAO();
		dao.insertAnswer(answer);
		
		
		
		return SUCCESS;
	}
	
	//스케줄 테스트
	public String schedule(){
		ScheduleDAO dao = new ScheduleDAO();
		schedule = dao.findSchedule(9999);
		System.out.println(111);
		eventList = schedule.getSchedule_event_list().split(",");
		System.out.println(eventList[0]);
		System.out.println(eventList[1]);
		System.out.println(eventList[2]);
		startTimeList = schedule.getSchedule_time_list().split(",");
		System.out.println(startTimeList[0]);
		System.out.println(startTimeList[1]);
		System.out.println(startTimeList[2]);
		placeList = new ArrayList<>();
		PlaceDAO placeDao = new PlaceDAO();
		
		for (int i = 0; i < eventList.length; i++) {
			place = placeDao.findPlace(Integer.parseInt(eventList[i]));
			placeList.add(place);
		}
		for (Place place : placeList) {
			System.out.println(place);
		}
		return SUCCESS;
	}
	
	
	

	public Schedule getSchedule() {
		return schedule;
	}

	public void setSchedule(Schedule schedule) {
		this.schedule = schedule;
	}

	public String[] getEventList() {
		return eventList;
	}

	public void setEventList(String[] eventList) {
		this.eventList = eventList;
	}

	public String[] getStartTimeList() {
		return startTimeList;
	}

	public void setStartTimeList(String[] startTimeList) {
		this.startTimeList = startTimeList;
	}

	public Answer getAnswer() {
		return answer;
	}

	public void setAnswer(Answer answer) {
		this.answer = answer;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
}

