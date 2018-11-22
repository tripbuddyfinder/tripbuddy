package org.app.controllers;

import org.app.daos.FeedbackDaoImpl;
import org.app.models.Feedback;
import org.app.models.userModel;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class FeedbackController 
{
	@RequestMapping(value="/Feedback" ,method=RequestMethod.GET)
	public String showFeedback()
	{
		return "Feedback";
	}
	
@RequestMapping(value="/feedback" , method=RequestMethod.POST)
public String gettData(@ModelAttribute("FB") Feedback fb , 
		BindingResult result , Model model)
{
	System.out.println("Feedback data getting  Method Excuting");
	model.addAttribute(fb.getSub());
	model.addAttribute(fb.getDesc());
	model.addAttribute(fb.getUid());
	 System.out.println("Received Data is : " +fb.getSub() + " " + fb.getDesc() + " " + fb.getUid());
	 System.out.println("insertFeedback() Begin");
	 FeedbackDaoImpl fbimp=new FeedbackDaoImpl();
	 fbimp.insertFeedback(fb);
	 System.out.println("Data Insertion Done");
	 return "hello";
 }
}
