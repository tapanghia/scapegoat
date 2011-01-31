package com.marklabs.teams;

import java.util.List;

public interface ITeamService {
	
	/**
	 * 
	 * @param teamUserName
	 * @param teamPassword
	 * @return true if the team is authenticated,
	 * 		false if the team is not authenticated
	 */
	public boolean isTeamAuthenticated(String teamUserName, String teamPassword);
	
	/**
	 * 
	 * @param teamUserName
	 * @param teamPassword
	 * @return logged in Team Object
	 */
	public Team getTeamDetails(String teamUserName, String teamPassword);
	
	/**
	 * Save a new team
	 * @param team Object, that needs to be saved
	 */
	public void saveTeamDetails(Team team);
	
	/**
	 * Delete an existing Team
	 * @param team Object, that needs to be deleted
	 */
	public void deleteTeam(Team team);
	
	/**
	 * 
	 * @return An array, with all the existing teams.
	 */
	public Team[] getAllTeams();
	
	/**
	 * This function will be responsible for creating the teams, once the admin selects the 
	 * 	number of teams to be configured.
	 * @param teamCount
	 * @return Array of Team objects created.
	 */
	public Team[] configureTeams(long teamCount);
	
	public void updateTeam(Team team);
	
	public Team getTeamOnTeamId(long teamId);
}