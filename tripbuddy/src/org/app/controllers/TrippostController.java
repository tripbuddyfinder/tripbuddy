package org.app.controllers;



import java.util.List;

import javax.servlet.http.HttpSession;

import org.app.models.PostModel;
import org.app.models.userModel;
import org.app.services.PostServices;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TrippostController
{
	PostServices service = new PostServices();
	@RequestMapping(value="/trip" , method=RequestMethod.GET)
   public String show_postform()
   {
	   
	   return "PostTrip";
   }
	
	@RequestMapping(value="/posttrip" , method=RequestMethod.GET)
	   public String postTrip(@ModelAttribute("tripdata") PostModel post , Model model) {		
		int i = service.addPost(post);	
		return "redirect:postdetail/"+i;
	}
	
	
	@RequestMapping(value="/postdetail/{postid}")
	public String postDetails(Model model, PostModel post)
	{	
		System.out.println(post);
		List<PostModel> trips=service.getTripPost(post);
		model.addAttribute("trips", trips);
		System.out.println(trips);
		return "Postdetail";
	}
	
	@RequestMapping(value="/joinroom/{postid}")
	public String joinRoom(HttpSession session,Model model, @PathVariable("postid")String postid)
	{
		userModel user = (userModel) session.getAttribute("fbsession");
		if(user!=null) {
			service.join(postid,user.getUid());
			return "redirect:/chatroom";
		}
					
		return "500";
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

