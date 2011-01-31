package com.marklabs.researchProject;

import com.marklabs.teams.Team;

public interface IResearchProjectTransitionService {
	
	/**
	 * This function is responsible to facilitate the transition of Research Projects from one period to another.
	 * A replica of all the Research Projects in the current Period will be created for the next period with modifications 
	 * 	done to a few Research Project attributes like Required Budget, minimum required Base Cost due to 
	 * 	market attributes like inflation, recession.
	 * 
	 * This function will also be responsible for replicating brands for the next Period
	 * 
	 * @param selectedTeam
	 */
	public void transitionResearchProjectsForTeam(Team selectedTeam);
}


