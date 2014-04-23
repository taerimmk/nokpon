package com.june.app.user.web;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.june.app.user.model.UserInfo;
import com.june.app.user.service.UserService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class UserController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Autowired
	private UserService userService;
    
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/registerUser", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		UserInfo selectUser = userService.selectUser(1);
		
		return "user/register";
	}
	
}
