package kr.ac.kopo.model;

import kr.ac.kopo.util.UploadFile;

public class KnowinImg implements UploadFile{

	private int knowinImgId;
	private String filename;
	private String uuid;
	private int knowId;

	public int getKnowinImgId() {
		return knowinImgId;
	}
	public void setKnowinImgId(int knowinImgId) {
		this.knowinImgId = knowinImgId;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getUuid() {
		return uuid;
	}
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	public int getKnowId() {
		return knowId;
	}
	public void setKnowId(int knowId) {
		this.knowId = knowId;
	}
	

}
