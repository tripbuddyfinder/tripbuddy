package org.app.daos;

import java.sql.Connection;
import java.sql.Types;

import javax.activation.DataSource;

import org.app.crud.connect;
import org.app.models.userModel;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.ui.Model;

import com.mysql.cj.jdbc.PreparedStatement;


public class UserDaoImpl implements UserDao
{

	@Override
	public int insert(userModel usr) {
		
//		String data=usr.getUname();
//		System.out.println(data);
//	
		String query="Insert into users(u_email,u_name,u_city,u_pic) values(?,?,?,?)";

		JdbcTemplate conn= connect.getTemplate();
	
			 
			
				
				 int i=conn.update(query,  new Object[] { usr.getUemail(), usr.getUname() , usr.getUcity(), usr.getUpic() } );
				 return i;
	} 
}

				
		 	
		 	
		 	
				
					//sql, new Object[] { custId }, 
					//new BeanPropertyRowMapper(Customer.class));
		

			

	


