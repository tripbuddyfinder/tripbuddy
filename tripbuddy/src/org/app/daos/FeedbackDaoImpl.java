package org.app.daos;



import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.app.crud.connect;
import org.app.models.Feedback;
import org.springframework.jdbc.core.RowMapper;

public class FeedbackDaoImpl  implements FeedbackDao
{
	
	  public int insertFeedback(Feedback fb)
	  {
		  
		  String query="insert into feedbacks(sub,desc,uid) values(?,?,?)";
		   
		return connect.getTemplate().update(query, new Object[] { fb.getSub(), fb.getDesc(), fb.getUid()} );
		 
	  }

	@Override
	public List<Feedback> getFeedbacks() {
		String query="select * from feedbacks";
		
		return connect.getTemplate().query(query,new RowMapper<Feedback>() {

			@Override
			public Feedback mapRow(ResultSet rs, int rowNum) throws SQLException {
				Feedback fb = new Feedback();
				fb.setF_id(rs.getInt("f_id"));
				fb.setSub(rs.getString("f_sub"));
				fb.setTimestamp(rs.getTimestamp("f_timestamp").toString());
				fb.setUid(rs.getString("u_id"));
				fb.setDesc(rs.getString("desc"));
				fb.setStatus(rs.getString("f_status"));
				return fb;
			}});
	}
}
