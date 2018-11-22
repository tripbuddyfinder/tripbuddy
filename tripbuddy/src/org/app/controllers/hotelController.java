package org.app.controllers;

import org.app.daos.HotelDaoImpl;
import org.app.models.HotelModel;
import org.app.services.Hotelservices;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;




@Controller
public class hotelController
{ 
	private Hotelservices service=new Hotelservices();
	@RequestMapping(value="/addhotels" , method=RequestMethod.GET)
	public String showhotellink()
	{
		return "AddHotels";
	}
	
	
@RequestMapping(value="hotels/addhotels" , method=RequestMethod.GET)	
  public String addhotel(@ModelAttribute("hotels") HotelModel hotel , Model model)
  {
	System.out.println("Hotel name:" +  hotel.getHname() + "\n" + "State:" +hotel.getState() + "\n" + "City:" +hotel.getCity() + "\n" + "Price:" + hotel.getPrice() + "\n" +"Ratings:" + hotel.getRating()); 
	
	System.out.println("Calling DAO");
	service.addhotel(hotel);
	return "done";
  }
}
