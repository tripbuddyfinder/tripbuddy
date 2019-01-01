package org.app.controllers;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.app.daos.ChatDaoImpl;
import org.app.models.ChatMessage;
import org.app.models.HotelModel;
import org.app.models.userModel;
import org.app.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.Header;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.Payload;
import org.springframework.messaging.simp.SimpMessageHeaderAccessor;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class chatController {
	@Autowired
    private SimpMessagingTemplate messagingTemplate;
	UserService service = new UserService();
	ChatDaoImpl dao = new ChatDaoImpl();
	
	@RequestMapping("/chatroom/{username}/{group}") public String goo(Model model,HttpSession session,@PathVariable("username")String name,@PathVariable("group")String group)
	{
		//userModel user = (userModel) session.getAttribute("fbsession");
	//	model.addAttribute("gid",service.getUserGroup(user.getUid()));
		model.addAttribute("gid",group);
		model.addAttribute("uname",name);
		model.addAttribute("uid","1108305942678199");
		//model.addAttribute("msgs",dao.getMsgs("q"));
		return "chat";
		}
	
	
	@RequestMapping("/chatroom/fetchlist/{group}") 
	public @ResponseBody List<userModel> getuserlist(Model model,HttpSession session,@PathVariable("group")String group)
	{
		List<userModel> list=service.fetchUsers(group);
		
		return list;
	}
	
	@RequestMapping("/chatroom/getHotels/{group}") 
	public void gethotelist(Model model,HttpSession session,@PathVariable("group")String group)
	{
		ChatMessage waiting = new ChatMessage();
		waiting.setTo(group);
		waiting.setType("CHAT");
		waiting.setFrom("Tripbuddy BOT");
		waiting.setTime("current");
		waiting.setContent("Please Wait..\nSearching best hotels for you.");
		messagingTemplate.convertAndSend("/topic/room/"+group, waiting);
		List<HotelModel> list=dao.getHotels(group);
		
		for(int i=0;i<list.size();i++) {	
		
		ChatMessage msg = toMsg(group,list.get(i));		
		
		messagingTemplate.convertAndSend("/topic/room/"+group, msg);
		}
		
	}
	
	public ChatMessage toMsg(String group,HotelModel model) {
		String content = "Hotel Name: "+model.getHname()+
						"\nHotel Price: "+model.getPrice()+
						"\nBooking link: <a href='"+model.getLink()+"' target='_blank'>Click here</a>";
		ChatMessage msg = new ChatMessage();
		msg.setType("CHAT");
		msg.setFrom("Tripbuddy BOT");
		msg.setTo(group);
		msg.setTime("current");
		msg.setContent(content);
		return msg;
		
	}
	@RequestMapping("/chatroom/oldmsgs/{group}") 
	public @ResponseBody List<ChatMessage> getmsgs(Model model,HttpSession session,@PathVariable("group")String group)
	{
		List<ChatMessage> list=dao.getMsgs(group);
		
		return list;
	}
	
	@RequestMapping("/chatroom/getAdminId/{group}") 
	public @ResponseBody userModel getAdminId(Model model,HttpSession session,@PathVariable("group")String group)
	{
		return service.getGroupAdmin(group);
		
	}
	
	@MessageMapping("/chat.msg")
	    public ChatMessage sendMessage(@Payload ChatMessage msg,
    		  @Header("simpSessionId") String sessionId,SimpMessageHeaderAccessor headerAccessor) {
		System.out.println(msg);
		messagingTemplate.convertAndSend("/topic/room/"+msg.getTo(), msg);
		if(msg.getType().equalsIgnoreCase("CHAT")) dao.saveMsg(msg);
		return msg;
		
    }

}
