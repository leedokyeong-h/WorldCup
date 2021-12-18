package com.mycom.myapp.record;

import java.util.Date;

public class RecordVO {
	private int seq;
	
	private String Username;
	private String Category;
	private String Item;
	private Date date;
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getUsername() {
		return Username;
	}
	public void setUsername(String username) {
		Username = username;
	}
	public String getCategory() {
		return Category;
	}
	public void setCategory(String category) {
		Category = category;
	}
	public String getItem() {
		return Item;
	}
	public void setItem(String item) {
		Item = item;
	}
	public Date getRegdate() {
		return date;
	}
	public void setRegdate(Date regdate) {
		this.date = regdate;
	}
	
	
}
