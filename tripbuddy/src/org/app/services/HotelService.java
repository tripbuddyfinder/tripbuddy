package org.app.services;

import org.app.daos.HotelDaoImpl;
import org.app.models.HotelModel;

public class HotelService
{
	private HotelDaoImpl dao = new HotelDaoImpl();
	public String addhotel(HotelModel hotel)
	{
		return dao.addhoteldata(hotel);
	
	 }
	}

