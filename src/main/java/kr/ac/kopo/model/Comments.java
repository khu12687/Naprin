package kr.ac.kopo.model;

import java.util.Date;

public class Comments {
	private int comments_id;
	private String content;
	private int know_id;
	private Date cregdate;
	private String id;
	public int getComments_id() {
		return comments_id;
	}
	public void setComments_id(int comments_id) {
		this.comments_id = comments_id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getKnow_id() {
		return know_id;
	}
	public void setKnow_id(int know_id) {
		this.know_id = know_id;
	}
	public Date getCregdate() {
		return cregdate;
	}
	public void setCregdate(Date cregdate) {
		this.cregdate = cregdate;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	
}
