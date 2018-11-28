package org.app.controllers;


import org.app.models.userModel;
import org.app.services.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
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
	
	@RequestMapping(value = "/checkuser", method = RequestMethod.POST)
    public @ResponseBody String checkUser(@RequestBody userModel user, RedirectAttributes redirectAttr,Model model) {
		String ok = "auth";
		String error = "errors+";
		user.setUpic("https://graph.facebook.com/"+user.getUid()+"/picture?type=large&width=720&height=720");
		System.out.println("checking user");
		System.out.println(user);
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
		return error;
    }
		
}
