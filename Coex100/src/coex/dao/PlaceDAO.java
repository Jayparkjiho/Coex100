package coex.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	public ArrayList<Place> getList(){
		System.out.println("dao다요");
		ArrayList P_list = new ArrayList<>();
		try{
			sqlSession = sqlSessionFactory.openSession();
			P_list =  (ArrayList) sqlSession.selectList("PlaceMapper.selectAll");
			System.out.println("어레이사이즈"+P_list.size());
			System.out.println(P_list);
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			if(sqlSession != null){
				sqlSession.close();
			}
		}
		return P_list;
	}
}
