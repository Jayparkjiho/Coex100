package coex.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import coex.dao.MemberDAO;
import coex.vo.Member;

public class LoginAction extends ActionSupport implements SessionAware{

	Member member;
	Map<String , Object> session;
	boolean result;
	String message = "";
	MemberDAO dao = new MemberDAO();
	
	
	public String insertMember() throws Exception{
		System.out.println("insertMember()메소드 실행");
		System.out.println(member);
		dao.insertMember(member);
		System.out.println("dkdkdkdkdkdkdkdkdkdk");
		return SUCCESS;
	}
	
	public String login() throws Exception{
		System.out.println("login");
		member = dao.login(member);
		if (member == null) {
			message = ERROR;
		}
		else {
			session.put("loginId", member);
			message =  SUCCESS;
		}
		return SUCCESS;
	}
	
	public String idCheck() throws Exception{
		System.out.println("idCheck()메소드 실행 ");
		System.out.println(member.getMem_id());
		result = dao.idCheck(member.getMem_id());
		message = "성공";
		return SUCCESS;
	}
	

	@Override
	public void setSession(Map<String, Object> arg0) {
		this.session = arg0;
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}
	
	public boolean isResult() {
		return result;
	}

	public void setResult(boolean result) {
		this.result = result;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	
	
	
}
