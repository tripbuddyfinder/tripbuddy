package org.app.daos;

import org.app.models.userModel;

public interface UserDao 
{
public int insert(userModel usr);
public userModel getPofile(String uid);
public int checkUser(String uid);


}
