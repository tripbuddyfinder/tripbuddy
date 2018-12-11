package org.app.daos;

import java.util.List;

import org.app.models.ChatMessage;

public interface ChatDao {

	public int saveMsg(ChatMessage msg) ;
	public List<ChatMessage> getMsgs(String gid);
	
}
