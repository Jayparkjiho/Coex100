package coex.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import coex.util.MybatisConfig;
import coex.vo.Place;

public class PlaceDAO {
	
	SqlSession sqlSession;
	SqlSessionFactory sqlSessionFactory = MybatisConfig.getSqlSessionFactory();
	
	public void insertPlace(Place place){
		System.out.println(place);
		try {
			sqlSession = sqlSessionFactory.openSession();
			sqlSession.insert("PlaceMapper.insert", place);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
			sqlSession.rollback();
		} finally {
			if (sqlSession != null) {
				sqlSession.close();
			}
		}
	}
	
	
	/**
	 * 상점리스트에 뿌릴 arraylist를 호출하는 메소드 현재의 페이지수와 가져올 갯수를 입력받고 
	 * 10개씩 arraylist에 저장해서 서버로 전송
	 * @param startRecord
	 * @param countPerPage
	 * @return ArrayList<Place>
	 */
	public ArrayList<Place> getList(int startRecord, int countPerPage){
		System.out.println("dao다요");
		ArrayList P_list = new ArrayList<>();
		System.out.println(startRecord + " " + countPerPage);
		//결과 레코드 중 읽을 위치와 개수
		RowBounds bound = new RowBounds(startRecord, countPerPage);
		
		try{
			sqlSession = sqlSessionFactory.openSession();
			P_list =  (ArrayList) sqlSession.selectList("PlaceMapper.selectAll", null, bound);
			System.out.println("어레이사이즈"+P_list.size());
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			if(sqlSession != null){
				sqlSession.close();
			}
		}
		return P_list;
	}
	
	
	/**
	 * 상점갯수의 전체갯수를 호출하는 메소드
	 * @return int result
	 */
	public int countAll(){
		System.out.println("daocountAll()함수 실행");
		int result = 0;
		try {
			sqlSession = sqlSessionFactory.openSession();
			result = sqlSession.selectOne("PlaceMapper.countAll");
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(sqlSession != null){
				sqlSession.close();
			}
		}
		return result;
	}
}
