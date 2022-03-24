package kr.ac.kopo.service;

import java.util.List;

import kr.ac.kopo.model.Knowin;

public interface KnowinService {

	void update(Knowin item);

	void add(Knowin item);
	
	List<Knowin> list();
}
