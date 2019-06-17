package com.online_examination_system.bean;

public class QuestionBankSelectBean {
	private int id;
	private String question;
	private int answer;
	private String teachername;
	private int courseid;
	private String explains;
	private String A;
	private String B;
	private String C;
	private String D;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getExplains() {
		return explains;
	}
	public void setExplains(String explains) {
		this.explains = explains;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public int getAnswer() {
		return answer;
	}
	public void setAnswer(int answer) {
		this.answer = answer;
	}
	
	public void setA(String a) {
		A = a;
	}
	public void setB(String b) {
		B = b;
	}
	public void setC(String c) {
		C = c;
	}
	public void setD(String d) {
		D = d;
	}
	public String getTeachername() {
		return teachername;
	}
	public void setTeachername(String teachername) {
		this.teachername = teachername;
	}
	public int getCourseid() {
		return courseid;
	}
	public void setCourseid(int courseid) {
		this.courseid = courseid;
	}
	
	public String getA() {
		return A;
	}
	public String getB() {
		return B;
	}
	public String getC() {
		return C;
	}
	public String getD() {
		return D;
	}
}
