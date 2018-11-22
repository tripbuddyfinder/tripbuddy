package org.app.services;

import org.app.daos.UserDaoImpl;
import org.app.models.userModel;

public class UserService
{
  private UserDaoImpl dao = new UserDaoImpl();
  
  public userModel fetchUser(int uid) {
	  return dao.getPofile(uid);
	  
  }
  
  public String saveUser(userModel user) {
	  if(dao.insert(user)>0)
	  return "saved";
	  else
		  return null;
  }
  
}
