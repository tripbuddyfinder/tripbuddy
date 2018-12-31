package org.app.daos;

import java.util.List;


import org.app.models.AdminModel;

public interface AdminDao
{
 public List<AdminModel> checkLogin(AdminModel admin);
}
