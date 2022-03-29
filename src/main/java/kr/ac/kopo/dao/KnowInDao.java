package kr.ac.kopo.dao;

import java.util.List;

import kr.ac.kopo.model.Knowin;

public interface KnowInDao {

	void update(Knowin item);

	void add(Knowin item);

	List<Knowin> list(String keyword);
	
}
