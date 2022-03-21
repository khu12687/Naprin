package kr.ac.kopo.model;

import java.util.Date;
import java.util.List;

public class Knowin {
	private int knowId;
	private String title;
	private String content;
	private int hit;
	private Date regdate;
	private String id;
	private List<KnowinImg> images;
	
	public List<KnowinImg> getImages() {
		return images;
	}
	public void setImages(List<KnowinImg> images) {
		this.images = images;
	}
	
	public int getKnowId() {
		return knowId;
	}
	public void setKnowId(int knowId) {
		this.knowId = knowId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	
}
