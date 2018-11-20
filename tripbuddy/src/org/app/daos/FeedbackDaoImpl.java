package org.app.daos;



import java.sql.Date;
import java.text.SimpleDateFormat;

import org.app.crud.connect;
import org.app.models.Feedback;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.util.SocketUtils;

public class FeedbackDaoImpl  implements FeedbackDao
{
  public int insertFeedback(Feedback fb)
  {
	  String timeStamp = new SimpleDateFormat("yyyy.MM.dd.HH.mm.ss").format(new Date(0));
	  System.out.println(timeStamp);
	  String query="insert into feedbacks('sub','desc',uid,timestamp) values(?,?,?,?)";
	   JdbcTemplate conn = connect.getTemplate();
	  int i=conn.update(query, new Object[] { fb.getSub(), fb.getDesc(), fb.getUid() , timeStamp} );
	  return i;
  }
}
