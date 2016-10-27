package coex.vo;

import java.util.Date;

public class Answer {
	
	private int answer_no;                       // 질문 번호 (시퀀스)
	private int answer_purpose_no;               // 방문목적 번호 (0: 전시회, 1: 식사, 2: 쇼핑, 3: 영화, 4: 연인, 5: 그외 )
	private Date answer_date;                    // 방문 날짜
	private String answer_start_time;            // 방문 시작시간
	private String answer_end_time;              // 방문 종료시간
	private int answer_sex;                      // 방문자 성별 (0: 남, 1: 여, 2: 남여)
	private int answer_age;                      // 방문자 연령대 (10: 10대, 20: 20데, 30: 30대, 40: 40대, 50: 50데 이상)
	private int answer_head_count;               // 방문 인원 (1: 1명, 2: 2명, 3: 3명, 5: 5명, 10: 10명)
	private int answer_traffic;                  // 교통편 (0: 2호선, 1: 9호선, 3: 버스, 4: 자가용)
	private int answer_meal;                     // 식사 (0: 안 먹어, 1: 점심, 2: 저녁, 3: 점심저녁)
	private int answer_scount;                   //
	private int answer_sone_node;                //
	private String answer_sone_start;            // 
	private String answer_sone_end;              //
	private int answer_stwo_node;                //
	private String answer_stwo_start;            //
	private String answer_stwo_end;              //
	
	public Answer( ){
		
	}
	
	public Answer(int answer_no, int answer_purpose_no, Date answer_date, String answer_start_time,
			String answer_end_time, int answer_sex, int answer_age, int answer_head_count, int answer_traffic,
			int answer_meal, int answer_scount, int answer_sone_node, String answer_sone_start, String answer_sone_end,
			int answer_stwo_node, String answer_stwo_start, String answer_stwo_end) {
		
		this.answer_no = answer_no;
		this.answer_purpose_no = answer_purpose_no;
		this.answer_date = answer_date;
		this.answer_start_time = answer_start_time;
		this.answer_end_time = answer_end_time;
		this.answer_sex = answer_sex;
		this.answer_age = answer_age;
		this.answer_head_count = answer_head_count;
		this.answer_traffic = answer_traffic;
		this.answer_meal = answer_meal;
		this.answer_scount = answer_scount;
		this.answer_sone_node = answer_sone_node;
		this.answer_sone_start = answer_sone_start;
		this.answer_sone_end = answer_sone_end;
		this.answer_stwo_node = answer_stwo_node;
		this.answer_stwo_start = answer_stwo_start;
		this.answer_stwo_end = answer_stwo_end;
	}

	public int getAnswer_no() {
		return answer_no;
	}

	public void setAnswer_no(int answer_no) {
		this.answer_no = answer_no;
	}

	public int getAnswer_purpose_no() {
		return answer_purpose_no;
	}

	public void setAnswer_purpose_no(int answer_purpose_no) {
		this.answer_purpose_no = answer_purpose_no;
	}

	public Date getAnswer_date() {
		return answer_date;
	}

	public void setAnswer_date(Date answer_date) {
		this.answer_date = answer_date;
	}

	public String getAnswer_start_time() {
		return answer_start_time;
	}

	public void setAnswer_start_time(String answer_start_time) {
		this.answer_start_time = answer_start_time;
	}

	public String getAnswer_end_time() {
		return answer_end_time;
	}

	public void setAnswer_end_time(String answer_end_time) {
		this.answer_end_time = answer_end_time;
	}

	public int getAnswer_sex() {
		return answer_sex;
	}

	public void setAnswer_sex(int answer_sex) {
		this.answer_sex = answer_sex;
	}

	public int getAnswer_age() {
		return answer_age;
	}

	public void setAnswer_age(int answer_age) {
		this.answer_age = answer_age;
	}

	public int getAnswer_head_count() {
		return answer_head_count;
	}

	public void setAnswer_head_count(int answer_head_count) {
		this.answer_head_count = answer_head_count;
	}

	public int getAnswer_traffic() {
		return answer_traffic;
	}

	public void setAnswer_traffic(int answer_traffic) {
		this.answer_traffic = answer_traffic;
	}

	public int getAnswer_meal() {
		return answer_meal;
	}

	public void setAnswer_meal(int answer_meal) {
		this.answer_meal = answer_meal;
	}

	public int getAnswer_scount() {
		return answer_scount;
	}

	public void setAnswer_scount(int answer_scount) {
		this.answer_scount = answer_scount;
	}

	public int getAnswer_sone_node() {
		return answer_sone_node;
	}

	public void setAnswer_sone_node(int answer_sone_node) {
		this.answer_sone_node = answer_sone_node;
	}

	public String getAnswer_sone_start() {
		return answer_sone_start;
	}

	public void setAnswer_sone_start(String answer_sone_start) {
		this.answer_sone_start = answer_sone_start;
	}

	public String getAnswer_sone_end() {
		return answer_sone_end;
	}

	public void setAnswer_sone_end(String answer_sone_end) {
		this.answer_sone_end = answer_sone_end;
	}

	public int getAnswer_stwo_node() {
		return answer_stwo_node;
	}

	public void setAnswer_stwo_node(int answer_stwo_node) {
		this.answer_stwo_node = answer_stwo_node;
	}

	public String getAnswer_stwo_start() {
		return answer_stwo_start;
	}

	public void setAnswer_stwo_start(String answer_stwo_start) {
		this.answer_stwo_start = answer_stwo_start;
	}

	public String getAnswer_stwo_end() {
		return answer_stwo_end;
	}

	public void setAnswer_stwo_end(String answer_stwo_end) {
		this.answer_stwo_end = answer_stwo_end;
	}

	@Override
	public String toString() {
		return "Answer [answer_no=" + answer_no + ", answer_purpose_no=" + answer_purpose_no + ", answer_date="
				+ answer_date + ", answer_start_time=" + answer_start_time + ", answer_end_time=" + answer_end_time
				+ ", answer_sex=" + answer_sex + ", answer_age=" + answer_age + ", answer_head_count="
				+ answer_head_count + ", answer_traffic=" + answer_traffic + ", answer_meal=" + answer_meal
				+ ", answer_scount=" + answer_scount + ", answer_sone_node=" + answer_sone_node + ", answer_sone_start="
				+ answer_sone_start + ", answer_sone_end=" + answer_sone_end + ", answer_stwo_node=" + answer_stwo_node
				+ ", answer_stwo_start=" + answer_stwo_start + ", answer_stwo_end=" + answer_stwo_end + "]";
	}

	
   
}