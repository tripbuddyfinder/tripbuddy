package org.app.controllers;

import org.app.daos.UserDaoImpl;
import org.app.models.userModel;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class registerController 
{
	userModel usr;
	@RequestMapping(value = "/signup", method = RequestMethod.GET)
    public ModelAndView showForm() {
        return new ModelAndView("signup", "data", new userModel());
    }
	
	
	
	@RequestMapping(value="/register" , method=RequestMethod.GET)
	public String gettData(@ModelAttribute("Signup") userModel usr , 
			BindingResult result , Model model)
	{
	System.out.println("Insert method excuting");
		
	model.addAttribute("name", usr.getUname());
	model.addAttribute("email", usr.getUemail());
	model.addAttribute("city", usr.getUcity());
	model.addAttribute("pic", usr.getUpic());
	System.out.println("Get all data:"  + usr.getUname());
	System.out.println("Get all data:"  + usr.getUemail());
	System.out.println("Get all data:"  + usr.getUcity());
	System.out.println("Get all data:"  + usr.getUpic());
	
	System.out.println("Register Method Begin");
	UserDaoImpl dao = new UserDaoImpl();
	dao.insert(usr);
	System.out.println("Inserted successfully");
	System.out.println();
	return "hello";
		
	}
	
	public String registerData()
	{
		return null;
		
}
}
