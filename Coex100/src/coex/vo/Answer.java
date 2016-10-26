package coex.vo;

public class Answer {
	
	private int perpose;
	private String date;
	private String startTime;
	private String endTime;
	private int sex;
	private int age;
	private int headCount;
	private int traffic;
	private int meal;
	private int scount;
	private int soneNode;
	private String soneStart;
	private String soneEnd;
	private int stwoNode;
	private String stwoStart;
	private String stwoEnd;
	public int getPerpose() {
		return perpose;
	}
	public void setPerpose(int perpose) {
		this.perpose = perpose;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
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
	public int getSex() {
		return sex;
	}
	public void setSex(int sex) {
		this.sex = sex;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public int getHeadCount() {
		return headCount;
	}
	public void setHeadCount(int headCount) {
		this.headCount = headCount;
	}
	public int getTraffic() {
		return traffic;
	}
	public void setTraffic(int traffic) {
		this.traffic = traffic;
	}
	public int getMeal() {
		return meal;
	}
	public void setMeal(int meal) {
		this.meal = meal;
	}
	public int getScount() {
		return scount;
	}
	public void setScount(int scount) {
		this.scount = scount;
	}
	public int getSoneNode() {
		return soneNode;
	}
	public void setSoneNode(int soneNode) {
		this.soneNode = soneNode;
	}
	public String getSoneStart() {
		return soneStart;
	}
	public void setSoneStart(String soneStart) {
		this.soneStart = soneStart;
	}
	public String getSoneEnd() {
		return soneEnd;
	}
	public void setSoneEnd(String soneEnd) {
		this.soneEnd = soneEnd;
	}
	public int getStwoNode() {
		return stwoNode;
	}
	public void setStwoNode(int stwoNode) {
		this.stwoNode = stwoNode;
	}
	public String getStwoStart() {
		return stwoStart;
	}
	public void setStwoStart(String stwoStart) {
		this.stwoStart = stwoStart;
	}
	public String getStwoEnd() {
		return stwoEnd;
	}
	public void setStwoEnd(String stwoEnd) {
		this.stwoEnd = stwoEnd;
	}
	@Override
	public String toString() {
		return "Answer [perpose=" + perpose + ", date=" + date + ", startTime=" + startTime + ", endTime=" + endTime
				+ ", sex=" + sex + ", age=" + age + ", headCount=" + headCount + ", traffic=" + traffic + ", meal="
				+ meal + ", scount=" + scount + ", soneNode=" + soneNode + ", soneStart=" + soneStart + ", soneEnd="
				+ soneEnd + ", stwoNode=" + stwoNode + ", stwoStart=" + stwoStart + ", stwoEnd=" + stwoEnd + "]";
	}
	
	
}