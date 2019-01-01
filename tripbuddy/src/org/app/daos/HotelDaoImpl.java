package org.app.daos;

import org.app.crud.connect;
import org.app.models.HotelModel;
import org.springframework.jdbc.core.JdbcTemplate;

public class HotelDaoImpl implements HotelDao
{
@Override
public String addhoteldata(HotelModel hotel) {
	
	String query="Insert into hotels(hname, state,city,price,hlink) values(?,?,?,?,?)";
	
	JdbcTemplate conn =connect.getTemplate();
	
	
	conn.update(query, new Object[] { hotel.getHname() , hotel.getState() , hotel.getCity() , hotel.getPrice() , hotel.getLink() } );
	
	return "done";
}
}
