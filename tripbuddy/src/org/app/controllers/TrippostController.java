package org.app.controllers;



import java.util.List;

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
	
	@RequestMapping(value="/posttrip" , method=RequestMethod.GET)
	   public String postTrip(@ModelAttribute("tripdata") PostModel post , Model model) {
		
		System.out.println("Data Getting From Foam");
		System.out.println(post.getSource() +  post.getDestination() + post.getPdate() +
			post.getDuration() + post.getMembers() + post.getCost() + post.getUid() + post.getInfo() + post.getTimestamp()); 
	
		//service.addPost(post);
	
	
		return "tester";
	}
	
	
	@RequestMapping(value="postdetails/{postid}")
	public String postDetails(Model model, PostModel post)
	{	
		List<PostModel> trips=service.getTripPost(post);
		model.addAttribute("trips", trips);
		System.out.println(trips);
		return "PostDetails";
	}
	
	
//	@RequestMapping(value="/Home", method=RequestMethod.GET)
//	public String showTrips(Model model) {
//		
//	List<PostModel> trips=service.getAllTripPosts();
//	model.addAttribute("trips", trips);
//	System.out.println(trips);
//	return "userhome";
//	}

}

