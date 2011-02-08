package com.marklabs.researchProject;

import com.marklabs.teams.Team;

public interface IResearchProjectService {
	
	/**
	 * Function returns all the Research Projects for the teamId passed.
	 * @param teamId
	 * @return Array of ResearchProject objects for the logged in Team
	 */
	public ResearchProject[] getAllResearchProjectsForTeam(long teamId);
	
	/**
	 * Saves the Research Project Object
	 * @param researchProject
	 */
	public void saveResearchProject(ResearchProject researchProject);

	public ResearchProject[] getResearchProjectsForTeamCurrentPeriod(Team team);
	
	/**
	 * This function returns all the projects created by teams in a particular period.
	 * @param team
	 * @param projFinishPeriod
	 * @return
	 */
	public ResearchProject[] getResearchProjForTeamByProjFinishPeriod(long teamId, int projFinishPeriod);
	
	/**
	 * Use this function in the following scenario :
	 * 		Will return transitioned research projects in current period which have been completed before current period
	 * 
	 * @param teamId
	 * @param currentPeriod
	 * @return
	 */
	public ResearchProject[] getCompletedResearchProjectsForTeam(long teamId, int currentPeriod);
	
	/**
	 * This function returns all projects created by a team in the previous period for populating the 
	 * 		Research Project Specifications page, while creating a new Project
	 * @param team
	 * @return
	 */
	public ResearchProject[] getResearchProjForTeamPreviousPeriod(long teamId, int currentPeriod);
	
	/**
	 * Function to fetch Research Project Object by Id
	 * @param researchProjectId
	 * @return
	 */
	public ResearchProject getResearcProjectByID(long researchProjectId);
	
	/**
	 * Function to delete a Research Project
	 * @param toDeleteResearchProject
	 */
	public void deleteResearchProject(ResearchProject toDeleteResearchProject);
	
	/**
	 * Function to update a Research Project
	 * @param toUpdateResearchProject
	 */
	public void updateResearchProject(ResearchProject toUpdateResearchProject);
}