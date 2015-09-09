package com.hklee.study.todo.domain;

public class TodoDto {
	private String rNum;
	private String todoSeq;
	private String content;
	private String tel;
	private String fromYmd;
	private String toYmd;
	private String writeDate;


	public String getrNum() {
		return rNum;
	}
	public void setrNum(String rNum) {
		this.rNum = rNum;
	}
	public String getTodoSeq() {
		return todoSeq;
	}
	public void setTodoSeq(String todoSeq) {
		this.todoSeq = todoSeq;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getFromYmd() {
		return fromYmd;
	}
	public void setFromYmd(String fromYmd) {
		this.fromYmd = fromYmd;
	}
	public String getToYmd() {
		return toYmd;
	}
	public void setToYmd(String toYmd) {
		this.toYmd = toYmd;
	}
	public String getWriteDate() {
		return writeDate;
	}
	public void setWriteDate(String writeDate) {
		this.writeDate = writeDate;
	}
}
