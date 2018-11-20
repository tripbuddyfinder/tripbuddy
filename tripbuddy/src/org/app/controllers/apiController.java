package org.app.controllers;


import org.app.services.weather;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class apiController {
	
	@RequestMapping(value="api/weather/{city}/{time}", method=RequestMethod.GET)
	public @ResponseBody String showData(@PathVariable("city")String city , @PathVariable("time")String time) {
		weather weatherr = new  weather();
		return weatherr.getWeather(time, city)	;
		
		
		}
	@RequestMapping(value="hello", method=RequestMethod.GET)
	public String hello() {
		return "hello";
	}
}
	