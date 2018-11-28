package org.app.models;

public class userModel 
{
	private String uid;
	private String uname , uemail , ucity , upic;
	public userModel() {}
	
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUemail() {
		return uemail;
	}
	public void setUemail(String uemail) {
		this.uemail = uemail;
	}
	public String getUcity() {
		return ucity;
	}
	public void setUcity(String ucity) {
		this.ucity = ucity;
	}
	public String getUpic() {
		return upic;
	}
	public void setUpic(String upic) {
		this.upic = upic;
	}

	@Override
	public String toString() {
		return "userModel [uid=" + uid + ", uname=" + uname + ", uemail=" + uemail + ", ucity=" + ucity + ", upic="
				+ upic + "]";
	}
	
}	