package com.marklabs.researchProject;

import com.marklabs.teams.Team;

public interface IResearchProjectMetadataService {

	/**
	 * Getting all the Research Projects from the Research Project Metadata.
	 * @return ResearchProject Object Array
	 */
	public ResearchProjectMetadata[] getAllResearchProjMetadata();
	
	/**
	 * Getting all the Research Projects from Research Project Metadata for Team Name passed as parameter.
	 * @return ResearcProject Object Array
	 */
	public ResearchProjectMetadata[] getResearchProjMetadataForTeamName();
	
	public long getMinimumBaseCost(ResearchProjectMetadata researchProjMetadata);
	
	public long getActualBaseCost(ResearchProjectMetadata researchProjMetadata, Team team);
	
	public long getRequiredBudgetAtMinBaseCost(long actualBaseCost);
	
	public long getRequiredBudgetAtReqBaseCost(long requestedBaseCost, long minimumBaseCost, 
			long requiredBudgetAtMinBaseCost);
	
}
