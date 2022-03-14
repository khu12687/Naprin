package kr.ac.kopo.model;

import java.util.Arrays;
import java.util.List;

public class News {
	private String lastBuildDate;
	private String start;
	private String display;
	private List<Item> items;
	private int total;
	
	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	@Override
	public String toString() {
		return "News [lastBuildDate=" + lastBuildDate + ", start=" + start + ", display=" + display + ", items=" + items
				+ "]";
	}

	public String getLastBuildDate() {
		return lastBuildDate;
	}

	public void setLastBuildDate(String lastBuildDate) {
		this.lastBuildDate = lastBuildDate;
	}

	public String getStart() {
		return start;
	}

	public void setStart(String start) {
		this.start = start;
	}

	public String getDisplay() {
		return display;
	}

	public void setDisplay(String display) {
		this.display = display;
	}

	public List<Item> getItems() {
		return items;
	}

	public void setItems(List<Item> items) {
		this.items = items;
	}

}
