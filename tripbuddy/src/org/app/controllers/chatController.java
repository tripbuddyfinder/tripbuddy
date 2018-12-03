package org.app.controllers;

import javax.servlet.http.HttpSession;

import org.app.models.ChatMessage;
import org.app.models.userModel;
import org.app.services.ExtraService;
import org.app.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.Header;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.Payload;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class chatController {
	@Autowired
    private SimpMessagingTemplate messagingTemplate;
	UserService service = new UserService();
	ExtraService extra = new ExtraService();
	
	@RequestMapping("/chatroom") public String goo(Model model,HttpSession session)
	{
		userModel user = (userModel) session.getAttribute("fbsession");
		model.addAttribute("gid",service.getUserGroup(user.getUid()));
		return "socket";}
	
	@MessageMapping("/chat.msg")
	    public ChatMessage sendMessage(@Payload ChatMessage msg,
    		  @Header("simpSessionId") String sessionId) {
		System.out.println(sessionId);
		msg.setTime(extra.getLocalTime());
		System.out.println(msg.getContent());
		messagingTemplate.convertAndSend("/topic/room/"+msg.getTo(), msg);
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
