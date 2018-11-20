package org.app.models;

public class Hotel {
	private int h_id;
	private String h_site , offers , added_by;
	public int getH_id() {
		return h_id;
	}
	public void setH_id(int h_id) {
		this.h_id = h_id;
	}
	public String getH_site() {
		return h_site;
	}
	public void setH_site(String h_site) {
		this.h_site = h_site;
	}
	public String getOffers() {
		return offers;
	}
	public void setOffers(String offers) {
		this.offers = offers;
	}
	public String getAdded_by() {
		return added_by;
	}
	public void setAdded_by(String added_by) {
		this.added_by = added_by;
	}
	

}
