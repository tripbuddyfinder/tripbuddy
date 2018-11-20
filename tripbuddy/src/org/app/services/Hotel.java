package org.app.services;

import java.io.IOException;
import java.net.URL;

import javax.net.ssl.HttpsURLConnection;

import org.app.models.Points;

public class Hotel {
	
	public String getHotels(String location)
	{
		HttpsURLConnection con=null;
		System.out.println("helllo");				
		//String https_url = "https://api.darksky.net/forecast/c437f82b23e0e23d5e2e91891aa443f9/"+geocode.getLatt()+","+geocode.getLongt()+","+time+"T12:00:00?exclude=currently,hourly,flags";
	    URL url;
	     /*  try {
		     //url = new URL(https_url);
		     //con = (HttpsURLConnection)url.openConnection();
	      } 
	      catch (IOException e) {
		     e.printStackTrace();
	      }
	      
	      return new weather().getResponse(con).toString(); */
		return location;
	}

}
