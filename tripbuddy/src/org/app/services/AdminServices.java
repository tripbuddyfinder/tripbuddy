package org.app.services;

import java.util.List;

import org.app.daos.AdminDaoImpl;
import org.app.models.AdminModel;

public class AdminServices
{
	private AdminDaoImpl dao= new AdminDaoImpl();
	
	public List checkLogin(AdminModel admin)
	
	{
		return dao.checkLogin(admin);
		
	}
}
