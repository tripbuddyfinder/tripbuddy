package org.app.daos;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.app.crud.connect;
import org.app.models.Feedback;
import org.app.models.userModel;
import org.springframework.jdbc.core.RowMapper;


public class UserDaoImpl implements UserDao
{

	@Override
	public int insert(userModel usr) {
	String query="Insert into users(u_id,u_email,u_name,u_city,u_pic) values(?,?,?,?,?)";
	int i=connect.getTemplate().update(query,  new Object[] {usr.getUid(), usr.getUemail(), usr.getUname() , usr.getUcity(), usr.getUpic() } );
	return i;
	}

	@Override
	public userModel getPofile(String uid) {
		String sql = "SELECT * FROM users WHERE u_id = ?";
		userModel user = connect.getTemplate().queryForObject(sql, new Object[] {uid},new userModelMapper());
		return user;
	}

	@Override
	public int checkUser(String uid) {
		String sql = "SELECT COUNT(u_id) FROM users WHERE u_id = ?";
		int count = connect.getTemplate().queryForObject(sql, new Object[] {uid}, Integer.class);
		return count;
	}

	@Override
	public int userBlocked(String uid) {
		String sql = "SELECT COUNT(u_id) FROM blocklist WHERE u_id = ?";
		int count = connect.getTemplate().queryForObject(sql, new Object[] {uid}, Integer.class);
		return count;
	}

	@Override
	public int getGroup(String uid) {
		String sql = "SELECT g_id FROM users WHERE u_id = ?";
		int gid = connect.getTemplate().queryForObject(sql, new Object[] {uid}, Integer.class);
		return gid;
	}

	@Override
	public userModel getGrpAdmin(String gid) {
		String sql = "SELECT * FROM users WHERE u_id=(SELECT u_id FROM usergroup WHERE usergroup.g_id=?)";
		return connect.getTemplate().queryForObject(sql, new Object[] {gid}, new userModelMapper() );
		
	}

	@Override
	public List<userModel> getUsers(String gid) {
			String sql = "SELECT * FROM users WHERE g_id = ?";
		List<userModel> users = connect.getTemplate().query(sql, new Object[] {gid},new userModelMapper());
		return users;
	} 
	
	public List<userModel> fetchUsers() {
		
		String sql="select * from users";
		List<userModel> users = connect.getTemplate().query(sql, new Object[] {},new userModelMapper());
		return users;
		
	}
	


}

class userModelMapper implements RowMapper<userModel>{

	@Override
	public userModel mapRow(ResultSet rs, int rowNum) throws SQLException {
		userModel user = new userModel();
		user.setUcity(rs.getString("u_city"));
		user.setUemail(rs.getString("u_email"));
		user.setUname(rs.getString("u_name"));
		user.setUpic(rs.getString("u_pic"));
		user.setUid(rs.getString("u_id"));
		return user;
	}
	
	
	
}
