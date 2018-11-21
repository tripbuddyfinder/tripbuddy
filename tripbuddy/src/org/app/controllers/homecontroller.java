package org.app.controllers;

import javax.servlet.http.HttpServletRequest;

import org.app.models.userModel;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class homecontroller {
	
	@RequestMapping(value="", method=RequestMethod.POST)

	
	public @ResponseBody userModel insertdata(@ModelAttribute("guesthome") 
			userModel usr)
	{

		System.out.println(usr.toString());
		System.out.println("Inserting data");

		org.app.daos.UserDaoImpl dao = new org.app.daos.UserDaoImpl();
		dao.insert(usr);
		System.out.println("Inserted successfully");
		System.out.println();
		return usr;
	
	}
}

//public @ResponseBody userModel showData() 
//	return null;
//	usr.setU_name("rjn");
//	usr.setU_city("Delhi");
//	usr.setU_email("@google.com");
	
//}