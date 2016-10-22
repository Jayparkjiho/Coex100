package coex.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import coex.dao.PlaceDAO;
import coex.vo.Place;

public class PlaceAction extends ActionSupport {
	
	Place place;
	List<Place> list_Place;
	PlaceDAO dao = new PlaceDAO();
	
	public String insertPlace(){
		System.out.println("insertPlace()메소드 정의");
		System.out.println(place);
		dao.insertPlace(place);
		return SUCCESS;
	}

	public Place getPlace() {
		return place;
	}

	public void setPlace(Place place) {
		this.place = place;
	}

	public List<Place> getList_Place() {
		return list_Place;
	}

	public void setList_Place(List<Place> list_Place) {
		this.list_Place = list_Place;
	}
	
	
	
}


