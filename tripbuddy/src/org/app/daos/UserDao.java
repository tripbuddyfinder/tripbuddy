package org.app.daos;

import org.app.models.userModel;

public interface UserDao 
{
public int insert(userModel usr);
public userModel getPofile(String uid);
public int checkUser(String uid);
public int userBlocked(String uid);
public int getGroup(String uid);
public Object getraw(String uid,String fieild);

}
