package org.app.controllers;

import javax.servlet.http.HttpSession;
import org.app.models.userModel;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class homeController {
	
	@RequestMapping(value="/home" , method=RequestMethod.GET)
	public String userhome( Model model,HttpSession session)
	{
			userModel user = (userModel) session.getAttribute("fbsession");
			
			if(user==null)user=new userModel(); //return "index";
			model.addAttribute("fbsession", user);
			return "userhome";
	}
	
	
}

