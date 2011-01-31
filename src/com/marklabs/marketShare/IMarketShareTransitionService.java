package com.marklabs.marketShare;

import com.marklabs.teams.Team;

public interface IMarketShareTransitionService {

	
	public void transitionMarketShareForTeam (Team selectedTeam, String currentPeriod);
}
