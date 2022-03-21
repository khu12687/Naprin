package kr.ac.kopo.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.model.Knowin;

@Repository
public class KnowInDaoImpl implements KnowInDao{

	@Autowired
	SqlSession sql;
	
	@Override
	public void update(Knowin item) {
		sql.update("knowIn.update",item);
		
	}
	
	@Override
	public void add(Knowin item) {
		sql.insert("knowIn.add", item);
		
	}


}
