package coex.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import coex.vo.Answer;

public class AnswerAction extends ActionSupport implements SessionAware {
	
	Answer answer;
	Map<String,Object> session;
		
	public String question1(){
		System.out.println("액션이다"+answer.getPerpose());
		session.put("answer", this.answer);
			
		if (answer.getPerpose() == "연예인") {
			return "entertainment";
		}
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

