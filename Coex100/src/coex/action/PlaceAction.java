package coex.action;

import java.io.File;
import java.io.IOException;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import coex.util.FileService;
import coex.dao.PlaceDAO;
import coex.vo.Place;

public class PlaceAction extends ActionSupport {
	
	Place place;
	List<Place> list_place;
	PlaceDAO dao = new PlaceDAO();
	
	private File upload;						//업로드할 파일
	private String uploadFileName;				//업로드할 파일의 파일명
	private String uploadContentType;			//업로드할 파일의 컨텐츠
	
	
	
	public String insertPlace(){
		System.out.println("insertPlace()메소드 정의");
		System.out.println(place);
		if (upload != null) {
			FileService fs = new FileService();
			String basePath = getText("place.uploadpath");		//저장될 파일이 실제 저장될 주소의 이름
			System.out.println(basePath);
			String savedfile = null;
			try {
				savedfile = fs.saveFile(upload, basePath, place.getPlace_name());
			} catch (IOException e) {
				e.printStackTrace();
			}
			System.out.println(savedfile);
			place.setPlace_photo_name(savedfile);
		}
		dao.insertPlace(place);
		return SUCCESS;
	}
	
	public String getPlaceList(){
		System.out.println("메소드");
		if (place.getPlace_category().equals("전체")) {
			System.out.println("전체입니다.");
			PlaceDAO dao = new PlaceDAO();
			list_place= dao.getList();
			System.out.println(list_place);
		}
		return SUCCESS;
	}

	public Place getPlace() {
		return place;
	}

	public void setPlace(Place place) {
		this.place = place;
	}

	public List<Place> getList_place() {
		return list_place;
	}

	public void setList_place(List<Place> list_place) {
		this.list_place = list_place;
	}

	public File getUpload() {
		return upload;
	}

	public void setUpload(File upload) {
		this.upload = upload;
	}

	public String getUploadFileName() {
		return uploadFileName;
	}

	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}

	public String getUploadContentType() {
		return uploadContentType;
	}

	public void setUploadContentType(String uploadContentType) {
		this.uploadContentType = uploadContentType;
	}
	
	
	
}


