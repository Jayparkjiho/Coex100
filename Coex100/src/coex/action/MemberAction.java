package coex.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import coex.dao.MemberDAO;
import coex.vo.Member;

public class MemberAction extends ActionSupport{

	Member member;
	List<Member> list_mem;
	
	public String insert(){
		System.out.println("insert");
		System.out.println(member);
		MemberDAO dao = new MemberDAO();
		dao.insert(member);
		return SUCCESS;
	}
	
	/*public String print(){
		System.out.println("print");
		MemberDAO dao = new MemberDAO();
		list_mem = dao.print();
		return SUCCESS;
	}
	
	public String delete(){
		System.out.println("delete");
		System.out.println(member);
		MemberDAO dao = new MemberDAO();
		dao.delete(member.getMem_num());
		return SUCCESS;
	}*/
	
	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}

	public List<Member> getList_mem() {
		return list_mem;
	}

	public void setList_mem(List<Member> list_mem) {
		this.list_mem = list_mem;
	}
	
	
}
