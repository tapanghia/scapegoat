package com.marklabs.web.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

import com.marklabs.teams.ITeamService;
import com.marklabs.teams.Team;

public class TeamController extends MultiActionController {
	
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
	 * Default Method of this controller. For now, this is just a placeholder.
	 * @param request
	 * @param response
	 * @return
	 */
	public ModelAndView index(HttpServletRequest request, HttpServletResponse response) {
		return null;
	}

	/**
	 * This function will be called, when the admin configures the teams from the admin Interface.
	 * @param request
	 * @param response
	 * @return adminDashBoard 
	 */
	public ModelAndView saveTeamDetails (HttpServletRequest request, HttpServletResponse response) {
		String teamName = request.getParameter("teamName");
		String teamUserName = request.getParameter("teamUserName");
		String teamPassword = request.getParameter("teamPassword");
		
		if (null != teamName && !("".equalsIgnoreCase(teamName)) &&
				null != teamUserName && !("".equalsIgnoreCase(teamUserName)) &&
				null != teamPassword && !("".equalsIgnoreCase(teamPassword))) {
			ModelAndView mav = new ModelAndView("adminDashboard");
			
			Team team = new Team();
			team.setTeamName(teamName);
			team.setTeamUserName(teamUserName);
			team.setTeamPassword(teamPassword);
			teamService.saveTeamDetails(team);
			
			//Now fetching all the teams to display on the adminTeamConsole
			Team[] allTeams = teamService.getAllTeams();
			mav.addObject("existingTeams", allTeams);
			return mav;
		}
		
		
		return null;
	}
	
	public ModelAndView configureTeams(HttpServletRequest request, HttpServletResponse response) {
		String teamCountStr = request.getParameter("teamCount");
		long teamCount = 0;
		if (teamCountStr != null)
			teamCount = Long.parseLong(teamCountStr);
		
		if (teamCount > 0)
			teamService.configureTeams(teamCount);
		return null;
	}
	
}
