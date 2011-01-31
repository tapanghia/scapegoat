package com.marklabs.distributionCoverage;

import com.marklabs.teams.Team;

public interface IDistributionCoverageTransitionService {

	public void transitionDistributionCoverageForTeam (Team selectedTeam,
			String currentPeriod);
	
}
