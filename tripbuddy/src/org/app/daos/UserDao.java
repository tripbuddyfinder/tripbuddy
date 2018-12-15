package org.app.daos;

import java.util.List;

import org.app.models.userModel;

public interface UserDao 
{
public int insert(userModel usr);
public userModel getPofile(String uid);
public int checkUser(String uid);
public int userBlocked(String uid);
public int getGroup(String uid);
public List<userModel> getUsers(String gid);	
public userModel getGrpAdmin(String gid);

}		
