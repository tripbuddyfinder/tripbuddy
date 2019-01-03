package org.app.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
@Controller
public class TestingController
{
	@RequestMapping(value="/testing" ,method=RequestMethod.GET)
	public String testing()
  {
	  return "admin_nav";
  }
}
