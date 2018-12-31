package org.app.daos;

import java.util.List;

import org.app.crud.connect;
import org.app.models.PostModel;
import org.springframework.jdbc.core.JdbcTemplate;

public class PostDaoImpl implements PostDao{

	@Override
	public int insert(PostModel post) {
		
		String query="Insert into trip_posts(source, destination, p_date,duration,members,each_cost,u_id,info,timestamp) values(?,?,?,?,?,?,?,?,?)";
		
		JdbcTemplate conn =connect.getTemplate();
		
		
	int i=	conn.update(query, new Object[] { post.getSource() , post.getDestination() , post.getPdate() ,
			post.getDuration() , post.getMembers() , post.getCost(), post.getUid(),post.getInfo() , post.getTimestamp()
	
	
	} );
		
		return i;
	}

	@Override
	public List<PostModel> getPosts() {
		// TODO Auto-generated method stub
		return null;
	}

}
