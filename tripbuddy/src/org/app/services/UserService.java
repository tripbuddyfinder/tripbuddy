package org.app.services;

import java.util.List;

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
  
  public boolean userIsBlocked(String uid) {
	  int check = dao.userBlocked(uid);
	  if(check==0)return false;
	  else return true;
  }
  
  public String register(userModel user) {
	  if(dao.insert(user)>0)
	  return "saved";
	  else
		  return null;
  }
  
  public int getUserGroup(String uid) {
	  
	 int gid = dao.getGroup(uid);
	 return gid;
  }
  
  public List<userModel> fetchUsers(String gid){
	  return dao.getUsers(gid);
  }
  
  public userModel getGroupAdmin(String gid) {
	  return dao.getGrpAdmin(gid);
  }
  
  
  public List<userModel> fetchUsers()
  {
	return dao.fetchUsers();
	  
  }
}
