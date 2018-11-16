package org.app.services;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import javax.net.ssl.HttpsURLConnection;
import org.app.models.Points;
import com.fasterxml.jackson.databind.ObjectMapper;

public class weather {
		
	public String getWeather(String time,String location)
	{
		HttpsURLConnection con=null;
		Points geocode= getGeocodes(location);
				
		String https_url = "https://api.darksky.net/forecast/c437f82b23e0e23d5e2e91891aa443f9/"+geocode.getLatt()+","+geocode.getLongt()+","+time+"T12:00:00?exclude=currently,hourly,flags";
	    URL url;
	      try {
		     url = new URL(https_url);
		     con = (HttpsURLConnection)url.openConnection();
	      } 
	      catch (IOException e) {
		     e.printStackTrace();
	      }
	      
	      return getResponse(con).toString();
	}

	private Points getGeocodes(String location) {
		HttpsURLConnection con=null;
		String https_url = "https://geocode.xyz/"+location+"?json=1";
		URL url;
	      try {
		     url = new URL(https_url);
		     con = (HttpsURLConnection)url.openConnection();
	      } 
	      catch (IOException e) {
		     e.printStackTrace();
	      }
	      String resp = getResponse(con).toString();
	      ObjectMapper mapper = new ObjectMapper();
	      Points points=null;
	      try {
			points = mapper.readValue(resp, Points.class);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	     return points;
	}

		
	
	
	public StringBuilder getResponse(HttpsURLConnection con)
	{
		StringBuilder str = new StringBuilder();
		if(con!=null){
			
			try {
				
			   			
			   BufferedReader br = new BufferedReader(
					new InputStreamReader(con.getInputStream()));
						
			   String input;
						
			   while ((input = br.readLine()) != null){
			      str.append(input);
			   }
			   br.close();
						
			} catch (IOException e) {
			   e.printStackTrace();
			}
    
	}
		System.out.println(str);
		return str;
		}
}


