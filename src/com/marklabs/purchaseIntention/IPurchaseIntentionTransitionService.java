package com.marklabs.purchaseIntention;

import com.marklabs.teams.Team;

public interface IPurchaseIntentionTransitionService {

	public void transitionPurchaseIntentionForTeam (Team selectedTeam, String currentPeriod);
}
