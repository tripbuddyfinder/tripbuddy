package org.app.daos;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.app.crud.connect;
import org.app.models.ChatMessage;
import org.springframework.jdbc.core.RowMapper;

public class ChatDaoImpl implements ChatDao {
	
	

	@Override
	public int saveMsg(ChatMessage msg) {
		String query="Insert into group_message(type,content,g_id,u_id,msg_time) values(?,?,?,?,?)";
		connect.getTemplate().update(query,  new Object[] {msg.getType(),msg.getContent(),msg.getTo(),msg.getFrom(),msg.getTime()} );
		
		return 1;

	}

	@Override
	public List<ChatMessage> getMsgs(String gid) {
		String query= "SELECT * FROM group_message WHERE g_id= ? ORDER BY msg_time";
		
		List<ChatMessage> msgs = connect.getTemplate().query(query, new Object[] {gid}, new RowMapper<ChatMessage>() {

			@Override
			public ChatMessage mapRow(ResultSet rs, int rowNum) throws SQLException {
				ChatMessage msg = new ChatMessage();
				msg.setType(rs.getString("type"));
				msg.setContent(rs.getString("content"));
				msg.setFrom(rs.getString("u_id"));
				msg.setTo(rs.getString("g_id"));
				msg.setTime(rs.getString("msg_time"));
				return msg;
			}});
		
		return msgs;
	}
	
	
	
	

}
