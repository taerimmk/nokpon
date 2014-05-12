package com.june.app.main.web;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.june.app.site.model.Video;
import com.june.app.site.service.VideoService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MainController {
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@Autowired
	private VideoService videoService;
	
	//@Secured({"ROLE_ADMIN","ROLE_USER" })
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		/*Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
	    if (principal instanceof UserDetails) 
	    {
	    	*//** login session det ID*//*
	    	String userName = ((UserDetails) principal).getUsername();
	    	//User loginUser = userService.findUserByEmail(email);
	    	//return new SecurityUser(loginUser);
	    }*/
		
		Video video = videoService.videoMain();
		
		model.addAttribute("video", video );
		return "main/main";
	}
	
}
