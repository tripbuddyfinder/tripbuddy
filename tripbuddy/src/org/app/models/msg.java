package org.app.models;

public class msg  {
 
    public String getFrom() {
		return from;
	}
	@Override
	public String toString() {
		return "msg [from=" + from + ", text=" + text + "]";
	}
	public void setFrom(String from) {
		this.from = from;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	private String from;
    private String text,user;
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
 
    // getters and setters
}