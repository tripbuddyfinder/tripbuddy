package org.app.daos;

import org.app.models.userModel;

public interface UserDao 
{
public int insert(userModel usr);
public userModel getPofile(int uid);


}
