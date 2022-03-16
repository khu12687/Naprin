package kr.ac.kopo.model;

import java.util.Date;

public class Knowin {
	private int know_id;
	private String title;
	private String content;
	private int hit;
	private Date regdate;
	private String id;
	public int getKnow_id() {
		return know_id;
	}
	public void setKnow_id(int know_id) {
		this.know_id = know_id;
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
