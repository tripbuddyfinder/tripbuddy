package org.app.daos;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.app.crud.connect;
import org.app.models.ChatMessage;
import org.app.models.HotelModel;
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

	@Override
	public List<HotelModel> getHotels(String gid) {
		String query="SELECT destination FROM trip_posts WHERE u_id=(SELECT u_id FROM usergroup WHERE g_id=?)";
		String q2 = "SELECT * FROM hotels WHERE city= ? OR state=?";
		String dest = connect.getTemplate().queryForObject(query, new Object[] {gid},String.class);
		String arr[]= dest.split(" ");
				
		List<HotelModel> list = new ArrayList<>();
		
		for(int i=0;i<arr.length;i++) {
		list.addAll(connect.getTemplate().query(q2, new Object[] {arr[i],arr[i]},new HotelMapper()));
		}
		
		return list;
	}
	
	

}

class HotelMapper  implements RowMapper<HotelModel>{

	@Override
	public HotelModel mapRow(ResultSet rs, int rowNum) throws SQLException {
		
		HotelModel model = new HotelModel();
		model.setState(rs.getString("state"));
		model.setCity(rs.getString("city"));
		model.setHname(rs.getString("hname"));
		model.setPrice(rs.getString("price"));
		model.setLink(rs.getString("hlink"));
		
		return model;
	}
	
}

