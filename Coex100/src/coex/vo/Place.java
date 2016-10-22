package coex.vo;

public class Place {
	
	private String place_num; 
	private String place_name; 
	private String place_loc; 
	private String place_info;
	private int place_price; 
	private int place_like; 
	private String place_time; 
	private String place_picture; 
	private String place_runtime;
	private String place_cate;
	private String place_menu;
	
	public String getPlace_num() {
		return place_num;
	}
	public void setPlace_num(String place_num) {
		this.place_num = place_num;
	}
	public String getPlace_name() {
		return place_name;
	}
	public void setPlace_name(String place_name) {
		this.place_name = place_name;
	}
	public String getPlace_loc() {
		return place_loc;
	}
	public void setPlace_loc(String place_loc) {
		this.place_loc = place_loc;
	}
	public String getPlace_info() {
		return place_info;
	}
	public void setPlace_info(String place_info) {
		this.place_info = place_info;
	}
	public int getPlace_price() {
		return place_price;
	}
	public void setPlace_price(int place_price) {
		this.place_price = place_price;
	}
	public int getPlace_like() {
		return place_like;
	}
	public void setPlace_like(int place_like) {
		this.place_like = place_like;
	}
	public String getPlace_time() {
		return place_time;
	}
	public void setPlace_time(String place_time) {
		this.place_time = place_time;
	}
	public String getPlace_picture() {
		return place_picture;
	}
	public void setPlace_picture(String place_picture) {
		this.place_picture = place_picture;
	}
	public String getPlace_runtime() {
		return place_runtime;
	}
	public void setPlace_runtime(String place_runtime) {
		this.place_runtime = place_runtime;
	}
	public String getPlace_cate() {
		return place_cate;
	}
	public void setPlace_cate(String place_cate) {
		this.place_cate = place_cate;
	}
	public String getPlace_menu() {
		return place_menu;
	}
	public void setPlace_menu(String place_menu) {
		this.place_menu = place_menu;
	}
	@Override
	public String toString() {
		return "Place [place_num=" + place_num + ", place_name=" + place_name + ", place_loc=" + place_loc
				+ ", place_info=" + place_info + ", place_price=" + place_price + ", place_like=" + place_like
				+ ", place_time=" + place_time + ", place_picture=" + place_picture + ", place_runtime=" + place_runtime
				+ ", place_cate=" + place_cate + ", place_menu=" + place_menu + "]";
	} 
	

}
