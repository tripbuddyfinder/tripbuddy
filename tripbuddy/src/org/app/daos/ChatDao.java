package org.app.daos;

import java.util.List;

import org.app.models.ChatMessage;
import org.app.models.HotelModel;

public interface ChatDao {

	public int saveMsg(ChatMessage msg) ;
	public List<ChatMessage> getMsgs(String gid);
	public List<HotelModel> getHotels(String gid);
	
}
