package org.app.controllers;

import java.util.List;

import org.app.daos.FeedbackDaoImpl;
import org.app.models.Feedback;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class feedbackController 
{
	FeedbackDaoImpl dao=new FeedbackDaoImpl();
		
	@RequestMapping(value="/feedback" , method=RequestMethod.POST)
	public @ResponseBody String saveData(@ModelAttribute("FB") Feedback fb)
	{
		 dao.insertFeedback(fb);
		  return "done";
	 }
	
	@RequestMapping(value="/fetchfeedback" , method=RequestMethod.GET)
	public @ResponseBody List<Feedback> getData()
	{
		 List<Feedback> data= dao.getFeedbacks();
		  return data;
	 }
}
