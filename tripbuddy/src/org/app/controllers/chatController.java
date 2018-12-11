package org.app.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.app.daos.ChatDaoImpl;
import org.app.models.ChatMessage;
import org.app.models.userModel;
import org.app.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.Header;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.Payload;
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
		//model.addAttribute("msgs",dao.getMsgs("q"));
		return "chat";
		}
	
	@RequestMapping("/chatroom/fetchlist/{group}") 
	public @ResponseBody List<userModel> getuserlist(Model model,HttpSession session,@PathVariable("group")String group)
	{
		List<userModel> list=service.fetchUsers(group);
		
		return list;
	}
	
	@RequestMapping("/chatroom/oldmsgs/{group}") 
	public @ResponseBody List<ChatMessage> getmsgs(Model model,HttpSession session,@PathVariable("group")String group)
	{
		List<ChatMessage> list=dao.getMsgs(group);
		
		return list;
	}
	
	@MessageMapping("/chat.msg")
	    public ChatMessage sendMessage(@Payload ChatMessage msg,
    		  @Header("simpSessionId") String sessionId) {
		System.out.println(msg);

		messagingTemplate.convertAndSend("/topic/room/"+msg.getTo(), msg);
		if(msg.getType().equalsIgnoreCase("CHAT")) dao.saveMsg(msg);
		return msg;
		
    }

//    @MessageMapping("chat.addUser")
//    @SendTo("/topic/room") //suscribe to this..and send to destination
//    public ChatMessage addUser(@Payload ChatMessage msg, 
//                               SimpMessageHeaderAccessor headerAccessor) {
//        // Add username in web socket session
//        headerAccessor.getSessionAttributes().put("username", msg.getFrom());
//        System.out.println(headerAccessor.getSessionAttributes());       
//        return sg;
//    }
   
	

}
