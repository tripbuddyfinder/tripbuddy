package org.app.models;

public class PostModel
{
 private int postid, uid ,members ,cost,duration;
 private String source , destination, info,pdate,timestamp;
 
 

public int getPostid() {
	return postid;
}
public void setPostid(int postid) {
	this.postid = postid;
}
public int getUid() {
	return uid;
}
public void setUid(int uid) {
	this.uid = uid;
}
public int getMembers() {
	return members;
}
public void setMembers(int members) {
	this.members = members;
}
public int getCost() {
	return cost;
}
public void setCost(int cost) {
	this.cost = cost;
}
public int getDuration() {
	return duration;
}
public void setDuration(int duration) {
	this.duration = duration;
}
public String getSource() {
	return source;
}
public void setSource(String source) {
	this.source = source;
}
public String getDestination() {
	return destination;
}
public void setDestination(String destination) {
	this.destination = destination;
}
public String getInfo() {
	return info;
}
public void setInfo(String info) {
	this.info = info;
}
public String getPdate() {
	return pdate;
}
public void setPdate(String pdate) {
	this.pdate = pdate;
}
public String getTimestamp() {
	return timestamp;
}
public void setTimestamp(String timestamp) {
	this.timestamp = timestamp;
}
@Override
public String toString() {
	return "PostModel [postid=" + postid + ", uid=" + uid + ", members=" + members + ", cost=" + cost + ", duration="
			+ duration + ", source=" + source + ", destination=" + destination + ", info=" + info + ", pdate=" + pdate
			+ ", timestamp=" + timestamp + "]";
}

 
}
