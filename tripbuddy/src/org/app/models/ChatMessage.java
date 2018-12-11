package org.app.models;

public class ChatMessage {
    private String type;
    private String content;   
    private String from;
    private String to;
    private String time;
//	public enum MessageType {
//        CHAT,
//        JOIN,
//        LEAVE
//    }
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getFrom() {
		return from;
	}
	public void setFrom(String from) {
		this.from = from;
	}
	public String getTo() {
		return to;
	}
	public void setTo(String to) {
		this.to = to;
	}
	
	
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	@Override
	public String toString() {
		return "ChatMessage [type=" + type + ", content=" + content + ", from=" + from + ", to=" + to + ", time=" + time
				+ "]";
	}
	
	
	

    
}