package org.app.controllers;

import org.app.models.HotelModel;
import org.app.services.HotelService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;




@Controller
public class hotelController
{ 
	private HotelService service=new HotelService();
	@RequestMapping(value="/addhotels" , method=RequestMethod.GET)
	public String showhotellink()
	{
		return "AddHotels";
	}
	
	
@RequestMapping(value="hotels/addhotels" , method=RequestMethod.GET)	
  public String addhotel(@ModelAttribute("hotels") HotelModel hotel , Model model)
  {
	System.out.println("Hotel Form Data:"+hotel);
	
	System.out.println("Calling DAO");
	service.addhotel(hotel);
	return "tester";
  }
}
