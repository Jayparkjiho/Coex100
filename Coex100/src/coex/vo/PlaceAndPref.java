package coex.vo;

//각 장소와 해당 장소에 해당하는 Preference(선호도) 도 같이 가지고 있는 객체
//DB에서는 MAP 방식으로 가져와서 DAO에서 채워줘야 할 것 같다
public class PlaceAndPref {
	private Place place;
	private Preference pref;
	
	
//Constructors, Get/Setters and toString Methods
	public PlaceAndPref() {
	}
	
	public PlaceAndPref(Place place, Preference pref) {
		super();
		this.place = place;
		this.pref = pref;
	}

	public Place getPlace() {
		return place;
	}

	public void setPlace(Place place) {
		this.place = place;
	}

	public Preference getPref() {
		return pref;
	}

	public void setPref(Preference pref) {
		this.pref = pref;
	}

	public String toString() {
		return "PlaceAndPref [place=" + place.toString() + ", pref=" + pref.toString() + "]";
	}
}
