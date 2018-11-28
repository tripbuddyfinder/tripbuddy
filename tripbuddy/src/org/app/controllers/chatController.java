package org.app.controllers;

import java.security.Principal;

import org.app.models.ChatMessage;
import org.app.models.msg;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.Header;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.Payload;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.messaging.simp.SimpMessageHeaderAccessor;
import org.springframework.messaging.simp.SimpMessageSendingOperations;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class chatController {
	@Autowired
    private SimpMessagingTemplate messagingTemplate;
	
	@RequestMapping("/chatroom") public String goo() {return "hello";}
	
	@MessageMapping("/chat.msg")
	@SendTo("/topic/room")
     public msg sendMessage(@Payload msg chatMessage,
    		  @Header("simpSessionId") String sessionId) {
		System.out.println(sessionId);
		return chatMessage;
		
    }

    @MessageMapping("chat.addUser")
    @SendTo("/topic/room") //suscribe to this..and send to destination
    public msg addUser(@Payload msg chatMessage, 
                               SimpMessageHeaderAccessor headerAccessor) {
        // Add username in web socket session
        headerAccessor.getSessionAttributes().put("username", chatMessage.getFrom());
        System.out.println(headerAccessor.getSessionAttributes());       
        return chatMessage;
    }
   
	

}
