package org.app.daos;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.app.crud.connect;
import org.app.models.Feedback;
import org.app.models.PostModel;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class PostDaoImpl implements PostDao{

	@Override
	public int insert(PostModel post) {
		
		String query="Insert into trip_posts(source, destination, p_date,duration,members,each_cost,u_id,info,timestamp) values(?,?,?,?,?,?,?,?,?)";
		String q2 ="select post_id from trip_posts where u_id=?";
		JdbcTemplate conn =connect.getTemplate();
		
		
	conn.update(query, new Object[] { post.getSource() , post.getDestination() , post.getPdate() ,
			post.getDuration() , post.getMembers() , post.getCost(), post.getUid(),post.getInfo() , post.getTimestamp()
	
	
	} );
		int i = conn.queryForObject(q2,new Object[]{post.getUid()}, Integer.class);		
		return i;
	}

	@Override
	public List<PostModel> getAllPosts() {
		String query="SELECT t1.*,t2.u_name FROM trip_posts t1,users t2  WHERE t1.u_id=t2.u_id ";
		List <PostModel> tripsdata =connect.getTemplate().query(query, new Object[] {} , new TripModelMapper()); 
		return tripsdata;	
	}
	
	public List<PostModel> getPost(PostModel post) {
		String query="SELECT t1.*,t2.u_name FROM trip_posts t1,users t2  WHERE t1.u_id=t2.u_id AND  post_id='" + post.getPostid()  + "'";
		List <PostModel> tripsdata =connect.getTemplate().query(query, new Object[] {} , new TripModelMapper()); 
		return tripsdata;	
	}
	
	class TripModelMapper implements RowMapper<PostModel> {

		@Override
		public PostModel mapRow(ResultSet rs, int rowNum) throws SQLException {
			PostModel trips= new PostModel();
			trips.setUid(rs.getString("u_id"));
			trips.setSource(rs.getString("source"));
			trips.setDestination(rs.getString("destination"));
			trips.setPdate(rs.getString("p_date"));
			trips.setMembers(rs.getInt("members"));
			trips.setCost(rs.getInt("each_cost"));
			trips.setDuration(rs.getInt("duration"));
			trips.setInfo(rs.getString("info"));
			trips.setTimestamp(rs.getString("timestamp"));
			trips.setUname(rs.getString("u_name"));
			trips.setPostid(rs.getInt("post_id"));
			//System.out.println(trips);
			
			return trips;
		}
		
	}

	public void saveGroup(String postid, String userid) {
		String query="update users set g_id=? where u_id=?";
		connect.getTemplate().update(query,postid,userid);
		
	}

}
