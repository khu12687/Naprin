package kr.ac.kopo.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.model.KnowinImg;

@Repository
public class KnowinImgDaoImpl implements KnowinImgDao{
	
	@Autowired
	SqlSession sql;

	@Override
	public void add(KnowinImg image) {
		sql.insert("knowinImg.add", image);
		
	}

}
