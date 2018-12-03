package org.app.services;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

public class ExtraService {
		private Date time;
		private DateFormat formatter;
		private TimeZone zone;
		
		public ExtraService(){
			formatter = new SimpleDateFormat("hh:mma dd MMM");
			zone = TimeZone.getTimeZone("Asia/Calcutta");
			formatter.setTimeZone(zone);
		}
		
		public String getLocalTime() {
			time= new Date();
			return formatter.format(time);        
			
		}

}
