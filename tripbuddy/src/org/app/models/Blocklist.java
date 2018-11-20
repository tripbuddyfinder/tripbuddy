package org.app.models;

public class Blocklist {
	private int u_id;
	private String blocked_by , reason;
	public int getU_id() {
		return u_id;
	}
	public void setU_id(int u_id) {
		this.u_id = u_id;
	}
	public String getBlocked_by() {
		return blocked_by;
	}
	public void setBlocked_by(String blocked_by) {
		this.blocked_by = blocked_by;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}

}