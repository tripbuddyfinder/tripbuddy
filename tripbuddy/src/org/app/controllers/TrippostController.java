package org.app.controllers;

import org.app.models.PostModel;
import org.app.services.PostServices;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TrippostController
{
	PostServices service = new PostServices();
	@RequestMapping(value="trip" , method=RequestMethod.GET)
   public String show_postform()
   {
	   
	   return "PostTrip";
   }
	
	@RequestMapping(value="trips/posttrips" , method=RequestMethod.GET)
	   public String getform(@ModelAttribute("trip") PostModel post , Model model) {
		
		System.out.println("Data Getting From Foam");
		System.out.println(post.getSource() +  post.getDestination() + post.getPdate() +
			post.getDuration() + post.getMembers() + post.getCost() + post.getUid() + post.getInfo() + post.getTimestamp()); 
	
		service.addPost(post);
	
	
		return "tester";
	}
	
}
