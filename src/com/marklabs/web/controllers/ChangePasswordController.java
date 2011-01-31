package com.marklabs.web.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

import com.marklabs.teams.ITeamService;
import com.marklabs.teams.Team;



public class ChangePasswordController extends MultiActionController{

	ITeamService teamService;

	/**
	 * @return the teamService
	 */
	public ITeamService getTeamService() {
		return teamService;
	}
	/**
	 * @param teamService the teamService to set
	 */
	public void setTeamService(ITeamService teamService) {
		this.teamService = teamService;
	}



	/**
	 * Default Method of this controller. 
	 * @param request
	 * @param response
	 * @return
	 */
	public ModelAndView index(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("change_password");
		
		HttpSession session = request.getSession(true);
		String currentPassword = (String) request.getParameter("currentpassword");
        String newPassword = (String) request.getParameter("newpassword");
        
        if(currentPassword != null && !currentPassword.equals("")){
        	try{
            	long teamId =  Long.parseLong((String)request.getSession().getAttribute(Constants.TEAM_ID));
            	Team team = teamService.getTeamOnTeamId(teamId);
            	if(team.getTeamPassword().equals(currentPassword)) {
            		
            		try {
            			team.setTeamPassword(newPassword);
            			teamService.updateTeam(team);
            			           			
            			session.setAttribute("message", "Password changed successfully.");
                		session.setAttribute("status","success");
            		} catch (Exception e) {
            			logger.error("Error in changing password", e);
            		}
            		
               	}
            	else
            	{
            		session.setAttribute("message", "The current password you entered is incorrect. Is the 'Caps Lock' is turned on by mistake? Passwords are case-sensitive.");
            		session.setAttribute("status","failed");
            		
            	}
            }catch (Exception e){
                e.printStackTrace();
            }
        }
		
		return mav;
	}
	
}
