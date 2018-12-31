package org.app.daos;



import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.app.crud.connect;
import org.app.models.Feedback;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class FeedbackDaoImpl  implements FeedbackDao
{
	
	  public String insertFeedback(Feedback fb)
	  {
		  
		  String query="insert into feedbacks(sub,discr,u_id,f_timestamp,f_status) values(?,?,?,?,?)";
		   
		 JdbcTemplate conn=connect.getTemplate();
				int i=conn.update(query, new Object[] { fb.getSub(), fb.getDesc(), fb.getUid() , fb.getTimestamp() , fb.getStatus()} );
				System.out.println("No Of Rows Affected=" +i);
				return "facebook";
	  }

	@Override
	public List<Feedback> getFeedbacks() {
		String query="select * from feedbacks";
		
		return connect.getTemplate().query(query,new RowMapper<Feedback>() {

			@Override
			public Feedback mapRow(ResultSet rs, int rowNum) throws SQLException {
				Feedback fb = new Feedback();
				fb.setF_id(rs.getInt("f_id"));
				fb.setSub(rs.getString("sub"));
				fb.setTimestamp(rs.getString("f_timestamp"));
				String ts=(rs.getString("f_timestamp"));
				fb.setUid(rs.getString("u_id"));
				fb.setDesc(rs.getString("discr"));
				fb.setStatus(rs.getString("f_status"));
				System.out.println("Only Timestamps=:" +ts);
				return fb;
			}});
	}
}
