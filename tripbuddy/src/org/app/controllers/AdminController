package org.app.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.app.daos.AdminDaoImpl;
import org.app.models.AdminModel;
import org.app.services.AdminServices;
import org.app.services.PasswordService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@Controller
public class AdminController {
	
	//admin
	AdminDaoImpl dao = new AdminDaoImpl();
	AdminServices service = new AdminServices();
	
	
	
	@RequestMapping(value="cpanel" , method=RequestMethod.GET)
	public String showLogin()
	{
		return "AdminLogin";
	}
	
	@RequestMapping(value="admin/login" , method=RequestMethod.POST)
	public String getLogin(@ModelAttribute("login") AdminModel Amodel , HttpSession session )
	{
		System.out.println(Amodel.getAid() + " " + Amodel.getApwd());
		
		List <AdminModel> data=service.checkLogin(Amodel); 
		session.setAttribute("admin", Amodel.getAid());
		return "Dashboard";
	}
	
	@RequestMapping(value="/logout" , method=RequestMethod.GET)
	public String logout(HttpSession session)
	{
		session.invalidate();
		return "AdminLogin";
	}

}
