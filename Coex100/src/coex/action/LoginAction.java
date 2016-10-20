package coex.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import coex.dao.MemberDAO;
import coex.vo.Member;

public class LoginAction extends ActionSupport implements SessionAware{

	Member member;
	Map<String , Object> session;
	
	public String login() throws Exception{
		System.out.println("login");
		MemberDAO dao = new MemberDAO();
		member = dao.login(member);
		if (member == null) {
			return LOGIN;
		}
		else {
			session.put("loginId", member);
			return SUCCESS;
		}
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
	
	
}
