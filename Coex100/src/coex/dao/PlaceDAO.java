package coex.dao;

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

}
