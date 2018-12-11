package org.app.daos;



import org.app.crud.connect;
import org.app.models.Feedback;
import org.springframework.jdbc.core.JdbcTemplate;

public class FeedbackDaoImpl  implements FeedbackDao
{
	
	  public int insertFeedback(Feedback fb)
	  {
		  
		  String query="insert into feedbacks(sub,desc,uid) values(?,?,?)";
		   JdbcTemplate conn = connect.getTemplate();
		  int i=conn.update(query, new Object[] { fb.getSub(), fb.getDesc(), fb.getUid()} );
		  return i;
	  }
}
