package org.app.models;

public class AdminModel {
 

private String aid , apwd , aname;

public String getAname() {
	return aname;
}

public String setAname(String aname) {
	return aname;
}

public String getAid() {
	return aid;
}

public void setAid(String aid) {
	this.aid = aid;
}

public String getApwd() {
	return apwd;
}

public void setApwd(String apwd) {
	this.apwd = apwd;
}
@Override
public String toString() {
	return "AdminModel [aid=" + aid + ", apwd=" + apwd + ", aname=" + aname + "]";
}
}
