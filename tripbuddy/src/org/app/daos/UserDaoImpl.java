package org.app.daos;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.app.crud.connect;
import org.app.models.userModel;
import org.springframework.jdbc.core.RowMapper;


public class UserDaoImpl implements UserDao
{

	@Override
	public int insert(userModel usr) {
	String query="Insert into users(u_email,u_name,u_city,u_pic) values(?,?,?,?)";
	int i=connect.getTemplate().update(query,  new Object[] { usr.getUemail(), usr.getUname() , usr.getUcity(), usr.getUpic() } );
	return i;
	}

	@Override
	public userModel getPofile(int uid) {
		String sql = "SELECT * FROM users WHERE u_id = ?";
		
		
		
		userModel user = connect.getTemplate().queryForObject(sql, new Object[] {uid}, 
				new RowMapper<userModel>() {
					@Override
					public userModel mapRow(ResultSet rs, int rowNum) throws SQLException {
						userModel user = new userModel();
						user.setUcity(rs.getString("u_city"));
						user.setUemail(rs.getString("u_email"));
						user.setUname(rs.getString("u_name"));
						user.setUpic(rs.getString("u_pic"));
						return user;
					}});
		
		return user;
	} 
}
