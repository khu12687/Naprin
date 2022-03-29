package kr.ac.kopo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.ac.kopo.dao.KnowInDao;
import kr.ac.kopo.dao.KnowinImgDao;
import kr.ac.kopo.model.Knowin;
import kr.ac.kopo.model.KnowinImg;

@Service
public class KnowInserviceImpl implements KnowinService{

	@Autowired
	KnowInDao dao;

	@Autowired
	KnowinImgDao knowinImgDao;
	
	public List<Knowin> list(String keyword){
		
		return dao.list(keyword);
	}
	
	@Override
	@Transactional
	public void add(Knowin item) {
		dao.add(item);
		
		for(KnowinImg image : item.getImages()) {
			image.setKnowId(item.getKnowId());
			knowinImgDao.add(image);
			
		}
	}
	
	@Override
	@Transactional
	public void update(Knowin item) {
		dao.update(item);
		
		if(item.getImages() != null)
			for(KnowinImg image : item.getImages()) {
				image.setKnowId(item.getKnowId());
				
				knowinImgDao.add(image);
			}
	}
	

}
