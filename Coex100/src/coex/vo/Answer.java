package coex.vo;

public class Answer {
	
	private String perpose;
	private String sex;
	private int age;
	private int people;
	private String relation;
	private boolean baby;
	private String transport;
	private String startTime;
	private String endTime;
	
	public Answer(){
		
	}
	
	public Answer(String perpose, String sex, int age, int people, String relation, boolean baby, String transport,
			String startTime, String endTime) {
		this.perpose = perpose;
		this.sex = sex;
		this.age = age;
		this.people = people;
		this.relation = relation;
		this.baby = baby;
		this.transport = transport;
		this.startTime = startTime;
		this.endTime = endTime;
	}

	public String getPerpose() {
		return perpose;
	}

	public void setPerpose(String perpose) {
		this.perpose = perpose;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public int getPeople() {
		return people;
	}

	public void setPeople(int people) {
		this.people = people;
	}

	public String getRelation() {
		return relation;
	}

	public void setRelation(String relation) {
		this.relation = relation;
	}

	public boolean isBaby() {
		return baby;
	}

	public void setBaby(boolean baby) {
		this.baby = baby;
	}

	public String getTransport() {
		return transport;
	}

	public void setTransport(String transport) {
		this.transport = transport;
	}

	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	@Override
	public String toString() {
		return "Answer [perpose=" + perpose + ", sex=" + sex + ", age=" + age + ", people=" + people + ", relation="
				+ relation + ", baby=" + baby + ", transport=" + transport + ", startTime=" + startTime + ", endTime="
				+ endTime + "]";
	}
	
	
	
	
	
	
	
	
   
}