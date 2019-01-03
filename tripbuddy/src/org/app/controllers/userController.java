package org.app.controllers;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.app.models.userModel;
import org.app.services.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@SessionAttributes({"fbsession"})
public class userController 
{
	UserService service = new UserService();
	//user
	@RequestMapping(value = "/checkuser", method = RequestMethod.POST)
    public @ResponseBody String checkUser(@RequestBody userModel user, RedirectAttributes redirectAttr,Model model) {
		String ok = "auth";
		String error = "error";
		String blocked = "blocked";
		
		user.setUpic("https://graph.facebook.com/"+user.getUid()+"/picture?type=large&width=720&height=720");
		System.out.println("checking user");
		System.out.println(user);
		if(!service.userIsBlocked(user.getUid())) {
			
			if(service.userIsRegistered(user.getUid())) {
			model.addAttribute("fbsession", user);
			return ok;
		
			}
			else{
				
				String result= service.register(user);
						if(result!=null) {
						model.addAttribute("fbsession", user);
						return ok;
				}
			}
		}
		else {
			return blocked;
		}
		return error;
    }
	

@RequestMapping(value="/blocked" , method=RequestMethod.GET)
public String userblocked()
{
	return "block";
}
	
	@RequestMapping(value="/profile/{uid}" ,method=RequestMethod.GET)
	public String showProfile(@PathVariable("uid")String uid,Model model) {
		userModel user = service.fetchUser(uid);
		model.addAttribute("user", user);
		return "UserProfile";
	}
		
		
	@RequestMapping(value="/fetchusers",method=RequestMethod.GET) 
	public String getuserlist(Model model,HttpSession session)
	{
		List<userModel> userlist=service.fetchUsers();
		model.addAttribute("userlist", userlist);
		System.out.println(userlist);
		return "ShowUsers";
	}
	
	@RequestMapping(value="userActionn/{block}/{uid}" ,method=RequestMethod.GET) public String blockUser(@PathVariable("uid") String uid , HttpSession  session)
	{	
		String sid= (String)session.getAttribute("admin");
		System.out.println("SID:"+sid);
		if(sid!=null) {
		service.blockUser(uid);
		return "Dashboard";
		}
		else {
		return "Showusers";
	}
	}
	
	

	@RequestMapping(value="userAction/{uid}/{unblock}" ,method=RequestMethod.GET) public String unblockUser(@PathVariable("uid") String uid)
	{	
		System.out.println("un-Blocked User ID:"+uid);
		service.unblockUser(uid);
		return "tester";
	}
	
	@RequestMapping(value="/blockusers",method=RequestMethod.GET)
	public String showBlockusers(Model model) {
		List<userModel> busers=service.blockedUsers();
		model.addAttribute("blocklist",busers);
		System.out.println(busers);
		return "BlockUsers";
	}
	
	}
		

