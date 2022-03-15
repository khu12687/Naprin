package kr.ac.kopo.model;

import java.util.List;

public class Img {
	private String lastBuildDate;
	private int total;
	private int start;
	private int display;
	private List<ItemImg> items;
	public String getLastBuildDate() {
		return lastBuildDate;
	}
	public void setLastBuildDate(String lastBuildDate) {
		this.lastBuildDate = lastBuildDate;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getDisplay() {
		return display;
	}
	public void setDisplay(int display) {
		this.display = display;
	}
	public List<ItemImg> getItems() {
		return items;
	}
	public void setItems(List<ItemImg> items) {
		this.items = items;
	}
	
	
	
}
