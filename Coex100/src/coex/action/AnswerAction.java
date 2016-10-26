package coex.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import coex.vo.Answer;

public class AnswerAction extends ActionSupport implements SessionAware {
	
	Answer answer;
	Map<String,Object> session;
		
	/**
	 * 처음 목적 선택시 디테일페이지로 넘어가는 액션 처리합니다.
	 * @return 성공
	 */
	public String firstQuestion(){
		System.out.println("액션이다"+answer.getPerpose());
		session.put("answer", this.answer);
		return SUCCESS;
	}
		
	public String question2(){
			
		session.put("answer", this.answer);
			
		return SUCCESS;
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

