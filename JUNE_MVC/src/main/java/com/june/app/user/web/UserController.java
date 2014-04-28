package com.june.app.user.web;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.june.app.user.model.UserInfo;
import com.june.app.user.service.UserService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value="/register")
public class UserController {

	private static final Logger logger = LoggerFactory
			.getLogger(UserController.class);

	@Autowired
	private UserService userService;

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/registerUser", method = RequestMethod.GET)
	public String home(@ModelAttribute("userInfo") UserInfo userInfo, Model model) {
		// UserInfo selectUser = userService.selectUser(1);

		return "user/register";
	}
	
	@RequestMapping(value = "/idDupCheck", method = RequestMethod.POST)
	public String home(
			@RequestParam(value = "userId", required = true) String userId,
			Model model) {
		Long selectUserCnt = userService.selectUserId(userId);
		model.addAttribute("result", selectUserCnt);
		
		return "user/register";
	}

	@RequestMapping(value = "/registerUser", method = RequestMethod.POST)
	public String saveUser(@Valid @ModelAttribute("userInfo") UserInfo userInfo, BindingResult result, Model model) {
		if (result.hasErrors()) {
			logger.debug("================]err[======== {}",result.getAllErrors());
			model.addAttribute("result", result);
			model.addAttribute("userInfo", userInfo);
			return "user/register";
		} else {
			String userId = userInfo.getUserId();
			logger.debug("================]userId[======== {}",userId);
			Long selectUserCnt = userService.selectUserId(userId);
			
			logger.debug("================]selectUserCnt[======== {}",selectUserCnt);
			if (selectUserCnt == 0 ){
				userService.registerUser(userInfo);
			}else{
				model.addAttribute("result", "98");
				return "user/register";
			}
			
		}

		return "redirect:/login";
	}

}
