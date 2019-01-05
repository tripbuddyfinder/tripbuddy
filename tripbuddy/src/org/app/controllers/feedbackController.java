package org.app.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.app.daos.FeedbackDaoImpl;
import org.app.models.ChatMessage;
import org.app.models.Feedback;
import org.app.models.userModel;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class feedbackController 
{
	FeedbackDaoImpl dao=new FeedbackDaoImpl();
	//iio
	@RequestMapping(value="/feedback" , method=RequestMethod.GET)
	public String givefeedback()
	{
		return "feedback";
	}
		
	@RequestMapping(value="feedback/saveFeedback" , method=RequestMethod.GET)
	public String saveData(@ModelAttribute("FB") Feedback fb,HttpSession session)
	{
		userModel user= (userModel)session.getAttribute("fbsession");
		if(user==null) {
			fb.setUid("");
		}
		System.out.println(fb.getUid() + " " + fb.getSub() + " " + fb.getDesc() + " " + fb.getTimestamp());
		dao.insertFeedback(fb);
		  return "feedback";
	 }
	
	
	
//	@RequestMapping(value="/fetchfeedback" , method=RequestMethod.GET)
//	public @ResponseBody List<Feedback> getData(Model model,HttpSession session)
//	{
//		 List<Feedback> data= dao.getFeedbacks();
//		  return data;
//	 }
//	
	@RequestMapping(value="/fetchfeedbacks" , method=RequestMethod.GET)
	public String  getDataa(Model model,HttpSession session)
	{
		 List<Feedback> data= dao.getFeedbacks();
		 model.addAttribute("data", data);
		  return "ShowFeedbacks";
	 }
	
	
}
