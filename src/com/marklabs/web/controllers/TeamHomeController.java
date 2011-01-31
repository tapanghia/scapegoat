package com.marklabs.web.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

public class TeamHomeController extends MultiActionController{

	/**
	 * Default Method of this controller. 
	 * Logged in teams are redirected to this controller.
	 * @param request
	 * @param response
	 * @return
	 */
	public ModelAndView index(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		session.setAttribute("CURRENT_LINK", Constants.HOME_LINK);
		
		ModelAndView mav = new ModelAndView("teamHome");
		
		return mav;
	}
	
}
