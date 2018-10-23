package org.app.controllers;

import org.app.models.student;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class testController {
	
	@RequestMapping(value="get", method=RequestMethod.GET)
	public @ResponseBody student showData() {
		student std = new student();
		std.setRollno(5);
		std.setCourse("MCA");
		std.setName("TRIP BUDDY FINDER");
		std.setSid(11);
		return std;
	}
	@RequestMapping(value="hello", method=RequestMethod.GET)
	public String hello() {
		return "hello";
	}
}
	