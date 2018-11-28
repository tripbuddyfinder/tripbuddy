package org.app.services;

import org.app.daos.UserDaoImpl;
import org.app.models.userModel;

public class UserService
{
  private UserDaoImpl dao = new UserDaoImpl();
  
  public userModel fetchUser(String uid) {
	  return dao.getPofile(uid);
	  
  }
  
  public boolean userIsRegistered(String uid) {
	  int check = dao.checkUser(uid);
	  if(check==0)return false;
	  else return true;
  }
  
  public String register(userModel user) {
	  if(dao.insert(user)>0)
	  return "saved";
	  else
		  return null;
  }
  
}
