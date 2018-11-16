package org.app.models;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(value = { "standard","alt","elevation" })
public class Points {
	private String longt,latt;

	public String getLongt() {
		return longt;
	}

	public void setLongt(String longt) {
		this.longt = longt;
	}

	public String getLatt() {
		return latt;
	}

	public void setLatt(String latt) {
		this.latt = latt;
	}

	@Override
	public String toString() {
		return "Points [longt=" + longt + ", latt=" + latt + "]";
	}
	

}
