package com.marklabs.teams;

import java.util.Set;

/**
 * 
 * @author Tapan
 * @date 04/24/2010
 */

@SuppressWarnings("serial")
public class Team implements java.io.Serializable {

	private long id;
	private String teamName;
	private String teamUserName;
	private String teamPassword;
	private int currentTeamPeriod;
	private Set researchProjects;
	private long teamCurrentPeriodBudget;
	
	/**
	 * @return the id
	 */
	public long getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(long id) {
		this.id = id;
	}
	/**
	 * @return the teamName
	 */
	public String getTeamName() {
		return teamName;
	}
	/**
	 * @param teamName the teamName to set
	 */
	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}
	/**
	 * @return the teamUserName
	 */
	public String getTeamUserName() {
		return teamUserName;
	}
	/**
	 * @param teamUserName the teamUserName to set
	 */
	public void setTeamUserName(String teamUserName) {
		this.teamUserName = teamUserName;
	}
	/**
	 * @return the teamPassword
	 */
	public String getTeamPassword() {
		return teamPassword;
	}
	/**
	 * @param teamPassword the teamPassword to set
	 */
	public void setTeamPassword(String teamPassword) {
		this.teamPassword = teamPassword;
	}
	/**
	 * @return the currentTeamPeriod
	 */
	public int getCurrentTeamPeriod() {
		return currentTeamPeriod;
	}
	/**
	 * @param currentTeamPeriod the currentTeamPeriod to set
	 */
	public void setCurrentTeamPeriod(int currentTeamPeriod) {
		this.currentTeamPeriod = currentTeamPeriod;
	}
	/**
	 * @return the researchProjects
	 */
	public Set getResearchProjects() {
		return researchProjects;
	}
	/**
	 * @param researchProjects the researchProjects to set
	 */
	public void setResearchProjects(Set researchProjects) {
		this.researchProjects = researchProjects;
	}
	public long getTeamCurrentPeriodBudget() {
		return teamCurrentPeriodBudget;
	}
	public void setTeamCurrentPeriodBudget(long teamCurrentPeriodBudget) {
		this.teamCurrentPeriodBudget = teamCurrentPeriodBudget;
	}
	
	

}