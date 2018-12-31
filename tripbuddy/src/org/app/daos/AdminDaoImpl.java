package org.app.daos;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.app.controllers.AdminController;
import org.app.crud.connect;
import org.app.models.AdminModel;
import org.springframework.jdbc.core.RowMapper;


public  class AdminDaoImpl implements AdminDao
{
	

	public  List <AdminModel> checkLogin(AdminModel admin) {
		String query="select * from admin where admin_id='" + admin.getAid() + "' and admin_pass='" + admin.getApwd() + "'";
		List<AdminModel> data=connect.getTemplate().query(query, new AdminMapper()); 
			System.out.println(data.size());
			if(data==null || data.isEmpty())
			{
				System.out.println("Login Failed:" );
			}
			
			else {
				System.out.println("Login Approved");
			}

		return data;
	}}
			class AdminMapper implements RowMapper<AdminModel> {
			public AdminModel mapRow(ResultSet rs, int rowNum) throws SQLException {
				AdminModel admin = new AdminModel();
				String n=admin.setAname(rs.getString("admin_name"));
				System.out.println("data="+n);
				return admin;
				
			}  
			}
			
				

				

		
	
	
